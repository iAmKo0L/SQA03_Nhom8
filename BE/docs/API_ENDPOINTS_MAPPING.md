# 📡 API Endpoints Mapping - Frontend ↔ Backend

## 🔧 Đã sửa các lỗi không khớp

### ✅ **Lỗi đã sửa:**

| Frontend (Trước) | Frontend (Sau) | Backend | Status |
|-----------------|----------------|---------|---------|
| `"analyze"` | `"/analyze"` | `/api/v1/analyze` | ✅ Fixed |
| `"analysis/save-ai-result"` | `"/analysis/save-ai-result"` | `/api/v1/analysis/save-ai-result` | ✅ Fixed |
| `"orders"` | `"/orders"` | `/api/orders` | ✅ Fixed |

---

## 🗺️ Chi tiết tất cả API Endpoints

### 1. 🔐 Authentication Service (Spring Boot - Port 8081)

**Via Gateway:** `http://localhost:8080/api/**`

| Chức năng | Method | Frontend Call | Backend Route | Status |
|-----------|--------|---------------|---------------|--------|
| Đăng nhập | POST | `/auth/login` | `/api/auth/login` | ✅ |
| Đăng ký (Bước 1) | POST | `/auth/register/start` | `/api/auth/register/start` | ✅ |
| Xác thực OTP đăng ký | POST | `/auth/register/verify` | `/api/auth/register/verify` | ✅ |
| Gửi lại OTP | POST | `/auth/otp/resend` | `/api/auth/otp/resend` | ✅ |
| Refresh token | POST | `/api/auth/refresh` | `/api/auth/refresh` | ✅ |
| Quên mật khẩu | POST | - | `/api/auth/forgot-password` | ⚠️ Chưa dùng |
| Reset mật khẩu | POST | - | `/api/auth/reset-password` | ⚠️ Chưa dùng |
| Đăng nhập Google | GET | - | `/api/auth/login/google` | ⚠️ Chưa dùng |
| Lấy thông tin user | GET | - | `/api/auth/me` | ⚠️ Chưa dùng |

---

### 2. 💊 Drugs/Pharmacy Service (Spring Boot - Port 8081)

**Via Gateway:** `http://localhost:8080/api/**`

| Chức năng | Method | Frontend Call | Backend Route | Status |
|-----------|--------|---------------|---------------|--------|
| Danh sách thuốc | GET | `/drugs` | `/api/drugs` | ✅ |
| Chi tiết thuốc | GET | `/drugs/{id}` | `/api/drugs/{id}` | ✅ |
| Gợi ý thuốc | GET | - | `/api/drugs/suggest` | ⚠️ Chưa dùng |
| Tất cả thuốc | GET | - | `/api/drugs/all` | ⚠️ Chưa dùng |
| Thêm thuốc | POST | - | `/api/drugs` | ⚠️ Admin only |
| Cập nhật thuốc | PUT | - | `/api/drugs/{id}` | ⚠️ Admin only |
| Xóa thuốc | DELETE | - | `/api/drugs/{id}` | ⚠️ Admin only |

---

### 3. 📦 Orders Service (Spring Boot - Port 8081)

**Via Gateway:** `http://localhost:8080/api/**`

| Chức năng | Method | Frontend Call | Backend Route | Status |
|-----------|--------|---------------|---------------|--------|
| Tạo đơn hàng | POST | `/orders` | `/api/orders` | ✅ Fixed |
| Danh sách đơn hàng | GET | `/orders` | `/api/orders` | ✅ |
| Chi tiết đơn hàng | GET | `/orders/{id}` | `/api/orders/{id}` | ✅ |
| Hủy đơn hàng | PUT | `/orders/{orderId}/cancel` | `/api/orders/{orderId}/cancel` | ✅ |
| Xác nhận COD | POST | `/orders/{orderId}/confirm-cod` | `/api/orders/{orderId}/confirm-cod` | ✅ |

---

### 4. 💳 Payments Service (Spring Boot - Port 8081)

**Via Gateway:** `http://localhost:8080/api/**`

| Chức năng | Method | Frontend Call | Backend Route | Status |
|-----------|--------|---------------|---------------|--------|
| Tạo QR VNPay | POST | `/payments/vnpay/{orderId}` | `/api/payments/vnpay/{orderId}` | ✅ |
| VNPay return URL | GET | - | `/api/payments/vnpay/return` | ⚠️ Web only |

---

### 5. 💊 Prescriptions Service (Spring Boot - Port 8081)

**Via Gateway:** `http://localhost:8080/api/**`

