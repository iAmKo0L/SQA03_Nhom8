# TEST CASES - UC-09: QUẢN LÝ LỊCH TẬP

## I. TRUY CẬP CHỨC NĂNG QUẢN LÝ LỊCH TẬP

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| LT1 | Xác minh truy cập chức năng quản lý lịch tập thành công | Người dùng đã đăng nhập | 1. Đăng nhập vào hệ thống<br>2. Chọn giao diện theo dõi sức khỏe<br>3. Chọn "Quản lý lịch tập" | Hiển thị giao diện quản lý lịch tập | Đỗ Đức Cảnh |
| LT2 | Kiểm tra truy cập khi chưa đăng nhập | Người dùng chưa đăng nhập | 1. Không đăng nhập<br>2. Thử truy cập chức năng | Chuyển hướng đến trang đăng nhập | Đỗ Đức Cảnh |
| LT3 | Kiểm tra hiển thị khi chưa có lịch tập (empty state) | Người dùng mới, chưa có lịch | 1. Vào "Quản lý lịch tập"<br>2. Quan sát giao diện | - Hiển thị thông báo "Bạn chưa có lịch tập"<br>- Hiển thị nút "Tạo lịch tập"<br>- KHÔNG hiển thị nút "Xóa lịch tập" | Đỗ Đức Cảnh |
| LT4 | Kiểm tra hiển thị khi đã có lịch tập | Đã có lịch tập | 1. Vào "Quản lý lịch tập" | - Hiển thị lịch tập hiện tại<br>- Hiển thị nút "Xóa lịch tập"<br>- KHÔNG hiển thị nút "Tạo lịch tập" | Đỗ Đức Cảnh |
| LT5 | Kiểm tra load dữ liệu lịch tập từ API | Đã có lịch tập | 1. Mở chức năng<br>2. Kiểm tra network request | Gọi GET /api/v3/workout-plan và hiển thị dữ liệu | Đỗ Đức Cảnh |

## II. TẠO LỊCH TẬP - CHỌN SỐ NGÀY TẬP/TUẦN

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| LT6 | Xác minh mở form tạo lịch tập | Chưa có lịch | 1. Nhấn nút "Tạo lịch tập" | Hiển thị form với các trường:<br>- Số ngày tập/tuần<br>- Cường độ tập luyện<br>- Nhóm cơ muốn phát triển<br>- Nút "Tạo lịch tập" | Đỗ Đức Cảnh |
| LT7 | Kiểm tra chọn số ngày tập 3 ngày/tuần | Số ngày: 3 | 1. Chọn "3 ngày/tuần"<br>2. Quan sát | Tùy chọn được highlight | Đỗ Đức Cảnh |
| LT8 | Kiểm tra chọn số ngày tập 5 ngày/tuần | Số ngày: 5 | 1. Chọn "5 ngày/tuần" | Tùy chọn được chọn | Đỗ Đức Cảnh |
| LT9 | Kiểm tra trường số ngày tập bắt buộc | Số ngày: "" | 1. Không chọn số ngày<br>2. Nhấn "Tạo lịch tập" | Hiển thị lỗi "Vui lòng chọn số ngày tập" | Đỗ Đức Cảnh |
| LT10 | Kiểm tra các tùy chọn số ngày tập có sẵn | N/A | 1. Xem dropdown số ngày | Hiển thị các tùy chọn hợp lý: 2, 3, 4, 5, 6, 7 ngày/tuần | Đỗ Đức Cảnh |

## III. TẠO LỊCH TẬP - CHỌN CƯỜNG ĐỘ TẬP LUYỆN

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| LT11 | Kiểm tra chọn cường độ "Nhẹ" | Cường độ: Nhẹ | 1. Chọn cường độ "Nhẹ"<br>2. Quan sát | Tùy chọn được chọn | Đỗ Đức Cảnh |
| LT12 | Kiểm tra chọn cường độ "Trung bình" | Cường độ: Trung bình | 1. Chọn "Trung bình" | Tùy chọn được chọn | Đỗ Đức Cảnh |
| LT13 | Kiểm tra chọn cường độ "Nặng" | Cường độ: Nặng | 1. Chọn "Nặng" | Tùy chọn được chọn | Đỗ Đức Cảnh |
| LT14 | Kiểm tra trường cường độ bắt buộc | Cường độ: "" | 1. Không chọn cường độ<br>2. Nhấn "Tạo" | Hiển thị lỗi "Vui lòng chọn cường độ tập luyện" | Đỗ Đức Cảnh |

