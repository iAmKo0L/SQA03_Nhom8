# TEST CASES - UC-02: ĐĂNG NHẬP

## I. ĐĂNG NHẬP BẰNG EMAIL VÀ MẬT KHẨU

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| DN1 | Xác minh đăng nhập thành công với thông tin hợp lệ | Email: user@example.com<br>Password: Abc12345 | 1. Mở ứng dụng<br>2. Nhập email và mật khẩu hợp lệ<br>3. Nhấn nút "Đăng nhập" | - Đăng nhập thành công<br>- Hiển thị giao diện chính<br>- Tự động đồng bộ dữ liệu | Đỗ Đức Cảnh |
| DN2 | Kiểm tra validate email khi nhập sai định dạng | Email: invalid.email<br>Password: Abc12345 | 1. Mở form đăng nhập<br>2. Nhập email sai định dạng<br>3. Nhấn "Đăng nhập" | Hiển thị lỗi "Email không hợp lệ" | Đỗ Đức Cảnh |
| DN3 | Kiểm tra trường email bắt buộc | Email: ""<br>Password: Abc12345 | 1. Mở form đăng nhập<br>2. Để trống email<br>3. Nhấn "Đăng nhập" | Báo lỗi "Vui lòng nhập email" | Đỗ Đức Cảnh |
| DN4 | Kiểm tra trường mật khẩu bắt buộc | Email: user@example.com<br>Password: "" | 1. Mở form đăng nhập<br>2. Để trống mật khẩu<br>3. Nhấn "Đăng nhập" | Báo lỗi "Vui lòng nhập mật khẩu" | Đỗ Đức Cảnh |
| DN5 | Kiểm tra để trống tất cả các trường | Email: ""<br>Password: "" | 1. Mở form đăng nhập<br>2. Để trống tất cả<br>3. Nhấn "Đăng nhập" | Hiển thị lỗi cho từng trường bắt buộc | Đỗ Đức Cảnh |
| DN6 | Kiểm tra đăng nhập với email không tồn tại | Email: notexist@example.com<br>Password: Abc12345 | 1. Nhập email không có trong hệ thống<br>2. Nhập mật khẩu<br>3. Nhấn "Đăng nhập" | Hiển thị lỗi "Email hoặc mật khẩu không đúng" | Đỗ Đức Cảnh |
| DN7 | Kiểm tra đăng nhập với mật khẩu sai | Email: user@example.com<br>Password: WrongPass123 | 1. Nhập email đúng<br>2. Nhập mật khẩu sai<br>3. Nhấn "Đăng nhập" | Hiển thị lỗi "Email hoặc mật khẩu không đúng" | Đỗ Đức Cảnh |
| DN8 | Kiểm tra đăng nhập với cả email và mật khẩu sai | Email: wrong@example.com<br>Password: WrongPass | 1. Nhập email sai<br>2. Nhập mật khẩu sai<br>3. Nhấn "Đăng nhập" | Hiển thị lỗi "Email hoặc mật khẩu không đúng" | Đỗ Đức Cảnh |
| DN9 | Kiểm tra phân biệt chữ hoa/thường trong mật khẩu | Email: user@example.com<br>Password: abc12345 (đúng: Abc12345) | 1. Nhập email đúng<br>2. Nhập mật khẩu sai case<br>3. Nhấn "Đăng nhập" | Hiển thị lỗi "Email hoặc mật khẩu không đúng" | Đỗ Đức Cảnh |
| DN10 | Kiểm tra email có khoảng trắng đầu/cuối | Email: " user@example.com "<br>Password: Abc12345 | 1. Nhập email có space<br>2. Nhập mật khẩu<br>3. Nhấn "Đăng nhập" | Hệ thống tự động trim và đăng nhập thành công HOẶC báo lỗi email không hợp lệ | Đỗ Đức Cảnh |

