# 🔧 Hướng dẫn sửa lỗi kết nối Frontend - Backend

## 📋 Tóm tắt các vấn đề đã phát hiện và sửa

### 1. ❌ Gateway routes sử dụng `localhost` thay vì tên container Docker
**File:** `TueTinhBackend/gateway/src/main/resources/application.properties`

**Đã sửa:**
```properties
# Trước:
spring.cloud.gateway.routes[0].uri=http://localhost:5001

# Sau:
spring.cloud.gateway.routes[0].uri=http://skin-service:5001
spring.cloud.gateway.routes[1].uri=http://food-service:5002
spring.cloud.gateway.routes[2].uri=http://chatbot-service:5003
spring.cloud.gateway.routes[3].uri=http://drug-service:8081
```

### 2. ❌ Biến môi trường không khớp giữa docker-compose và Python services
**File:** `TueTinhBackend/docker-compose.yml`

**Đã sửa:**
- Skin Service & Food Service: Đổi từ `FLASK_PORT` sang `MICRO_PORT` (để khớp với `run.py`)
- Thêm `MICRO_HOST: 0.0.0.0` để service lắng nghe tất cả network interfaces

### 3. ❌ Thiếu cấu hình CORS cho Flask services
**Files đã sửa:**
- `TueTinhBackend/Skin_Analyzer_Microservices/app/__init__.py`
- `TueTinhBackend/Food_Detection_Microservices/app/__init__.py`
- `TueTinhBackend/Skin_Analyzer_Microservices/requirements.txt`
- `TueTinhBackend/Food_Detection_Microservices/requirements.txt`

**Đã thêm:**
```python
from flask_cors import CORS

# Enable CORS for all routes
CORS(app, resources={r"/api/*": {"origins": "*"}})
```

## 🏗️ Kiến trúc hệ thống

```
┌─────────────────────────────────────────┐
│   Frontend (React Native/Expo)         │
│   http://10.0.2.2:8080 (Android)       │
└─────────────┬───────────────────────────┘
              │
              ▼
┌─────────────────────────────────────────┐
│   API Gateway (Spring Cloud Gateway)    │
│   Port: 8080                            │
└─────────────┬───────────────────────────┘
              │
      ┌───────┴───────┬─────────┬─────────┐
      ▼               ▼         ▼         ▼
┌──────────┐  ┌──────────┐  ┌──────────┐  ┌──────────┐
│  Skin    │  │  Food    │  │ Chatbot  │  │ Auth/    │
│ Service  │  │ Service  │  │ Service  │  │ Drug     │
│ Flask    │  │ Flask    │  │ Flask    │  │ Spring   │
│ :5001    │  │ :5002    │  │ :5003    │  │ :8081    │
└──────────┘  └──────────┘  └──────────┘  └──────────┘
     │             │             │             │
     └─────────────┴─────────────┴─────────────┘
                    ▼
              ┌──────────┐
              │  MySQL   │
              │  :3306   │
              └──────────┘
```

## 🚀 Hướng dẫn chạy hệ thống

### Bước 1: Chạy Backend với Docker Compose

```bash
cd d:\School\ki2_nam4\DBCLPM\srcCode\TueTinhBackend
docker-compose up --build -d
```

**Lưu ý:** Lần đầu tiên sẽ mất thời gian để build images.

### Bước 2: Kiểm tra các services đã chạy chưa

```bash
docker-compose ps
```

Bạn sẽ thấy 5 containers:
- `api-gateway` (port 8080)
- `skin-service` (port 5001)
- `food-service` (port 5002)
- `chatbot-service` (port 5003)
- `drug-service` (port 8081)
- `mysql-db` (port 3306)

### Bước 3: Kiểm tra logs nếu có lỗi

```bash
# Xem tất cả logs
docker-compose logs -f

# Hoặc xem log của từng service
docker-compose logs -f gateway
docker-compose logs -f skin-service
docker-compose logs -f food-service
```

### Bước 4: Test API Gateway

Mở trình duyệt hoặc dùng curl:

```bash
# Test Gateway health
curl http://localhost:8080/api/v1/health

# Test Skin Service qua Gateway
curl http://localhost:8080/api/v1/health
```

**Response mong đợi:**
```json
{
  "status": "ok"
}
```

### Bước 5: Chạy Frontend

```bash
cd d:\School\ki2_nam4\DBCLPM\srcCode\DATN-Tue-Tinh-fitness
npm install
npm start
```

### Bước 6: Chạy trên thiết bị

#### Nếu dùng Android Emulator:
- Cấu hình hiện tại (`10.0.2.2:8080`) đã đúng ✅
- Nhấn `a` trong Expo CLI để chạy Android