## IV. TẠO LỊCH TẬP - CHỌN NHÓM CƠ MUỐN PHÁT TRIỂN

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| LT15 | Kiểm tra chọn 1 nhóm cơ | Nhóm cơ: Ngực | 1. Chọn "Ngực"<br>2. Quan sát | Nhóm cơ "Ngực" được highlight | Đỗ Đức Cảnh |
| LT16 | Kiểm tra chọn nhiều nhóm cơ | Nhóm cơ: Ngực, Lưng, Vai | 1. Chọn nhiều nhóm cơ<br>2. Quan sát | Tất cả các nhóm đã chọn được highlight | Đỗ Đức Cảnh |
| LT17 | Kiểm tra danh sách nhóm cơ có sẵn | N/A | 1. Xem danh sách nhóm cơ | Hiển thị các nhóm cơ: Ngực, Lưng, Vai, Tay, Chân, Bụng, Toàn thân | Đỗ Đức Cảnh |
| LT18 | Kiểm tra trường nhóm cơ bắt buộc | Nhóm cơ: "" | 1. Không chọn nhóm cơ<br>2. Nhấn "Tạo" | Hiển thị lỗi "Vui lòng chọn ít nhất 1 nhóm cơ" | Đỗ Đức Cảnh |
| LT19 | Kiểm tra bỏ chọn nhóm cơ | Đã chọn Ngực | 1. Chọn "Ngực"<br>2. Nhấn lại để bỏ chọn | Nhóm cơ "Ngực" bị bỏ highlight | Đỗ Đức Cảnh |

## V. AI TẠO LỊCH TẬP TỰ ĐỘNG

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| LT20 | Xác minh AI tạo lịch tập thành công với dữ liệu hợp lệ | Số ngày: 3<br>Cường độ: Trung bình<br>Nhóm cơ: Ngực, Lưng | 1. Nhập đầy đủ thông tin hợp lệ<br>2. Nhấn "Tạo lịch tập"<br>3. Chờ AI xử lý | - Hiển thị loading "Đang tạo lịch tập..."<br>- AI tạo lịch tập phù hợp<br>- Thông báo "Tạo lịch tập thành công"<br>- Hiển thị lịch tập chi tiết | Đỗ Đức Cảnh |
| LT21 | Kiểm tra validation khi để trống tất cả trường | Tất cả trống | 1. Không nhập gì<br>2. Nhấn "Tạo lịch tập" | Hiển thị lỗi cho từng trường bắt buộc | Đỗ Đức Cảnh |
| LT22 | Kiểm tra lịch tập phù hợp với số ngày đã chọn | 3 ngày/tuần | 1. Chọn 3 ngày/tuần<br>2. Tạo lịch<br>3. Xem kết quả | Lịch tập có đúng 3 buổi tập/tuần | Đỗ Đức Cảnh |
| LT23 | Kiểm tra lịch tập phù hợp với cường độ "Nhẹ" | Cường độ: Nhẹ | 1. Chọn cường độ Nhẹ<br>2. Tạo lịch<br>3. Xem chi tiết | - Số set/bài tập ít hơn<br>- Thời gian nghỉ dài hơn<br>- Bài tập cơ bản | Đỗ Đức Cảnh |
| LT24 | Kiểm tra lịch tập phù hợp với cường độ "Nặng" | Cường độ: Nặng | 1. Chọn cường độ Nặng<br>2. Tạo lịch<br>3. Xem chi tiết | - Số set/bài tập nhiều hơn<br>- Thời gian nghỉ ngắn hơn<br>- Bài tập nâng cao | Đỗ Đức Cảnh |
| LT25 | Kiểm tra lịch tập tập trung vào nhóm cơ đã chọn | Nhóm cơ: Ngực | 1. Chọn chỉ nhóm cơ "Ngực"<br>2. Tạo lịch<br>3. Xem bài tập | Phần lớn bài tập tập trung vào nhóm cơ ngực | Đỗ Đức Cảnh |
| LT26 | Kiểm tra lịch tập cân bằng khi chọn nhiều nhóm cơ | Nhóm cơ: Ngực, Lưng, Vai | 1. Chọn 3 nhóm cơ<br>2. Tạo lịch<br>3. Phân tích | Bài tập được phân bổ cân bằng cho các nhóm cơ đã chọn | Đỗ Đức Cảnh |
| LT27 | Kiểm tra AI tối ưu lịch tập cho phát triển cơ | Dữ liệu hợp lệ | 1. Tạo lịch tập<br>2. Xem phân bổ | - Có ngày nghỉ giữa các buổi tập cùng nhóm cơ<br>- Phân bổ hợp lý để cơ phục hồi | Đỗ Đức Cảnh |
| LT28 | Kiểm tra thời gian AI tạo lịch | Dữ liệu hợp lệ | 1. Nhấn "Tạo lịch tập"<br>2. Đo thời gian | AI tạo và trả về lịch tập trong < 10 giây | Đỗ Đức Cảnh |
| LT29 | Kiểm tra lưu lịch tập vào database | Dữ liệu hợp lệ | 1. Tạo lịch tập thành công<br>2. Kiểm tra database | Dữ liệu lịch tập được lưu vào CSDL với workout_plan_id | Đỗ Đức Cảnh |
| LT30 | Kiểm tra lưu lịch tập vào AI Agent memory | Dữ liệu hợp lệ | 1. Tạo lịch tập thành công<br>2. Kiểm tra AI memory | Lịch tập được lưu vào trí nhớ AI Agent | Đỗ Đức Cảnh |