## II. ĐĂNG NHẬP BẰNG GOOGLE

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| DN11 | Xác minh đăng nhập Google thành công | Tài khoản Google hợp lệ | 1. Mở ứng dụng<br>2. Chọn nút "Đăng nhập với Google"<br>3. Chọn tài khoản Google<br>4. Cho phép quyền truy cập | - Đăng nhập thành công<br>- Hiển thị giao diện chính<br>- Tự động đồng bộ dữ liệu | Đỗ Đức Cảnh |
| DN12 | Kiểm tra hủy đăng nhập Google | Tài khoản Google | 1. Chọn "Đăng nhập với Google"<br>2. Hiển thị popup Google<br>3. Nhấn nút "Hủy" hoặc đóng popup | Quay lại form đăng nhập, không có thay đổi | Đỗ Đức Cảnh |
| DN13 | Kiểm tra từ chối quyền truy cập Google | Tài khoản Google | 1. Chọn "Đăng nhập với Google"<br>2. Chọn tài khoản<br>3. Từ chối cấp quyền | Hiển thị lỗi "Không thể đăng nhập, vui lòng thử lại" | Đỗ Đức Cảnh |
| DN14 | Kiểm tra đăng nhập Google với tài khoản chưa đăng ký | Tài khoản Google mới | 1. Chọn "Đăng nhập với Google"<br>2. Chọn tài khoản Google chưa đăng ký | Tự động tạo tài khoản mới và đăng nhập thành công HOẶC yêu cầu đăng ký | Đỗ Đức Cảnh |
| DN15 | Kiểm tra đồng bộ dữ liệu sau khi đăng nhập Google | Tài khoản Google có dữ liệu cũ | 1. Đăng nhập bằng Google<br>2. Chờ hệ thống đồng bộ | Dữ liệu người dùng được đồng bộ từ server về | Đỗ Đức Cảnh |

## III. QUÊN MẬT KHẨU - GỬI OTP

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| DN16 | Xác minh gửi OTP thành công | Email: user@example.com | 1. Chọn nút "Quên mật khẩu"<br>2. Nhập email hợp lệ<br>3. Nhấn "Gửi mã OTP" | - OTP được gửi đến email<br>- Hiển thị form nhập OTP<br>- Thông báo "Mã OTP đã được gửi đến email" | Đỗ Đức Cảnh |
| DN17 | Kiểm tra email không tồn tại khi quên mật khẩu | Email: notexist@example.com | 1. Chọn "Quên mật khẩu"<br>2. Nhập email không tồn tại<br>3. Nhấn "Gửi mã OTP" | Hiển thị lỗi "Email không tồn tại trong hệ thống" | Đỗ Đức Cảnh |
| DN18 | Kiểm tra email bắt buộc trong form quên mật khẩu | Email: "" | 1. Chọn "Quên mật khẩu"<br>2. Để trống email<br>3. Nhấn "Gửi mã OTP" | Báo lỗi "Vui lòng nhập email" | Đỗ Đức Cảnh |
| DN19 | Kiểm tra định dạng email trong form quên mật khẩu | Email: invalid.email | 1. Chọn "Quên mật khẩu"<br>2. Nhập email sai định dạng<br>3. Nhấn "Gửi mã OTP" | Hiển thị lỗi "Email không hợp lệ" | Đỗ Đức Cảnh |
| DN20 | Kiểm tra gửi lại OTP | Email: user@example.com | 1. Đã ở form nhập OTP<br>2. Chọn "Gửi lại mã"<br>3. Chờ OTP mới | - OTP mới được gửi<br>- Thông báo "Mã OTP mới đã được gửi"<br>- OTP cũ không còn hiệu lực | Đỗ Đức Cảnh |
| DN21 | Kiểm tra giới hạn số lần gửi OTP | Email: user@example.com | 1. Gửi OTP 5 lần liên tiếp<br>2. Thử gửi lần thứ 6 | Hiển thị lỗi "Bạn đã vượt quá số lần gửi OTP, vui lòng thử lại sau" | Đỗ Đức Cảnh |

## IV. QUÊN MẬT KHẨU - XÁC THỰC OTP

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| DN22 | Xác minh xác thực OTP thành công | OTP: 123456 (mã đúng) | 1. Ở form nhập OTP<br>2. Nhập mã OTP đúng<br>3. Nhấn "Xác nhận" | - Xác thực thành công<br>- Hiển thị form đổi mật khẩu mới | Đỗ Đức Cảnh |
| DN23 | Kiểm tra OTP không đúng | OTP: 999999 (mã sai) | 1. Nhập mã OTP sai<br>2. Nhấn "Xác nhận" | Hiển thị lỗi "Mã OTP không chính xác" | Đỗ Đức Cảnh |
| DN24 | Kiểm tra OTP hết hạn | OTP đã hết hạn (>5 phút) | 1. Chờ OTP hết hạn<br>2. Nhập mã OTP<br>3. Nhấn "Xác nhận" | Hiển thị lỗi "Mã OTP đã hết hạn, vui lòng gửi lại" | Đỗ Đức Cảnh |
| DN25 | Kiểm tra trường OTP bắt buộc | OTP: "" | 1. Để trống OTP<br>2. Nhấn "Xác nhận" | Báo lỗi "Vui lòng nhập mã OTP" | Đỗ Đức Cảnh |
| DN26 | Kiểm tra độ dài OTP | OTP: 123 (3 ký tự) | 1. Nhập OTP ngắn hơn quy định<br>2. Nhấn "Xác nhận" | Hiển thị lỗi "Mã OTP phải có đủ 6 ký tự" | Đỗ Đức Cảnh |
| DN27 | Kiểm tra OTP chỉ chứa số | OTP: abc123 | 1. Nhập OTP có chữ cái<br>2. Nhấn "Xác nhận" | Hiển thị lỗi "Mã OTP chỉ chứa số" | Đỗ Đức Cảnh |
| DN28 | Kiểm tra số lần nhập sai OTP | OTP: sai 5 lần liên tiếp | 1. Nhập sai OTP lần 1-4<br>2. Nhập sai lần thứ 5 | OTP bị vô hiệu hóa, yêu cầu gửi lại OTP mới | Đỗ Đức Cảnh |
| DN29 | Kiểm tra OTP cũ không còn hiệu lực sau khi gửi lại | OTP cũ: 123456<br>OTP mới: 789012 | 1. Gửi OTP lần đầu<br>2. Chọn "Gửi lại mã"<br>3. Nhập OTP cũ<br>4. Nhấn "Xác nhận" | Hiển thị lỗi "Mã OTP không chính xác" | Đỗ Đức Cảnh |