| Chức năng | Method | Frontend Call | Backend Route | Status |
|-----------|--------|---------------|---------------|--------|
| Lịch nhắc uống thuốc | GET | `/prescriptions/schedules` | `/api/prescriptions/schedules` | ✅ |
| Lịch sử uống thuốc | GET | `/prescriptions/schedules/history` | `/api/prescriptions/schedules/history` | ✅ |
| Chi tiết đơn thuốc | GET | `/prescriptions/single-drug/{id}` | `/api/prescriptions/single-drug/{id}` | ✅ |
| Cập nhật trạng thái | PUT | `/prescriptions/schedules/status` | `/api/prescriptions/schedules/status` | ✅ |
| Xóa thuốc | DELETE | `/prescriptions/drugs/{id}` | `/api/prescriptions/drugs/{id}` | ✅ |
| Cập nhật thuốc | PUT | `/prescriptions/drugs/{id}` | `/api/prescriptions/drugs/{id}` | ✅ |
| Thêm đơn thuốc | POST | - | `/api/prescriptions` | ⚠️ Chưa dùng |
| Thêm thuốc đơn lẻ | POST | - | `/api/prescriptions/single-drug` | ⚠️ Chưa dùng |

---

### 6. 🔬 Skin Analyzer Service (Flask - Port 5001)

**Via Gateway:** `http://localhost:8080/api/v1/**`

**axiosInstanceAI baseURL:** `${FACE}/api/v1/` = `http://10.0.2.2:8080/api/v1/`

| Chức năng | Method | Frontend Call | Full URL | Backend Route | Status |
|-----------|--------|---------------|----------|---------------|--------|
| Phân tích da | POST | `/analyze` | `/api/v1/analyze` | `/api/v1/analyze` | ✅ Fixed |
| Lưu kết quả AI | POST | `/analysis/save-ai-result` | `/api/v1/analysis/save-ai-result` | `/api/v1/analysis/save-ai-result` | ✅ Fixed |
| Lịch sử phân tích | GET | `/analysis/history` | `/api/v1/analysis/history` | `/api/v1/analysis/history` | ✅ |
| Health check | GET | - | `/api/v1/health` | `/api/v1/health` | ⚠️ Internal |
| Dự đoán | POST | - | `/api/v1/analysis/predict` | `/api/v1/analysis/predict` | ⚠️ Chưa dùng |

---

### 7. 🍔 Food Detection Service (Flask - Port 5002)

**Via Gateway:** `http://localhost:8080/api/v2/**`

**axiosInstanceCalori baseURL:** `${FOOD}/api/v2` = `http://10.0.2.2:8080/api/v2`

| Chức năng | Method | Frontend Call | Full URL | Backend Route | Status |
|-----------|--------|---------------|----------|---------------|--------|
| Nhận diện món ăn | POST | `/detect` | `/api/v2/detect` | `/api/v2/detect` | ✅ |
| Thêm món ăn | POST | `/calories/food-records` | `/api/v2/calories/food-records` | `/api/v2/calories/food-records` | ✅ |
| Danh sách món ăn | GET | `/calories/food-records` | `/api/v2/calories/food-records` | `/api/v2/calories/food-records` | ✅ |
| Xóa món ăn | DELETE | `/calories/food-records/{id}` | `/api/v2/calories/food-records/{id}` | `/api/v2/calories/food-records/{id}` | ✅ |
| Cập nhật món ăn | PUT | - | `/api/v2/calories/food-records/{id}` | `/api/v2/calories/food-records/{id}` | ⚠️ Chưa dùng |

---

### 8. 👤 User Profile Service (Flask - Port 5002)

**Via Gateway:** `http://localhost:8080/api/v2/**`

**axiosInstanceCalori baseURL:** `${FOOD}/api/v2` = `http://10.0.2.2:8080/api/v2`

| Chức năng | Method | Frontend Call | Full URL | Backend Route | Status |
|-----------|--------|---------------|----------|---------------|--------|
| Lấy hồ sơ | GET | `/user-profile` | `/api/v2/user-profile` | `/api/v2/user-profile` | ✅ |
| Cập nhật hồ sơ | PUT | `/user-profile` | `/api/v2/user-profile` | `/api/v2/user-profile` | ✅ |
| Lịch sử cân nặng | GET | `/user-profile/weight-history` | `/api/v2/user-profile/weight-history` | `/api/v2/user-profile/weight-history` | ✅ |
| Tạo hồ sơ | POST | - | `/api/v2/user-profile` | `/api/v2/user-profile` | ⚠️ Chưa dùng |

---

### 9. 📊 Daily Logs Service (Flask - Port 5002)

**Via Gateway:** `http://localhost:8080/api/v2/**`

