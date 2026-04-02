import requests

# Called from inside Docker containers; `localhost` points to the current container.
# Use docker-compose service name so the request reaches AuthService.
AUTH_SERVICE_URL = "http://drug-service:8081/api/users/profile"

def fetch_user_profile(jwt_token: str):
    headers = {
        "Authorization": jwt_token
    }

    response = requests.get(
        AUTH_SERVICE_URL,
        headers=headers,
        timeout=5
    )

    if response.status_code != 200:
        raise Exception(f"Failed to fetch user profile: {response.status_code}")

    return response.json()