## V. QUÊN MẬT KHẨU - ĐỔI MẬT KHẨU MỚI

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| DN30 | Xác minh đổi mật khẩu thành công | Password mới: NewPass123<br>Confirm: NewPass123 | 1. Nhập mật khẩu mới hợp lệ<br>2. Xác nhận mật khẩu khớp<br>3. Nhấn "Đổi mật khẩu" | - Thông báo "Đổi mật khẩu thành công"<br>- Quay lại form đăng nhập | Đỗ Đức Cảnh |
| DN31 | Kiểm tra mật khẩu mới không khớp với xác nhận | Password mới: NewPass123<br>Confirm: NewPass456 | 1. Nhập mật khẩu mới<br>2. Nhập xác nhận không khớp<br>3. Nhấn "Đổi mật khẩu" | Hiển thị lỗi "Mật khẩu xác nhận không khớp" | Đỗ Đức Cảnh |
| DN32 | Kiểm tra mật khẩu mới quá ngắn | Password mới: 12345 (5 ký tự) | 1. Nhập mật khẩu < 6 ký tự<br>2. Nhấn "Đổi mật khẩu" | Hiển thị lỗi "Mật khẩu tối thiểu 6 ký tự" | Đỗ Đức Cảnh |
| DN33 | Kiểm tra mật khẩu mới không chứa số | Password mới: Abcdefgh | 1. Nhập mật khẩu không có số<br>2. Nhấn "Đổi mật khẩu" | Hiển thị lỗi "Mật khẩu phải chứa ít nhất 1 số" | Đỗ Đức Cảnh |
| DN34 | Kiểm tra mật khẩu mới không chứa chữ | Password mới: 12345678 | 1. Nhập mật khẩu chỉ có số<br>2. Nhấn "Đổi mật khẩu" | Hiển thị lỗi "Mật khẩu phải chứa ít nhất 1 chữ cái" | Đỗ Đức Cảnh |
| DN35 | Kiểm tra trường mật khẩu mới bắt buộc | Password mới: ""<br>Confirm: "" | 1. Để trống cả 2 trường<br>2. Nhấn "Đổi mật khẩu" | Hiển thị lỗi cho các trường bắt buộc | Đỗ Đức Cảnh |
| DN36 | Kiểm tra mật khẩu mới giống mật khẩu cũ | Password mới: Abc12345 (giống cũ) | 1. Nhập mật khẩu mới giống cũ<br>2. Nhấn "Đổi mật khẩu" | Thông báo cảnh báo "Mật khẩu mới không nên giống mật khẩu cũ" HOẶC cho phép đổi | Đỗ Đức Cảnh |
| DN37 | Kiểm tra đăng nhập sau khi đổi mật khẩu thành công | Email: user@example.com<br>Password: NewPass123 (mới) | 1. Đổi mật khẩu thành công<br>2. Ở form đăng nhập<br>3. Nhập email và mật khẩu mới<br>4. Nhấn "Đăng nhập" | Đăng nhập thành công với mật khẩu mới | Đỗ Đức Cảnh |
| DN38 | Kiểm tra mật khẩu cũ không còn hoạt động sau khi đổi | Email: user@example.com<br>Password: Abc12345 (cũ) | 1. Sau khi đổi mật khẩu<br>2. Thử đăng nhập bằng mật khẩu cũ | Hiển thị lỗi "Email hoặc mật khẩu không đúng" | Đỗ Đức Cảnh |

