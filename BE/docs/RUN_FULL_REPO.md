# Huong dan chay full repo `srcCode`

Tai lieu nay huong dan chay toan bo he thong:
- Backend microservices trong `BE/` (Gateway + AuthService + 3 Python services + MySQL)
- Frontend Expo trong `FE/`

## 1) Yeu cau cai dat

- Docker Desktop (da bat Docker Engine)
- Git
- Node.js LTS (khuyen nghi 20+), npm
- Neu chay thu cong khong dung Docker:
  - Java 21
  - Maven 3.9+
  - Python 3.11

## 2) Cau truc va port he thong

- Gateway: `http://localhost:8080`
- Auth/Drug service (noi bo): `http://localhost:8081`
- Skin service: `http://localhost:5001`
- Food service: `http://localhost:5002`
- Chatbot service: `http://localhost:5003`
- MySQL: `localhost:3306`

Gateway routing:
- `/api/v1/**` -> Skin service
- `/api/v2/**` -> Food service
- `/api/v3/**` -> Chatbot service
- `/api/**` -> Auth/Drug service

## 3) Cach 1 (khuyen nghi): Chay BE bang Docker Compose

Tu root repo:

```powershell
cd D:\School\ki2_nam4\DBCLPM\srcCode\BE
docker compose up --build -d
```

Kiem tra container:

```powershell
docker compose ps
```

Xem log:

```powershell
docker compose logs -f
```

Tat he thong:

```powershell
docker compose down
```

Luu y:
- Lan dau build se lau do can build Java + cai Python dependencies + load AI models.
- `docker-compose.yml` da khai bao `env_file` cho 3 Python services, nen can giu file `.env` trong:
  - `BE/Skin_Analyzer_Microservices/.env`
  - `BE/Food_Detection_Microservices/.env`
  - `BE/Fitness_Coach_AI/.env`

## 4) Chay Frontend (FE)

Tu root repo:

```powershell
cd D:\School\ki2_nam4\DBCLPM\srcCode\FE
npm install
npm run start
```

Trong Expo terminal:
- Nhan `a` de mo Android emulator
- Nhan `w` de chay web

## 5) Cau hinh API cho FE (`FE/app.json`)

FE dang doc endpoint qua `expo.extra` trong `app.json`.

### Android Emulator
Dung:
- `http://10.0.2.2:8080`

### iOS Simulator / Web
Dung:
- `http://localhost:8080`

### Thiet bi that (phone)
Dung IPv4 cua may tinh, vi du:
- `http://192.168.1.100:?8080`

Sau khi sua `app.json`, restart Expo (`npm run start`) de nhan config moi.

## 6) Health checks nhanh

Kiem tra gateway:

```powershell
curl http://localhost:8080/api/v1/health
```

Kiem tra skin service truc tiep:

```powershell
curl http://localhost:5001/health
```

Neu gateway route dung, endpoint `/api/v1/health` qua `8080` se tra ve ket qua health.

## 7) Cach 2 (nang cao): Chay tung service khong Docker

Chi nen dung khi ban muon debug sau.

### 7.1 MySQL
- Khoi dong MySQL local va tao DB theo nhu cau cua service.

### 7.2 AuthService (Java)

```powershell
cd D:\School\ki2_nam4\DBCLPM\srcCode\BE\AuthService
mvn spring-boot:run
```

### 7.3 Gateway (Java)

```powershell
cd D:\School\ki2_nam4\DBCLPM\srcCode\BE\gateway
mvn spring-boot:run
```

### 7.4 Skin/Food/Chatbot (Python)

Moi service:

```powershell
python -m venv .venv
.venv\Scripts\activate
pip install -r requirements.txt
python run.py
```

Thu muc:
- `BE\Skin_Analyzer_Microservices`
- `BE\Food_Detection_Microservices`
- `BE\Fitness_Coach_AI`

Luu y quan trong khi chay local:
- Trong `BE/gateway/src/main/resources/application.properties`, route hien tai dang tro den ten container (`skin-service`, `food-service`, ...). Neu chay local khong Docker, can doi tam sang `localhost:<port>` tuong ung.
- Nguoc lai, neu quay ve Docker, doi lai route ten service de giao tiep noi bo container.

## 8) Loi thuong gap va cach xu ly

- Port bi trung:
  - `netstat -ano | findstr :8080`
  - doi port app dang chiem hoac stop tien trinh do

- Service chua len du:
  - `docker compose logs -f <service-name>`
  - cho them 1-3 phut o lan dau

- FE goi API loi ket noi:
  - kiem tra lai IP/host trong `FE/app.json`
  - Android emulator phai dung `10.0.2.2`, khong dung `localhost`

## 9) Luu y bao mat

Repo hien dang co mot so secret/API key/password trong file cau hinh (`.env`, `application.properties`). Khuyen nghi:
- Khong push secret that len remote
- Rotate lai cac key/password neu repo da chia se cong khai
- Dua secret vao env rieng theo moi truong (dev/staging/prod)