## VI. XEM VÀ HIỂN THỊ LỊCH TẬP

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| LT31 | Xác minh hiển thị lịch tập tuần | Đã có lịch tập | 1. Vào "Quản lý lịch tập"<br>2. Xem lịch tuần | Hiển thị lịch tập trong tuần với các buổi tập | Đỗ Đức Cảnh |
| LT32 | Kiểm tra hiển thị chi tiết buổi tập | Đã có lịch | 1. Nhấn vào 1 buổi tập<br>2. Xem chi tiết | Hiển thị:<br>- Tên buổi tập<br>- Danh sách bài tập<br>- Số set, rep cho mỗi bài<br>- Thời gian nghỉ | Đỗ Đức Cảnh |
| LT33 | Kiểm tra hiển thị thông tin bài tập | Xem chi tiết buổi tập | 1. Mở chi tiết buổi tập<br>2. Xem danh sách bài tập | Mỗi bài tập hiển thị:<br>- Tên bài tập<br>- Số set × số rep<br>- Thời gian nghỉ giữa các set | Đỗ Đức Cảnh |
| LT34 | Kiểm tra xem lịch tập nhiều tuần | Đã có lịch | 1. Xem tuần hiện tại<br>2. Chuyển sang tuần sau | Hiển thị lịch tập của tuần được chọn | Đỗ Đức Cảnh |
| LT35 | Kiểm tra highlight ngày hiện tại | Xem lịch tuần | 1. Mở lịch tập<br>2. Quan sát | Ngày hiện tại được highlight khác biệt | Đỗ Đức Cảnh |

## VII. THEO DÕI LỊCH TẬP - CHECK-IN VÀ HOÀN THÀNH

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| LT36 | Xác minh check-in buổi tập | Có buổi tập hôm nay | 1. Mở chi tiết buổi tập hôm nay<br>2. Nhấn "Bắt đầu tập" | - Buổi tập chuyển sang trạng thái "Đang tập"<br>- Nút "Hoàn thành" xuất hiện | Đỗ Đức Cảnh |
| LT37 | Kiểm tra đánh dấu hoàn thành buổi tập | Đã check-in | 1. Đang trong buổi tập<br>2. Nhấn "Hoàn thành" | - Buổi tập chuyển sang "Đã hoàn thành"<br>- Icon ✓ hiển thị<br>- Thông báo "Hoàn thành buổi tập" | Đỗ Đức Cảnh |
| LT38 | Kiểm tra hoàn thành từng bài tập | Đang tập | 1. Trong buổi tập<br>2. Tick từng bài tập khi hoàn thành | Bài tập được đánh dấu ✓ | Đỗ Đức Cảnh |
| LT39 | Kiểm tra không check-in buổi tập khác ngày | Có buổi tập ngày mai | 1. Thử check-in buổi tập ngày mai | Hiển thị "Chỉ có thể bắt đầu buổi tập vào đúng ngày" | Đỗ Đức Cảnh |
| LT40 | Kiểm tra lưu kết quả tập luyện | Hoàn thành buổi tập | 1. Hoàn thành buổi tập<br>2. Kiểm tra | - Kết quả được lưu vào database<br>- Có thể xem lại trong lịch sử | Đỗ Đức Cảnh |
| LT41 | Kiểm tra hiển thị tiến độ buổi tập | Đang tập | 1. Hoàn thành 3/8 bài tập<br>2. Quan sát | Hiển thị progress: "3/8 bài tập hoàn thành" | Đỗ Đức Cảnh |