## VI. QUÊN MẬT KHẨU - FLOW HOÀN CHỈNH

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| DN39 | Kiểm tra toàn bộ flow quên mật khẩu | Email: user@example.com<br>OTP: 123456<br>New Pass: NewPass123 | 1. Chọn "Quên mật khẩu"<br>2. Nhập email, gửi OTP<br>3. Nhập OTP đúng<br>4. Đổi mật khẩu mới<br>5. Đăng nhập lại | Toàn bộ flow hoàn tất thành công, đăng nhập được với mật khẩu mới | Đỗ Đức Cảnh |
| DN40 | Kiểm tra hủy giữa chừng trong flow quên mật khẩu | N/A | 1. Chọn "Quên mật khẩu"<br>2. Đang ở bất kỳ bước nào<br>3. Nhấn "Hủy" hoặc "Quay lại" | Quay lại form đăng nhập, không có thay đổi mật khẩu | Đỗ Đức Cảnh |
| DN41 | Kiểm tra timeout trong flow quên mật khẩu | N/A | 1. Bắt đầu flow quên mật khẩu<br>2. Để không hoạt động >15 phút | Session hết hạn, yêu cầu bắt đầu lại từ đầu | Đỗ Đức Cảnh |

## VII. BẢO MẬT VÀ VALIDATION

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| DN42 | Kiểm tra SQL Injection trong email | Email: ' OR '1'='1<br>Password: any | 1. Nhập SQL injection vào email<br>2. Nhấn "Đăng nhập" | Hệ thống reject và báo lỗi "Email không hợp lệ", không bị tấn công | Đỗ Đức Cảnh |
| DN43 | Kiểm tra XSS trong trường email | Email: <script>alert('xss')</script>@test.com | 1. Nhập script vào email<br>2. Nhấn "Đăng nhập" | Hệ thống escape hoặc reject, không thực thi script | Đỗ Đức Cảnh |
| DN44 | Kiểm tra mật khẩu được mã hóa khi truyền | Email: user@example.com<br>Password: Abc12345 | 1. Mở DevTools Network<br>2. Đăng nhập<br>3. Kiểm tra request payload | Mật khẩu được mã hóa/hash hoặc gửi qua HTTPS | Đỗ Đức Cảnh |
| DN45 | Kiểm tra brute force protection | Email: user@example.com<br>Password: sai nhiều lần | 1. Đăng nhập sai 5 lần liên tiếp<br>2. Thử lần thứ 6 | - Tài khoản bị khóa tạm thời<br>- Thông báo "Tài khoản tạm khóa do nhập sai nhiều lần" | Đỗ Đức Cảnh |
| DN46 | Kiểm tra hiển thị mật khẩu | Password: Abc12345 | 1. Nhập mật khẩu<br>2. Nhấn icon "hiện/ẩn mật khẩu" | Mật khẩu hiển thị dạng text/ẩn dạng dots | Đỗ Đức Cảnh |
| DN47 | Kiểm tra không cho phép copy mật khẩu đã nhập | Password: Abc12345 | 1. Nhập mật khẩu<br>2. Thử copy nội dung trường password | Không copy được HOẶC copy được nhưng là chuỗi ẩn | Đỗ Đức Cảnh |

## VIII. TOKEN VÀ SESSION

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| DN48 | Xác minh Access Token và Refresh Token được tạo | Email: user@example.com<br>Password: Abc12345 | 1. Đăng nhập thành công<br>2. Kiểm tra response | Response chứa accessToken và refreshToken | Đỗ Đức Cảnh |
| DN49 | Kiểm tra thời gian hết hạn Access Token | Đăng nhập thành công | 1. Đăng nhập<br>2. Chờ Access Token hết hạn<br>3. Gọi API yêu cầu xác thực | Hệ thống tự động refresh token HOẶC yêu cầu đăng nhập lại | Đỗ Đức Cảnh |
| DN50 | Kiểm tra Refresh Token | Access Token hết hạn | 1. Access Token hết hạn<br>2. Sử dụng Refresh Token để lấy token mới | Hệ thống trả về Access Token mới | Đỗ Đức Cảnh |
| DN51 | Kiểm tra session tồn tại sau khi đăng nhập | N/A | 1. Đăng nhập thành công<br>2. Đóng app<br>3. Mở lại app | Người dùng vẫn đăng nhập, không cần nhập lại thông tin | Đỗ Đức Cảnh |
| DN52 | Kiểm tra đăng xuất xóa session | N/A | 1. Đăng nhập thành công<br>2. Đăng xuất<br>3. Thử truy cập chức năng yêu cầu đăng nhập | Yêu cầu đăng nhập lại | Đỗ Đức Cảnh |
| DN53 | Kiểm tra token không hợp lệ | Token bị xóa/sửa đổi | 1. Đăng nhập<br>2. Xóa/sửa token trong storage<br>3. Gọi API | Hệ thống từ chối và yêu cầu đăng nhập lại | Đỗ Đức Cảnh |