#### Nếu dùng iOS Simulator:
Sửa file `app.json`:
```json
"extra": {
  "AUTH": "http://localhost:8080",
  "FACE": "http://localhost:8080",
  "FOOD": "http://localhost:8080",
  "AGENT": "http://localhost:8080",
  "API_GETWAY": "http://localhost:8080"
}
```

#### Nếu dùng thiết bị thật:
1. Tìm IP máy tính:
   ```bash
   ipconfig
   # Tìm IPv4 Address (VD: 192.168.1.100)
   ```

2. Sửa file `app.json`:
   ```json
   "extra": {
     "AUTH": "http://192.168.1.100:8080",
     "FACE": "http://192.168.1.100:8080",
     "FOOD": "http://192.168.1.100:8080",
     "AGENT": "http://192.168.1.100:8080",
     "API_GETWAY": "http://192.168.1.100:8080"
   }
   ```

3. Đảm bảo điện thoại và máy tính cùng mạng WiFi

## 🧪 Kiểm tra kết nối

### Test từ Frontend

Trong app, thử gọi API. Check logs trong Expo:

```
🚀 ~ request: {
  "method": "POST",
  "url": "http://10.0.2.2:8080/api/v1/analyze",
  ...
}

✅ ~ response: {
  "status": "success",
  ...
}
```

### Nếu vẫn lỗi

1. **Kiểm tra Gateway có chạy không:**
   ```bash
   curl http://localhost:8080/api/v1/health
   ```

2. **Kiểm tra Skin Service trực tiếp:**
   ```bash
   curl http://localhost:5001/api/v1/health
   ```

3. **Xem logs của Gateway:**
   ```bash
   docker-compose logs -f gateway
   ```

4. **Restart các services:**
   ```bash
   docker-compose restart
   ```

5. **Rebuild nếu cần:**
   ```bash
   docker-compose down
   docker-compose up --build
   ```

## 📊 API Endpoints

| Service | Route | Actual URL | Via Gateway |
|---------|-------|------------|-------------|
| Skin Analyzer | `/api/v1/analyze` | `http://localhost:5001/api/v1/analyze` | `http://localhost:8080/api/v1/analyze` |
| Skin Analyzer | `/api/v1/health` | `http://localhost:5001/api/v1/health` | `http://localhost:8080/api/v1/health` |
| Food Detection | `/api/v2/**` | `http://localhost:5002/api/v2/**` | `http://localhost:8080/api/v2/**` |
| Chatbot | `/api/v3/**` | `http://localhost:5003/api/v3/**` | `http://localhost:8080/api/v3/**` |
| Auth/Drug | `/api/**` | `http://localhost:8081/api/**` | `http://localhost:8080/api/**` |

## 🔍 Troubleshooting

### Lỗi: "Cannot connect to backend"

**Nguyên nhân:**
- Gateway chưa chạy
- Sai IP/port trong frontend config
- Firewall block port 8080

**Giải pháp:**
1. Kiểm tra Gateway: `docker-compose ps`
2. Test Gateway: `curl http://localhost:8080/api/v1/health`
3. Tắt firewall tạm thời để test

### Lỗi: "CORS error"

**Nguyên nhân:**
- CORS chưa được cấu hình đúng

**Giải pháp:**
- Đã thêm CORS vào tất cả Flask services ✅
- Restart services: `docker-compose restart`

### Lỗi: "Connection refused"

**Nguyên nhân:**
- Service chưa khởi động xong
- Port đã bị sử dụng

**Giải pháp:**
1. Đợi vài giây cho services khởi động
2. Kiểm tra port conflicts:
   ```bash
   netstat -ano | findstr "8080"
   ```

### Lỗi: "504 Gateway Timeout"

**Nguyên nhân:**
- Backend service không phản hồi
- Model AI chưa load xong

**Giải pháp:**
1. Xem logs: `docker-compose logs -f skin-service`
2. Tăng timeout trong Gateway config

## 📝 Ghi chú

- **Docker Desktop** phải đang chạy
- Lần đầu build sẽ mất 5-10 phút
- Model AI cần ~2-3 phút để load (xem logs)
- Database cần ~30 giây để healthy check

## ✅ Checklist hoàn thành

- [x] Sửa Gateway routes (localhost → container names)
- [x] Sửa biến môi trường trong docker-compose.yml
- [x] Thêm CORS cho Skin Service
- [x] Thêm CORS cho Food Service
- [x] Thêm flask-cors vào requirements.txt
- [x] Frontend config đúng port (8080) và IP

## 🎯 Kết luận

Hệ thống giờ đã sẵn sàng! Chỉ cần:

1. **Chạy backend:** `docker-compose up --build -d`
2. **Chạy frontend:** `npm start` → nhấn `a` (Android)
3. **Enjoy!** 🎉

Nếu có vấn đề, hãy check logs và so sánh với guide này!