## VIII. XÓA LỊCH TẬP (UC-09.2)

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| LT42 | Xác minh xóa lịch tập thành công | Đã có lịch tập | 1. Mở "Quản lý lịch tập"<br>2. Nhấn nút "Xóa lịch tập"<br>3. Hiển thị confirm dialog<br>4. Nhấn "Xác nhận" | - Lịch tập bị xóa<br>- Xóa khỏi CSDL<br>- Xóa khỏi AI Agent memory<br>- Thông báo "Đã xóa lịch tập"<br>- Hiển thị "Chưa có lịch tập" và nút "Tạo lịch tập" | Đỗ Đức Cảnh |
| LT43 | Kiểm tra confirm trước khi xóa | Đã có lịch tập | 1. Nhấn "Xóa lịch tập"<br>2. Quan sát | Hiển thị dialog xác nhận:<br>"Bạn có chắc muốn xóa lịch tập?" | Đỗ Đức Cảnh |
| LT44 | Kiểm tra hủy xóa lịch tập | Đã có lịch tập | 1. Nhấn "Xóa lịch tập"<br>2. Hiển thị confirm<br>3. Nhấn "Hủy" | Không xóa, quay lại giao diện, lịch tập vẫn còn | Đỗ Đức Cảnh |
| LT45 | Kiểm tra tạo lịch mới sau khi xóa | Đã xóa lịch cũ | 1. Xóa lịch tập<br>2. Nhấn "Tạo lịch tập" mới<br>3. Tạo lịch với thông tin mới | Cho phép tạo lịch tập mới thành công | Đỗ Đức Cảnh |
| LT46 | Kiểm tra không cho tạo lịch thứ 2 khi đã có | Đã có lịch tập | 1. Đã có 1 lịch tập<br>2. Thử tạo lịch mới | Không hiển thị nút "Tạo lịch tập" | Đỗ Đức Cảnh |

## IX. API INTEGRATION

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| LT47 | Kiểm tra API GET workout plan | N/A | 1. Gọi GET /api/v3/workout-plan | - Status: 200 OK<br>- Response: workout plan object hoặc null (nếu chưa có) | Đỗ Đức Cảnh |
| LT48 | Kiểm tra API POST tạo workout plan | Dữ liệu hợp lệ:<br>days_per_week: 3<br>intensity: "medium"<br>muscle_groups: ["chest", "back"] | 1. Gọi POST /api/v3/workout-plan với body hợp lệ | - Status: 201 Created<br>- Response: workout plan với id mới<br>- Dữ liệu được lưu vào DB và AI memory | Đỗ Đức Cảnh |
| LT49 | Kiểm tra API DELETE workout plan | Plan ID hợp lệ | 1. Gọi DELETE /api/v3/workout-plan/:id | - Status: 200 OK hoặc 204 No Content<br>- Plan bị xóa khỏi DB và AI memory | Đỗ Đức Cảnh |
| LT50 | Kiểm tra API trả về 400 khi thiếu field bắt buộc | Thiếu số ngày tập | 1. POST với body thiếu field required | - Status: 400 Bad Request<br>- Error message: "Missing required field: days_per_week" | Đỗ Đức Cảnh |
| LT51 | Kiểm tra API trả về 404 khi plan không tồn tại | ID: 999999 | 1. Gọi GET /api/v3/workout-plan/999999 | - Status: 404 Not Found<br>- Error: "Workout plan not found" | Đỗ Đức Cảnh |
| LT52 | Kiểm tra API trả về 409 khi tạo plan thứ 2 | Đã có plan | 1. User đã có 1 plan<br>2. Gọi POST tạo plan mới | - Status: 409 Conflict<br>- Error: "User already has a workout plan" | Đỗ Đức Cảnh |