## IX. ĐỒNG BỘ DỮ LIỆU SAU KHI ĐĂNG NHẬP

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| DN54 | Kiểm tra tự động đồng bộ dữ liệu sau đăng nhập | Tài khoản có dữ liệu trên server | 1. Đăng nhập thành công<br>2. Chờ hệ thống đồng bộ | - Dữ liệu người dùng được tải về<br>- Hiển thị thông báo "Đang đồng bộ dữ liệu..." | Đỗ Đức Cảnh |
| DN55 | Kiểm tra đồng bộ thất bại do lỗi mạng | Tài khoản hợp lệ, mạng bị ngắt | 1. Đăng nhập thành công<br>2. Ngắt mạng<br>3. Hệ thống thử đồng bộ | Hiển thị thông báo "Không thể đồng bộ dữ liệu, vui lòng kiểm tra kết nối" | Đỗ Đức Cảnh |
| DN56 | Kiểm tra retry đồng bộ khi thất bại | Tài khoản hợp lệ | 1. Đăng nhập<br>2. Đồng bộ thất bại<br>3. Chọn "Thử lại" | Hệ thống thực hiện đồng bộ lại | Đỗ Đức Cảnh |
| DN57 | Kiểm tra sử dụng app khi đồng bộ chưa hoàn tất | Tài khoản hợp lệ | 1. Đăng nhập<br>2. Trong khi đồng bộ<br>3. Thử truy cập các chức năng | Các chức năng cơ bản vẫn sử dụng được, đồng bộ chạy background | Đỗ Đức Cảnh |

## X. UI/UX VÀ TRẢI NGHIỆM NGƯỜI DÙNG

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| DN58 | Kiểm tra hiển thị loading khi đăng nhập | Email và password hợp lệ | 1. Nhập thông tin<br>2. Nhấn "Đăng nhập"<br>3. Quan sát UI | Hiển thị loading spinner/indicator trong khi xử lý | Đỗ Đức Cảnh |
| DN59 | Kiểm tra disable button khi đang xử lý | Email và password hợp lệ | 1. Nhấn "Đăng nhập"<br>2. Thử nhấn lại trong khi xử lý | Nút bị disable, không gửi request trùng lặp | Đỗ Đức Cảnh |
| DN60 | Kiểm tra Enter để submit form | Email: user@example.com<br>Password: Abc12345 | 1. Nhập thông tin<br>2. Nhấn phím Enter | Form được submit, xử lý đăng nhập | Đỗ Đức Cảnh |
| DN61 | Kiểm tra Tab để di chuyển giữa các trường | N/A | 1. Focus vào trường email<br>2. Nhấn Tab | Con trỏ di chuyển sang trường password | Đỗ Đức Cảnh |
| DN62 | Kiểm tra link "Đăng ký tài khoản mới" | N/A | 1. Ở form đăng nhập<br>2. Nhấn link "Đăng ký" | Chuyển sang form đăng ký | Đỗ Đức Cảnh |
| DN63 | Kiểm tra hiển thị thông báo lỗi rõ ràng | Credentials sai | 1. Đăng nhập sai<br>2. Quan sát thông báo lỗi | Thông báo lỗi rõ ràng, dễ hiểu, không lộ thông tin nhạy cảm | Đỗ Đức Cảnh |
| DN64 | Kiểm tra tự động focus vào trường đầu tiên | N/A | 1. Mở form đăng nhập | Con trỏ tự động focus vào trường email | Đỗ Đức Cảnh |

## XI. RESPONSIVE VÀ CROSS-PLATFORM

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| DN65 | Kiểm tra đăng nhập trên mobile | Email và password hợp lệ | 1. Mở app trên mobile<br>2. Đăng nhập | Giao diện hiển thị tốt, chức năng hoạt động bình thường | Đỗ Đức Cảnh |
| DN66 | Kiểm tra đăng nhập trên tablet | Email và password hợp lệ | 1. Mở app trên tablet<br>2. Đăng nhập | Giao diện responsive, đăng nhập thành công | Đỗ Đức Cảnh |
| DN67 | Kiểm tra đăng nhập trên desktop | Email và password hợp lệ | 1. Mở app trên desktop<br>2. Đăng nhập | Giao diện tối ưu cho màn hình lớn, đăng nhập thành công | Đỗ Đức Cảnh |
| DN68 | Kiểm tra xoay màn hình khi đăng nhập | N/A | 1. Đang nhập thông tin<br>2. Xoay màn hình portrait/landscape | Giao diện adapt tốt, dữ liệu đã nhập không bị mất | Đỗ Đức Cảnh |