**axiosInstanceCalori baseURL:** `${FOOD}/api/v2` = `http://10.0.2.2:8080/api/v2`

| Chức năng | Method | Frontend Call | Full URL | Backend Route | Status |
|-----------|--------|---------------|----------|---------------|--------|
| Nhật ký hàng ngày | GET | `/daily-logs` | `/api/v2/daily-logs` | `/api/v2/daily-logs` | ✅ |
| Thêm số bước chân | POST | `/daily-logs/steps` | `/api/v2/daily-logs/steps` | `/api/v2/daily-logs/steps` | ✅ |
| Tạo nhật ký | POST | - | `/api/v2/daily-logs/generate` | `/api/v2/daily-logs/generate` | ⚠️ Internal job |

---

### 10. 🤖 AI Chatbot Service (Flask - Port 5003)

**Via Gateway:** `http://localhost:8080/api/v3/**`

**axiosInstanceAgent baseURL:** `${AGENT}/api/v3` = `http://10.0.2.2:8080/api/v3`

| Chức năng | Method | Frontend Call | Full URL | Backend Route | Status |
|-----------|--------|---------------|----------|---------------|--------|
| Chat với AI | POST | `/agent/chat` | `/api/v3/agent/chat` | `/api/v3/agent/chat` | ✅ |
| Lấy kế hoạch workout | GET | `/agent/workout-plan` | `/api/v3/agent/workout-plan` | `/api/v3/agent/workout-plan` | ✅ |
| Tạo kế hoạch workout | POST | `/agent/workout-plan` | `/api/v3/agent/workout-plan` | `/api/v3/agent/workout-plan` | ✅ |
| Lấy kế hoạch ăn | GET | `/agent/meal-plan` | `/api/v3/agent/meal-plan` | `/api/v3/agent/meal-plan` | ✅ |
| Tạo kế hoạch ăn | POST | `/agent/meal-plan` | `/api/v3/agent/meal-plan` | `/api/v3/agent/meal-plan` | ✅ |

---

## 📋 Tóm tắt

### ✅ **Đã sửa (3 lỗi):**
1. `/analyze` → Sửa từ `"analyze"` sang `"/analyze"`
2. `/analysis/save-ai-result` → Sửa từ `"analysis/save-ai-result"` sang `"/analysis/save-ai-result"`
3. `/orders` → Sửa từ `"orders"` sang `"/orders"`

### ✅ **Hoạt động tốt:**
- Tất cả các API khác đã khớp đúng giữa frontend và backend
- Routes được định nghĩa rõ ràng qua API Gateway
- CORS đã được cấu hình cho tất cả services

### ⚠️ **Lưu ý:**
- Một số endpoints backend chưa được frontend sử dụng (đánh dấu "Chưa dùng")
- Một số endpoints dành cho admin hoặc internal jobs
- Forgot password, Reset password chưa được implement ở frontend

---

## 🧪 Kiểm tra API

### Test từ Frontend:

```typescript
// 1. Test Auth
await axiosInstance.post("/auth/login", { email, password });

// 2. Test Skin Analysis
await axiosInstanceAI.post("/analyze", formData);

// 3. Test Food Detection
await axiosInstanceCalori.post("/detect", formData);

// 4. Test Orders
await axiosInstance.post("/orders", orderData);

// 5. Test Chatbot
await axiosInstanceAgent.post("/agent/chat", { message });
```

### Test từ Postman/curl:

```bash
# Auth Service (qua Gateway)
curl -X POST http://localhost:8080/api/auth/login \
  -H "Content-Type: application/json" \
  -d '{"email":"test@test.com","password":"123456"}'

# Skin Service (qua Gateway)
curl -X POST http://localhost:8080/api/v1/analyze \
  -H "Authorization: Bearer YOUR_TOKEN" \
  -F "image=@face.jpg"

# Food Service (qua Gateway)
curl -X POST http://localhost:8080/api/v2/detect \
  -H "Authorization: Bearer YOUR_TOKEN" \
  -F "image=@food.jpg"

# Chatbot Service (qua Gateway)
curl -X POST http://localhost:8080/api/v3/agent/chat \
  -H "Authorization: Bearer YOUR_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{"message":"Tạo kế hoạch tập luyện cho tôi"}'
```

---

## 🎯 Kết luận

Hệ thống API đã được kiểm tra và sửa đầy đủ:

- ✅ **3 lỗi không khớp đã được sửa**
- ✅ **Tất cả routes đã được map đúng qua Gateway**
- ✅ **CORS đã được cấu hình**
- ✅ **Documentation đầy đủ cho dev team**

**Giờ frontend và backend đã khớp hoàn toàn!** 🎉