## X. UI/UX VÀ TRẢI NGHIỆM NGƯỜI DÙNG

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| LT53 | Kiểm tra hiển thị loading khi AI đang tạo lịch | Đang tạo lịch | 1. Nhấn "Tạo lịch tập"<br>2. Quan sát | - Hiển thị loading spinner<br>- Text: "Đang tạo lịch tập tối ưu cho bạn..."<br>- Nút bị disable | Đỗ Đức Cảnh |
| LT54 | Kiểm tra disable button khi đang xử lý | Đang tạo lịch | 1. Nhấn "Tạo lịch tập"<br>2. Thử nhấn lại | Nút bị disable, không gửi request trùng lặp | Đỗ Đức Cảnh |
| LT55 | Kiểm tra hiển thị lịch tập dạng calendar | Có lịch tập | 1. Xem lịch tập<br>2. Quan sát | Lịch hiển thị dạng calendar với các buổi tập rõ ràng | Đỗ Đức Cảnh |
| LT56 | Kiểm tra empty state khi chưa có lịch | Chưa có lịch | 1. Vào giao diện lần đầu | Hiển thị illustration + text "Chưa có lịch tập, hãy tạo lịch đầu tiên!" | Đỗ Đức Cảnh |

## XI. RESPONSIVE VÀ CROSS-PLATFORM

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| LT57 | Kiểm tra giao diện trên mobile | Dữ liệu đầy đủ | 1. Mở chức năng trên mobile<br>2. Tạo và quản lý lịch tập | - Giao diện responsive<br>- Form dễ nhập<br>- Calendar tối ưu cho mobile | Đỗ Đức Cảnh |
| LT58 | Kiểm tra giao diện trên tablet | Dữ liệu đầy đủ | 1. Mở trên tablet<br>2. Xem lịch tập | Tận dụng không gian, hiển thị nhiều thông tin hơn | Đỗ Đức Cảnh |
| LT59 | Kiểm tra xoay màn hình | Đang xem lịch | 1. Xoay màn hình portrait/landscape | Layout adapt tốt, không bị lỗi UI | Đỗ Đức Cảnh |

## XII. PERFORMANCE VÀ NETWORK

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| LT60 | Kiểm tra AI tạo lịch với mạng chậm | Dữ liệu hợp lệ | 1. Throttle network về 3G<br>2. Tạo lịch tập<br>3. Chờ | - Hiển thị loading<br>- AI tạo thành công sau 10-20s<br>- Không bị timeout | Đỗ Đức Cảnh |
| LT61 | Kiểm tra load lịch tập khi offline | Đã có lịch tập | 1. Ngắt mạng<br>2. Mở lịch tập | Lịch tập load từ cache/local storage | Đỗ Đức Cảnh |
| LT62 | Kiểm tra cache lịch tập | Đã load lần đầu | 1. Load lịch tập lần đầu<br>2. Đóng app<br>3. Mở lại | Lịch tập load ngay từ cache, không cần gọi API | Đỗ Đức Cảnh |
| LT63 | Kiểm tra timeout khi AI xử lý quá lâu | Dữ liệu hợp lệ | 1. Tạo lịch tập<br>2. AI xử lý > 30s | Timeout và hiển thị lỗi "Hệ thống đang bận, vui lòng thử lại" | Đỗ Đức Cảnh |

## XIII. BẢO MẬT VÀ AUTHORIZATION

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| LT64 | Kiểm tra chỉ user owner mới xem được lịch tập | User A có lịch tập | 1. User B thử gọi API lấy lịch của User A | - Status: 403 Forbidden<br>- Không trả về dữ liệu | Đỗ Đức Cảnh |
| LT65 | Kiểm tra chỉ user owner mới xóa được lịch tập | User A có lịch tập | 1. User B thử xóa lịch của User A | - Status: 403 Forbidden<br>- Lịch không bị xóa | Đỗ Đức Cảnh |
| LT66 | Kiểm tra validate token khi gọi API | Token không hợp lệ | 1. Gọi API với token sai/hết hạn | - Status: 401 Unauthorized<br>- Yêu cầu đăng nhập lại | Đỗ Đức Cảnh |
| LT67 | Kiểm tra SQL Injection trong input | Input: ' OR '1'='1 | 1. Nhập SQL injection vào form<br>2. Tạo lịch | Hệ thống escape/sanitize, không bị tấn công | Đỗ Đức Cảnh |
| LT68 | Kiểm tra XSS trong input | Input: <script>alert('xss')</script> | 1. Nhập script vào form<br>2. Lưu và xem lại | Script được escape, không thực thi | Đỗ Đức Cảnh |