## XII. PERFORMANCE VÀ NETWORK

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| DN69 | Kiểm tra đăng nhập với mạng chậm | Email và password hợp lệ | 1. Throttle network về 3G<br>2. Đăng nhập | - Hiển thị loading<br>- Đăng nhập thành công sau khi chờ<br>- Không bị timeout sớm | Đỗ Đức Cảnh |
| DN70 | Kiểm tra đăng nhập khi mất mạng | Email và password hợp lệ | 1. Ngắt kết nối mạng<br>2. Thử đăng nhập | Hiển thị lỗi "Không có kết nối mạng, vui lòng kiểm tra" | Đỗ Đức Cảnh |
| DN71 | Kiểm tra timeout khi server không phản hồi | Email và password hợp lệ | 1. Block request đến server<br>2. Đăng nhập | Sau timeout (~30s), hiển thị lỗi "Không thể kết nối đến server" | Đỗ Đức Cảnh |
| DN72 | Kiểm tra retry khi đăng nhập thất bại do lỗi mạng | Email và password hợp lệ | 1. Đăng nhập, bị lỗi mạng<br>2. Chọn "Thử lại" | Gửi lại request đăng nhập | Đỗ Đức Cảnh |
| DN73 | Kiểm tra thời gian phản hồi đăng nhập | Email và password hợp lệ | 1. Đăng nhập<br>2. Đo thời gian phản hồi | Thời gian phản hồi < 2 giây trong điều kiện mạng tốt | Đỗ Đức Cảnh |

## XIII. EDGE CASES VÀ SPECIAL CHARACTERS

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| DN74 | Kiểm tra email với subdomain | Email: user@mail.example.com | 1. Nhập email có subdomain<br>2. Đăng nhập | Chấp nhận email và xử lý bình thường | Đỗ Đức Cảnh |
| DN75 | Kiểm tra email có ký tự đặc biệt hợp lệ | Email: user+test@example.com | 1. Nhập email có dấu +<br>2. Đăng nhập | Email được chấp nhận và xử lý đúng | Đỗ Đức Cảnh |
| DN76 | Kiểm tra mật khẩu có ký tự đặc biệt | Password: Abc@123#$ | 1. Nhập password có ký tự đặc biệt<br>2. Đăng nhập | Đăng nhập thành công nếu đúng | Đỗ Đức Cảnh |
| DN77 | Kiểm tra mật khẩu có emoji | Password: Abc123😀 | 1. Nhập password có emoji<br>2. Đăng nhập | Xử lý đúng (chấp nhận hoặc báo lỗi theo quy định) | Đỗ Đức Cảnh |
| DN78 | Kiểm tra email cực dài (boundary) | Email: 254 ký tự (max theo RFC) | 1. Nhập email cực dài hợp lệ<br>2. Đăng nhập | Chấp nhận và xử lý đúng | Đỗ Đức Cảnh |
| DN79 | Kiểm tra mật khẩu cực dài | Password: 128 ký tự | 1. Nhập password rất dài<br>2. Đăng nhập | Xử lý đúng hoặc báo lỗi nếu vượt giới hạn | Đỗ Đức Cảnh |
| DN80 | Kiểm tra email với khoảng trắng giữa | Email: user name@example.com | 1. Nhập email có space<br>2. Đăng nhập | Báo lỗi "Email không hợp lệ" | Đỗ Đức Cảnh |

## XIV. TÍCH HỢP VÀ API

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| DN81 | Kiểm tra API endpoint login | Email: user@example.com<br>Password: Abc12345 | 1. Gọi POST /api/auth/login với data hợp lệ | - Status code: 200<br>- Response có accessToken, refreshToken<br>- Response có user info | Đỗ Đức Cảnh |
| DN82 | Kiểm tra API trả về 401 khi sai credentials | Email: user@example.com<br>Password: wrong | 1. Gọi API với credentials sai | - Status code: 401 Unauthorized<br>- Error message phù hợp | Đỗ Đức Cảnh |
| DN83 | Kiểm tra API trả về 400 khi thiếu trường bắt buộc | Email: user@example.com<br>Password: "" | 1. Gọi API thiếu password | - Status code: 400 Bad Request<br>- Error message rõ ràng | Đỗ Đức Cảnh |
| DN84 | Kiểm tra API header Content-Type | Email và password hợp lệ | 1. Gọi API với Content-Type: application/json | API chấp nhận và xử lý đúng | Đỗ Đức Cảnh |
| DN85 | Kiểm tra CORS cho API login | Request từ domain khác | 1. Gọi API từ domain khác (nếu cho phép) | CORS header được set đúng hoặc reject nếu không cho phép | Đỗ Đức Cảnh |