## XIV. ERROR HANDLING

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| LT69 | Kiểm tra lỗi khi AI không thể tạo lịch | Dữ liệu hợp lệ | 1. Gửi request tạo lịch<br>2. AI service lỗi | Hiển thị error: "Không thể tạo lịch tập, vui lòng thử lại" với nút retry | Đỗ Đức Cảnh |
| LT70 | Kiểm tra lỗi server 500 | Dữ liệu hợp lệ | 1. Tạo lịch, server lỗi | Hiển thị "Đã có lỗi xảy ra, vui lòng thử lại sau" | Đỗ Đức Cảnh |
| LT71 | Kiểm tra retry khi thất bại | Lỗi tạo lịch | 1. Tạo lịch bị lỗi<br>2. Nhấn "Thử lại" | Gửi lại request và tạo thành công | Đỗ Đức Cảnh |
| LT72 | Kiểm tra thông báo lỗi rõ ràng | Lỗi validation | 1. Nhập dữ liệu không hợp lệ<br>2. Submit | Hiển thị error message rõ ràng, dễ hiểu | Đỗ Đức Cảnh |

## XV. EDGE CASES VÀ SPECIAL SCENARIOS

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| LT73 | Kiểm tra tạo lịch với 7 ngày/tuần | 7 ngày/tuần | 1. Chọn 7 ngày<br>2. Tạo lịch | AI tạo lịch với 7 buổi tập, phân bổ hợp lý cho từng nhóm cơ | Đỗ Đức Cảnh |
| LT74 | Kiểm tra tạo lịch chọn tất cả nhóm cơ | Chọn tất cả nhóm cơ | 1. Chọn tất cả nhóm cơ<br>2. Tạo lịch | AI tạo lịch full body, phân bổ cân bằng | Đỗ Đức Cảnh |
| LT75 | Kiểm tra tạo lịch với 2 ngày/tuần | 2 ngày/tuần | 1. Chọn 2 ngày<br>2. Tạo lịch | AI tạo lịch với 2 buổi tập full body hoặc upper/lower split | Đỗ Đức Cảnh |
| LT76 | Kiểm tra back button khi đang tạo lịch | Đang nhập form | 1. Nhập một phần form<br>2. Nhấn back | Confirm "Bạn có muốn rời đi? Thay đổi sẽ không được lưu" | Đỗ Đức Cảnh |
| LT77 | Kiểm tra tạo lịch ngay sau khi xóa | Vừa xóa lịch | 1. Xóa lịch tập<br>2. Ngay lập tức tạo lịch mới | Tạo thành công không bị lỗi | Đỗ Đức Cảnh |
| LT78 | Kiểm tra lịch tập khi đổi timezone | Đổi timezone | 1. Có lịch tập<br>2. Thay đổi timezone trên thiết bị<br>3. Xem lịch | Lịch tập hiển thị đúng theo timezone mới | Đỗ Đức Cảnh |

---

## TỔNG KẾT

**Tổng số test cases: 78**

### Phân loại theo nhóm:
- **Nhóm I - Truy cập chức năng**: 5 test cases (LT1-LT5)
- **Nhóm II - Chọn số ngày tập**: 5 test cases (LT6-LT10)
- **Nhóm III - Chọn cường độ**: 4 test cases (LT11-LT14)
- **Nhóm IV - Chọn nhóm cơ**: 5 test cases (LT15-LT19)
- **Nhóm V - AI tạo lịch tập**: 11 test cases (LT20-LT30) ⭐
- **Nhóm VI - Xem và hiển thị**: 5 test cases (LT31-LT35)
- **Nhóm VII - Theo dõi và check-in**: 6 test cases (LT36-LT41)
- **Nhóm VIII - Xóa lịch tập**: 5 test cases (LT42-LT46)
- **Nhóm IX - API Integration**: 6 test cases (LT47-LT52)
- **Nhóm X - UI/UX**: 4 test cases (LT53-LT56)
- **Nhóm XI - Responsive**: 3 test cases (LT57-LT59)
- **Nhóm XII - Performance**: 4 test cases (LT60-LT63)
- **Nhóm XIII - Bảo mật**: 5 test cases (LT64-LT68)
- **Nhóm XIV - Error handling**: 4 test cases (LT69-LT72)
- **Nhóm XV - Edge cases**: 6 test cases (LT73-LT78)

### Mức độ ưu tiên thực hiện:
1. **Critical (P0)**: LT1, LT3-LT4, LT6, LT9, LT14, LT18, LT20-LT30, LT31-LT32, LT36-LT37, LT42, LT47-LT49
2. **High (P1)**: LT2, LT5, LT7-LT8, LT10-LT13, LT15-LT17, LT19, LT33-LT35, LT38-LT41, LT43-LT46, LT50-LT52, LT64-LT68
3. **Medium (P2)**: LT53-LT56, LT60-LT63, LT69-LT72, LT73-LT78
4. **Low (P3)**: LT57-LT59

### Kiến trúc hệ thống:
**Frontend:**
- ScheduleAI.tsx

**Backend:**
- FitnessAIController
  - getWorkoutPlan()
  - createWorkoutPlan()
  - deleteWorkoutPlan()
- FitnessAIService
- FitnessAIModel

**AI Agent Memory:**
- Lưu trữ lịch tập
- Sử dụng cho chat và gợi ý

### API Endpoints:
```
GET    /api/v3/workout-plan              // Lấy lịch tập hiện tại
POST   /api/v3/workout-plan              // Tạo lịch tập mới (AI generation)
       Request body:
       {
         "days_per_week": 3,
         "intensity": "medium",
         "muscle_groups": ["chest", "back"]
       }
       Response:
       {
         "plan_id": "xxx",
         "workouts": [...]
       }
       
DELETE /api/v3/workout-plan/:id          // Xóa lịch tập
```

### Input Parameters (dựa trên FR-09):

**1. Số ngày tập/tuần**: 2, 3, 4, 5, 6, 7 ngày

**2. Cường độ tập luyện**:
- Nhẹ: Dành cho người mới bắt đầu
- Trung bình: Đã có kinh nghiệm
- Nặng: Người tập lâu năm

**3. Nhóm cơ muốn phát triển**:
- Ngực (Chest)
- Lưng (Back)
- Vai (Shoulders)
- Tay (Arms)
- Chân (Legs)
- Bụng (Abs)
- Toàn thân (Full Body)

### Flow chính:

**UC-09.1: Tạo lịch tập**
1. User chưa có lịch → Hiển thị nút "Tạo lịch tập"
2. Nhập: Số ngày, cường độ, nhóm cơ
3. AI tự động tạo lịch tập tối ưu (5-10s)
4. Lưu vào CSDL + AI Agent memory
5. Hiển thị lịch tập chi tiết

**UC-09.2: Xóa lịch tập**
1. User đã có lịch → Hiển thị nút "Xóa lịch tập"
2. Nhấn xóa → Confirm
3. Xóa khỏi CSDL + AI Agent memory
4. Hiển thị lại nút "Tạo lịch tập"

**Theo dõi lịch tập** (FR-09: "Hỗ trợ theo dõi"):
1. Xem chi tiết buổi tập
2. Check-in khi bắt đầu
3. Tick hoàn thành từng bài tập
4. Đánh dấu hoàn thành buổi tập

### Tính năng AI (dựa trên FR-09):
- **Input**: Số ngày, cường độ, nhóm cơ
- **AI tự động**:
  - Tạo lịch tập phù hợp
  - Phân bổ bài tập cho từng nhóm cơ
  - Tối ưu cho phát triển cơ (có ngày nghỉ hợp lý)
  - Set, rep, thời gian nghỉ phù hợp với cường độ
- **Output**: Lịch tập chi tiết cho từng buổi

### Ghi chú:
- ✅ Test cases CHỈ dựa trên UC-09.1, UC-09.2 và FR-09
- ✅ Không có: Gamification, Wearables, Templates, Social sharing
- ✅ Focus vào: Tạo, Xóa, Xem, Theo dõi cơ bản
- ✅ AI generation là tính năng core
- ✅ Lưu vào AI Agent memory để chat sau này
- ✅ Một user chỉ có 1 lịch tập tại 1 thời điểm (phải xóa mới tạo mới)