## XV. ĐA THIẾT BỊ VÀ CONCURRENT LOGIN

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| DN86 | Kiểm tra đăng nhập đồng thời trên nhiều thiết bị | Cùng 1 tài khoản | 1. Đăng nhập trên thiết bị A<br>2. Đăng nhập trên thiết bị B cùng tài khoản | Cả 2 thiết bị đều đăng nhập thành công HOẶC thiết bị A bị đăng xuất (tùy policy) | Đỗ Đức Cảnh |
| DN87 | Kiểm tra đăng xuất trên 1 thiết bị ảnh hưởng thiết bị khác | Đăng nhập trên 2 thiết bị | 1. Đăng nhập trên 2 thiết bị<br>2. Đăng xuất trên thiết bị A<br>3. Kiểm tra thiết bị B | Thiết bị B vẫn đăng nhập (session độc lập) HOẶC bị đăng xuất (tùy policy) | Đỗ Đức Cảnh |
| DN88 | Kiểm tra số lượng phiên đăng nhập tối đa | Cùng 1 tài khoản | 1. Đăng nhập trên 5+ thiết bị khác nhau | Giới hạn số session hoặc cho phép unlimited (tùy policy) | Đỗ Đức Cảnh |

## XVI. ACCESSIBILITY VÀ USABILITY

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| DN89 | Kiểm tra screen reader cho form đăng nhập | N/A | 1. Bật screen reader<br>2. Navigate form đăng nhập | Các label, error được đọc rõ ràng | Đỗ Đức Cảnh |
| DN90 | Kiểm tra keyboard navigation | N/A | 1. Chỉ dùng keyboard<br>2. Di chuyển và submit form | Có thể hoàn tất toàn bộ flow chỉ bằng keyboard | Đỗ Đức Cảnh |
| DN91 | Kiểm tra contrast và màu sắc | N/A | 1. Kiểm tra tỷ lệ tương phản màu<br>2. Kiểm tra với người khiếm thị màu | Độ tương phản đạt chuẩn WCAG AA (4.5:1) | Đỗ Đức Cảnh |
| DN92 | Kiểm tra hiển thị placeholder | N/A | 1. Mở form đăng nhập<br>2. Quan sát các trường input | Placeholder text hữu ích, rõ ràng | Đỗ Đức Cảnh |

## XVII. BẢO MẬT NÂNG CAO

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| DN93 | Kiểm tra password không lưu trong browser history | Password: Abc12345 | 1. Đăng nhập<br>2. Kiểm tra browser history/autocomplete | Mật khẩu không được lưu trong history | Đỗ Đức Cảnh |
| DN94 | Kiểm tra token được lưu trữ an toàn | N/A | 1. Đăng nhập thành công<br>2. Kiểm tra nơi lưu token | Token lưu trong httpOnly cookie HOẶC secure storage, không trong localStorage | Đỗ Đức Cảnh |
| DN95 | Kiểm tra CSRF protection | N/A | 1. Thử gửi request login giả mạo từ site khác | Request bị reject do thiếu CSRF token | Đỗ Đức Cảnh |
| DN96 | Kiểm tra rate limiting | Email và password | 1. Gửi 100 request login trong 1 phút | Hệ thống block/throttle request sau ngưỡng nhất định | Đỗ Đức Cảnh |
| DN97 | Kiểm tra session fixation attack | N/A | 1. Tạo session trước khi đăng nhập<br>2. Đăng nhập<br>3. Kiểm tra session ID | Session ID được tạo mới sau khi đăng nhập thành công | Đỗ Đức Cảnh |

## XVIII. COMPATIBILITY

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| DN98 | Kiểm tra đăng nhập trên Chrome | Email và password hợp lệ | 1. Mở app trên Chrome<br>2. Đăng nhập | Đăng nhập thành công | Đỗ Đức Cảnh |
| DN99 | Kiểm tra đăng nhập trên Firefox | Email và password hợp lệ | 1. Mở app trên Firefox<br>2. Đăng nhập | Đăng nhập thành công | Đỗ Đức Cảnh |
| DN100 | Kiểm tra đăng nhập trên Safari | Email và password hợp lệ | 1. Mở app trên Safari<br>2. Đăng nhập | Đăng nhập thành công | Đỗ Đức Cảnh |
| DN101 | Kiểm tra đăng nhập trên Edge | Email và password hợp lệ | 1. Mở app trên Edge<br>2. Đăng nhập | Đăng nhập thành công | Đỗ Đức Cảnh |

## XIX. REMEMBER ME VÀ AUTO-LOGIN

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| DN102 | Kiểm tra chức năng "Ghi nhớ đăng nhập" | Email: user@example.com<br>Password: Abc12345<br>Remember: checked | 1. Check "Ghi nhớ đăng nhập"<br>2. Đăng nhập thành công<br>3. Đóng và mở lại app | Tự động đăng nhập, không cần nhập lại | Đỗ Đức Cảnh |
| DN103 | Kiểm tra không check "Ghi nhớ đăng nhập" | Remember: unchecked | 1. Không check "Ghi nhớ"<br>2. Đăng nhập<br>3. Đóng và mở lại app | Yêu cầu đăng nhập lại | Đỗ Đức Cảnh |
| DN104 | Kiểm tra thời gian "Ghi nhớ" có giới hạn | Remember: checked | 1. Đăng nhập với "Ghi nhớ"<br>2. Chờ 30 ngày<br>3. Mở lại app | Session hết hạn, yêu cầu đăng nhập lại | Đỗ Đức Cảnh |

## XX. LOGGING VÀ AUDIT

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| DN105 | Kiểm tra log đăng nhập thành công | Email và password hợp lệ | 1. Đăng nhập thành công<br>2. Kiểm tra system log | Log ghi nhận: timestamp, user_id, IP, device | Đỗ Đức Cảnh |
| DN106 | Kiểm tra log đăng nhập thất bại | Email và password sai | 1. Đăng nhập sai<br>2. Kiểm tra system log | Log ghi nhận attempt thất bại: timestamp, email, IP, lý do | Đỗ Đức Cảnh |
| DN107 | Kiểm tra không log mật khẩu | Bất kỳ password nào | 1. Đăng nhập<br>2. Kiểm tra tất cả log files | Mật khẩu KHÔNG được ghi trong bất kỳ log nào | Đỗ Đức Cảnh |

---

## TỔNG KẾT

**Tổng số test cases: 107**

### Phân loại theo nhóm:
- **Nhóm I - Đăng nhập cơ bản**: 10 test cases (DN1-DN10)
- **Nhóm II - Đăng nhập Google**: 5 test cases (DN11-DN15)
- **Nhóm III - Quên mật khẩu (Gửi OTP)**: 6 test cases (DN16-DN21)
- **Nhóm IV - Quên mật khẩu (Xác thực OTP)**: 8 test cases (DN22-DN29)
- **Nhóm V - Quên mật khẩu (Đổi mật khẩu)**: 9 test cases (DN30-DN38)
- **Nhóm VI - Flow hoàn chỉnh**: 3 test cases (DN39-DN41)
- **Nhóm VII - Bảo mật và Validation**: 6 test cases (DN42-DN47)
- **Nhóm VIII - Token và Session**: 6 test cases (DN48-DN53)
- **Nhóm IX - Đồng bộ dữ liệu**: 4 test cases (DN54-DN57)
- **Nhóm X - UI/UX**: 7 test cases (DN58-DN64)
- **Nhóm XI - Responsive**: 4 test cases (DN65-DN68)
- **Nhóm XII - Performance**: 5 test cases (DN69-DN73)
- **Nhóm XIII - Edge Cases**: 7 test cases (DN74-DN80)
- **Nhóm XIV - API Integration**: 5 test cases (DN81-DN85)
- **Nhóm XV - Đa thiết bị**: 3 test cases (DN86-DN88)
- **Nhóm XVI - Accessibility**: 4 test cases (DN89-DN92)
- **Nhóm XVII - Bảo mật nâng cao**: 5 test cases (DN93-DN97)
- **Nhóm XVIII - Compatibility**: 4 test cases (DN98-DN101)
- **Nhóm XIX - Remember Me**: 3 test cases (DN102-DN104)
- **Nhóm XX - Logging**: 3 test cases (DN105-DN107)

### Mức độ ưu tiên thực hiện:
1. **Critical (P0)**: DN1, DN3, DN4, DN6, DN7, DN8, DN11, DN22, DN30, DN48, DN81
2. **High (P1)**: DN2, DN5, DN16, DN17, DN23, DN24, DN31-DN38, DN42-DN45, DN54, DN70
3. **Medium (P2)**: DN9, DN10, DN12-DN15, DN18-DN21, DN25-DN29, DN46, DN47, DN49-DN53, DN55-DN64, DN69, DN71-DN73
4. **Low (P3)**: DN65-DN68, DN74-DN80, DN82-DN92, DN93-DN107

### Ghi chú:
- Test cases được thiết kế dựa trên tài liệu UC-02 và FR-02
- Bao gồm cả positive và negative test cases
- Tập trung vào security, validation, và user experience
- Phù hợp với kiến trúc hệ thống: Login.tsx → AuthController → AuthService → UserRepository
