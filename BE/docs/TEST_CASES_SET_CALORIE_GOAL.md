# TEST CASES - UC-03: ĐẶT MỤC TIÊU CALO

## I. TRUY CẬP CHỨC NĂNG ĐẶT MỤC TIÊU

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| MC1 | Xác minh truy cập chức năng đặt mục tiêu thành công | Người dùng đã đăng nhập | 1. Đăng nhập vào hệ thống<br>2. Chọn giao diện theo dõi sức khỏe<br>3. Chọn nút "Đặt mục tiêu" | - Hiển thị giao diện đặt mục tiêu<br>- Hiển thị biểu đồ cân nặng 7 ngày<br>- Hiển thị các trường input | Đỗ Đức Cảnh |
| MC2 | Kiểm tra truy cập khi chưa đăng nhập | Người dùng chưa đăng nhập | 1. Không đăng nhập<br>2. Thử truy cập chức năng đặt mục tiêu | Chuyển hướng đến trang đăng nhập | Đỗ Đức Cảnh |
| MC3 | Kiểm tra hiển thị dữ liệu có sẵn nếu đã set mục tiêu | Người dùng đã có mục tiêu | 1. Đăng nhập<br>2. Mở chức năng đặt mục tiêu | Các trường được điền sẵn với dữ liệu hiện tại | Đỗ Đức Cảnh |
| MC4 | Kiểm tra hiển thị form trống với người dùng mới | Người dùng chưa set mục tiêu | 1. Đăng nhập lần đầu<br>2. Mở chức năng đặt mục tiêu | Các trường input trống, sẵn sàng nhập liệu | Đỗ Đức Cảnh |

## II. VALIDATION TRƯỜNG CHIỀU CAO

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| MC5 | Xác minh nhập chiều cao hợp lệ | Chiều cao: 170 cm | 1. Nhập chiều cao 170 cm<br>2. Nhấn lưu | Chấp nhận và lưu thành công | Đỗ Đức Cảnh |
| MC6 | Kiểm tra chiều cao tối thiểu hợp lệ | Chiều cao: 100 cm | 1. Nhập chiều cao 100 cm<br>2. Nhấn lưu | Chấp nhận và lưu thành công | Đỗ Đức Cảnh |
| MC7 | Kiểm tra chiều cao tối đa hợp lệ | Chiều cao: 250 cm | 1. Nhập chiều cao 250 cm<br>2. Nhấn lưu | Chấp nhận và lưu thành công | Đỗ Đức Cảnh |
| MC8 | Kiểm tra chiều cao nhỏ hơn giới hạn | Chiều cao: 50 cm | 1. Nhập chiều cao 50 cm<br>2. Nhấn lưu | Hiển thị lỗi "Chiều cao phải từ 100-250 cm" | Đỗ Đức Cảnh |
| MC9 | Kiểm tra chiều cao lớn hơn giới hạn | Chiều cao: 300 cm | 1. Nhập chiều cao 300 cm<br>2. Nhấn lưu | Hiển thị lỗi "Chiều cao phải từ 100-250 cm" | Đỗ Đức Cảnh |
| MC10 | Kiểm tra trường chiều cao bắt buộc | Chiều cao: "" | 1. Để trống chiều cao<br>2. Nhấn lưu | Hiển thị lỗi "Vui lòng nhập chiều cao" | Đỗ Đức Cảnh |
| MC11 | Kiểm tra chiều cao chỉ chứa số | Chiều cao: abc | 1. Nhập chữ vào chiều cao<br>2. Nhấn lưu | Hiển thị lỗi "Chiều cao phải là số" | Đỗ Đức Cảnh |
| MC12 | Kiểm tra chiều cao là số thập phân | Chiều cao: 170.5 cm | 1. Nhập 170.5<br>2. Nhấn lưu | Chấp nhận số thập phân HOẶC làm tròn | Đỗ Đức Cảnh |

## III. VALIDATION TRƯỜNG CÂN NẶNG HIỆN TẠI

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| MC13 | Xác minh nhập cân nặng hiện tại hợp lệ | Cân nặng: 70 kg | 1. Nhập cân nặng 70 kg<br>2. Nhấn lưu | Chấp nhận và lưu thành công | Đỗ Đức Cảnh |
| MC14 | Kiểm tra cân nặng tối thiểu hợp lệ | Cân nặng: 30 kg | 1. Nhập cân nặng 30 kg<br>2. Nhấn lưu | Chấp nhận và lưu thành công | Đỗ Đức Cảnh |
| MC15 | Kiểm tra cân nặng tối đa hợp lệ | Cân nặng: 300 kg | 1. Nhập cân nặng 300 kg<br>2. Nhấn lưu | Chấp nhận và lưu thành công | Đỗ Đức Cảnh |
| MC16 | Kiểm tra cân nặng nhỏ hơn giới hạn | Cân nặng: 20 kg | 1. Nhập cân nặng 20 kg<br>2. Nhấn lưu | Hiển thị lỗi "Cân nặng phải từ 30-300 kg" | Đỗ Đức Cảnh |
| MC17 | Kiểm tra cân nặng lớn hơn giới hạn | Cân nặng: 350 kg | 1. Nhập cân nặng 350 kg<br>2. Nhấn lưu | Hiển thị lỗi "Cân nặng phải từ 30-300 kg" | Đỗ Đức Cảnh |
| MC18 | Kiểm tra trường cân nặng bắt buộc | Cân nặng: "" | 1. Để trống cân nặng<br>2. Nhấn lưu | Hiển thị lỗi "Vui lòng nhập cân nặng hiện tại" | Đỗ Đức Cảnh |
| MC19 | Kiểm tra cân nặng số thập phân | Cân nặng: 70.5 kg | 1. Nhập 70.5 kg<br>2. Nhấn lưu | Chấp nhận số thập phân với 1-2 chữ số sau dấu phẩy | Đỗ Đức Cảnh |

## IV. VALIDATION TRƯỜNG CÂN NẶNG MONG MUỐN

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| MC20 | Xác minh nhập cân nặng mong muốn hợp lệ | Cân nặng hiện tại: 80 kg<br>Cân nặng mong muốn: 70 kg | 1. Nhập cân nặng mong muốn 70 kg<br>2. Nhấn lưu | Chấp nhận và lưu thành công | Đỗ Đức Cảnh |
| MC21 | Kiểm tra trường cân nặng mong muốn bắt buộc | Cân nặng mong muốn: "" | 1. Để trống cân nặng mong muốn<br>2. Nhấn lưu | Hiển thị lỗi "Vui lòng nhập cân nặng mong muốn" | Đỗ Đức Cảnh |
| MC22 | Kiểm tra cân nặng mong muốn giống hiện tại (giữ cân) | Cân nặng hiện tại: 70 kg<br>Cân nặng mong muốn: 70 kg | 1. Nhập cân nặng mong muốn = hiện tại<br>2. Nhấn lưu | - Chấp nhận<br>- Mục tiêu được set là "Giữ cân" | Đỗ Đức Cảnh |
| MC23 | Kiểm tra cân nặng mong muốn nhỏ hơn hiện tại (giảm cân) | Cân nặng hiện tại: 80 kg<br>Cân nặng mong muốn: 70 kg | 1. Nhập cân nặng mong muốn < hiện tại<br>2. Nhấn lưu | - Chấp nhận<br>- Mục tiêu được set là "Giảm cân" | Đỗ Đức Cảnh |
| MC24 | Kiểm tra cân nặng mong muốn lớn hơn hiện tại (tăng cân) | Cân nặng hiện tại: 60 kg<br>Cân nặng mong muốn: 70 kg | 1. Nhập cân nặng mong muốn > hiện tại<br>2. Nhấn lưu | - Chấp nhận<br>- Mục tiêu được set là "Tăng cân" | Đỗ Đức Cảnh |
| MC25 | Kiểm tra chênh lệch cân nặng quá lớn (không an toàn) | Cân nặng hiện tại: 80 kg<br>Cân nặng mong muốn: 50 kg (giảm 30kg) | 1. Nhập chênh lệch > 20kg<br>2. Nhấn lưu | Hiển thị cảnh báo "Chênh lệch cân nặng quá lớn, có thể không an toàn" | Đỗ Đức Cảnh |

## V. VALIDATION TRƯỜNG NGÀY ĐẠT MỤC TIÊU

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| MC26 | Xác minh chọn ngày đạt mục tiêu hợp lệ | Ngày: 30 ngày sau | 1. Chọn ngày trong tương lai<br>2. Nhấn lưu | Chấp nhận và lưu thành công | Đỗ Đức Cảnh |
| MC27 | Kiểm tra không cho chọn ngày trong quá khứ | Ngày: hôm qua | 1. Thử chọn ngày quá khứ | - Không cho phép chọn<br>- Hoặc disable các ngày quá khứ trong date picker | Đỗ Đức Cảnh |
| MC28 | Kiểm tra không cho chọn ngày hiện tại | Ngày: hôm nay | 1. Chọn ngày hiện tại<br>2. Nhấn lưu | Hiển thị lỗi "Ngày đạt mục tiêu phải sau ngày hiện tại" HOẶC chấp nhận nếu logic cho phép | Đỗ Đức Cảnh |
| MC29 | Kiểm tra trường ngày đạt mục tiêu bắt buộc | Ngày: "" | 1. Không chọn ngày<br>2. Nhấn lưu | Hiển thị lỗi "Vui lòng chọn ngày đạt mục tiêu" | Đỗ Đức Cảnh |
| MC30 | Kiểm tra thời gian tối thiểu để đạt mục tiêu | Ngày: 2 ngày sau (giảm 5kg) | 1. Chọn ngày quá gần so với mục tiêu<br>2. Nhấn lưu | Hiển thị cảnh báo "Thời gian quá ngắn để đạt mục tiêu an toàn" | Đỗ Đức Cảnh |
| MC31 | Kiểm tra thời gian tối đa để đạt mục tiêu | Ngày: 2 năm sau | 1. Chọn ngày quá xa<br>2. Nhấn lưu | Chấp nhận HOẶC hiển thị cảnh báo "Thời gian quá dài, bạn có chắc chắn?" | Đỗ Đức Cảnh |

## VI. VALIDATION TRƯỜNG SỐ NGÀY TẬP LUYỆN

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| MC32 | Xác minh nhập số ngày tập luyện hợp lệ | Số ngày: 5 ngày/tuần | 1. Nhập 5 ngày/tuần<br>2. Nhấn lưu | Chấp nhận và lưu thành công | Đỗ Đức Cảnh |
| MC33 | Kiểm tra số ngày tập luyện tối thiểu | Số ngày: 0 ngày/tuần | 1. Nhập 0 hoặc để trống<br>2. Nhấn lưu | Chấp nhận (không tập) HOẶC hiển thị cảnh báo | Đỗ Đức Cảnh |
| MC34 | Kiểm tra số ngày tập luyện tối đa | Số ngày: 7 ngày/tuần | 1. Nhập 7 ngày/tuần<br>2. Nhấn lưu | Chấp nhận và lưu thành công | Đỗ Đức Cảnh |
| MC35 | Kiểm tra số ngày tập luyện vượt giới hạn | Số ngày: 8 ngày/tuần | 1. Nhập 8 hoặc lớn hơn<br>2. Nhấn lưu | Hiển thị lỗi "Số ngày tập luyện không được vượt quá 7 ngày/tuần" | Đỗ Đức Cảnh |
| MC36 | Kiểm tra trường số ngày tập luyện bắt buộc | Số ngày: "" | 1. Để trống số ngày tập luyện<br>2. Nhấn lưu | Hiển thị lỗi "Vui lòng nhập số ngày tập luyện" HOẶC mặc định là 0 | Đỗ Đức Cảnh |

## VII. VALIDATION TRƯỜNG CHỈ SỐ HOẠT ĐỘNG (ACTIVITY LEVEL)

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| MC37 | Xác minh chọn chỉ số hoạt động "Ít vận động" | Activity Level: Ít vận động | 1. Chọn "Ít vận động"<br>2. Nhấn lưu | Chấp nhận và tính calo theo hệ số 1.2 | Đỗ Đức Cảnh |
| MC38 | Xác minh chọn chỉ số hoạt động "Nhẹ nhàng" | Activity Level: Nhẹ nhàng | 1. Chọn "Nhẹ nhàng" (1-3 ngày/tuần)<br>2. Nhấn lưu | Chấp nhận và tính calo theo hệ số 1.375 | Đỗ Đức Cảnh |
| MC39 | Xác minh chọn chỉ số hoạt động "Trung bình" | Activity Level: Trung bình | 1. Chọn "Trung bình" (3-5 ngày/tuần)<br>2. Nhấn lưu | Chấp nhận và tính calo theo hệ số 1.55 | Đỗ Đức Cảnh |
| MC40 | Xác minh chọn chỉ số hoạt động "Nặng" | Activity Level: Nặng | 1. Chọn "Nặng" (6-7 ngày/tuần)<br>2. Nhấn lưu | Chấp nhận và tính calo theo hệ số 1.725 | Đỗ Đức Cảnh |
| MC41 | Xác minh chọn chỉ số hoạt động "Rất nặng" | Activity Level: Rất nặng | 1. Chọn "Rất nặng" (vận động viên)<br>2. Nhấn lưu | Chấp nhận và tính calo theo hệ số 1.9 | Đỗ Đức Cảnh |
| MC42 | Kiểm tra trường chỉ số hoạt động bắt buộc | Activity Level: "" | 1. Không chọn chỉ số hoạt động<br>2. Nhấn lưu | Hiển thị lỗi "Vui lòng chọn mức độ hoạt động" HOẶC mặc định "Ít vận động" | Đỗ Đức Cảnh |

## VIII. TÍNH TOÁN CALO TỰ ĐỘNG

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| MC43 | Xác minh tính calo cho nam giới (công thức Mifflin-St Jeor) | Giới tính: Nam<br>Tuổi: 25<br>Cao: 175cm<br>Nặng: 70kg<br>Activity: Trung bình | 1. Nhập đầy đủ thông tin<br>2. Nhấn lưu | - BMR = 10×70 + 6.25×175 - 5×25 + 5<br>- TDEE = BMR × 1.55<br>- Hiển thị calo mục tiêu chính xác | Đỗ Đức Cảnh |
| MC44 | Xác minh tính calo cho nữ giới | Giới tính: Nữ<br>Tuổi: 25<br>Cao: 165cm<br>Nặng: 55kg<br>Activity: Trung bình | 1. Nhập đầy đủ thông tin<br>2. Nhấn lưu | - BMR = 10×55 + 6.25×165 - 5×25 - 161<br>- TDEE = BMR × 1.55<br>- Hiển thị calo mục tiêu chính xác | Đỗ Đức Cảnh |
| MC45 | Xác minh tính calo giảm cân (deficit) | Mục tiêu: Giảm 5kg trong 2 tháng | 1. Nhập thông tin giảm cân<br>2. Nhấn lưu | - Tính deficit: 5kg × 7700 cal / 60 ngày ≈ -640 cal/ngày<br>- Calo mục tiêu = TDEE - 640 | Đỗ Đức Cảnh |
| MC46 | Xác minh tính calo tăng cân (surplus) | Mục tiêu: Tăng 5kg trong 2 tháng | 1. Nhập thông tin tăng cân<br>2. Nhấn lưu | - Tính surplus: 5kg × 7700 cal / 60 ngày ≈ +640 cal/ngày<br>- Calo mục tiêu = TDEE + 640 | Đỗ Đức Cảnh |
| MC47 | Xác minh tính calo giữ cân | Mục tiêu: Giữ cân | 1. Nhập cân nặng mong muốn = hiện tại<br>2. Nhấn lưu | Calo mục tiêu = TDEE (không thay đổi) | Đỗ Đức Cảnh |
| MC48 | Kiểm tra giới hạn calo tối thiểu cho nam | Mục tiêu giảm cân mạnh | 1. Set mục tiêu giảm nhiều cân<br>2. Nhấn lưu | - Calo không thấp hơn 1500 cal/ngày<br>- Hiển thị cảnh báo nếu vượt ngưỡng an toàn | Đỗ Đức Cảnh |
| MC49 | Kiểm tra giới hạn calo tối thiểu cho nữ | Mục tiêu giảm cân mạnh | 1. Set mục tiêu giảm nhiều cân<br>2. Nhấn lưu | - Calo không thấp hơn 1200 cal/ngày<br>- Hiển thị cảnh báo nếu vượt ngưỡng an toàn | Đỗ Đức Cảnh |
| MC50 | Kiểm tra tự động cập nhật calo khi thay đổi activity level | Đã set mục tiêu | 1. Thay đổi mức độ hoạt động<br>2. Quan sát calo mục tiêu | Calo tự động tính lại theo activity level mới | Đỗ Đức Cảnh |

## IX. ĐẶT MỤC TIÊU HOÀN CHỈNH

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| MC51 | Xác minh đặt mục tiêu hoàn chỉnh thành công | Tất cả trường hợp lệ | 1. Nhập đầy đủ thông tin hợp lệ<br>2. Nhấn "Lưu mục tiêu" | - Thông báo "Lưu mục tiêu thành công"<br>- Chuyển sang giao diện hiển thị kết quả | Đỗ Đức Cảnh |
| MC52 | Kiểm tra validation khi để trống tất cả các trường | Tất cả trống | 1. Không nhập gì<br>2. Nhấn lưu | Hiển thị lỗi cho từng trường bắt buộc | Đỗ Đức Cảnh |
| MC53 | Kiểm tra lưu dữ liệu vào database | Dữ liệu hợp lệ | 1. Đặt mục tiêu thành công<br>2. Kiểm tra database | Dữ liệu được lưu đúng vào bảng goals/user_profiles | Đỗ Đức Cảnh |
| MC54 | Kiểm tra giao diện kết quả sau khi lưu | Đặt mục tiêu thành công | 1. Lưu mục tiêu<br>2. Quan sát giao diện kết quả | Hiển thị:<br>- Cân nặng mục tiêu<br>- Thời gian đạt mục tiêu<br>- Calo mục tiêu mỗi ngày<br>- Tiến độ % (ban đầu 0%)<br>- Nút "Điều chỉnh mục tiêu" | Đỗ Đức Cảnh |
| MC55 | Kiểm tra tính toán tiến độ phần trăm | Đã có mục tiêu và đã giảm được 2kg/10kg | 1. Đặt mục tiêu giảm 10kg<br>2. Giảm được 2kg<br>3. Xem tiến độ | Tiến độ hiển thị: 20% (2/10 × 100) | Đỗ Đức Cảnh |

## X. ĐIỀU CHỈNH MỤC TIÊU

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| MC56 | Xác minh điều chỉnh mục tiêu đã tồn tại | Đã có mục tiêu | 1. Ở giao diện kết quả<br>2. Nhấn "Điều chỉnh mục tiêu"<br>3. Thay đổi thông tin<br>4. Lưu | - Quay lại form đặt mục tiêu với dữ liệu hiện tại<br>- Cho phép chỉnh sửa<br>- Cập nhật thành công | Đỗ Đức Cảnh |
| MC57 | Kiểm tra cập nhật chỉ 1 trường | Đã có mục tiêu | 1. Điều chỉnh mục tiêu<br>2. Chỉ thay đổi cân nặng mong muốn<br>3. Lưu | - Trường được cập nhật<br>- Các trường khác giữ nguyên<br>- Calo được tính lại | Đỗ Đức Cảnh |
| MC58 | Kiểm tra cập nhật nhiều trường cùng lúc | Đã có mục tiêu | 1. Điều chỉnh mục tiêu<br>2. Thay đổi nhiều trường<br>3. Lưu | Tất cả các trường được cập nhật và calo tính lại | Đỗ Đức Cảnh |
| MC59 | Kiểm tra hủy điều chỉnh mục tiêu | Đã có mục tiêu | 1. Nhấn "Điều chỉnh mục tiêu"<br>2. Thay đổi dữ liệu<br>3. Nhấn "Hủy" | Quay lại giao diện kết quả, dữ liệu không thay đổi | Đỗ Đức Cảnh |
| MC60 | Kiểm tra tiến độ được giữ nguyên khi điều chỉnh | Đã đạt 20% tiến độ | 1. Điều chỉnh mục tiêu<br>2. Lưu | Tiến độ được tính lại dựa trên mục tiêu mới và cân nặng hiện tại | Đỗ Đức Cảnh |

## XI. BIỂU ĐỒ THỐNG KÊ CÂN NẶNG

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| MC61 | Xác minh hiển thị biểu đồ cân nặng 7 ngày | Có dữ liệu cân nặng 7 ngày | 1. Mở chức năng đặt mục tiêu<br>2. Quan sát biểu đồ | Biểu đồ line chart hiển thị cân nặng 7 ngày gần nhất | Đỗ Đức Cảnh |
| MC62 | Kiểm tra biểu đồ khi chưa có dữ liệu | Người dùng mới | 1. Mở chức năng lần đầu<br>2. Quan sát biểu đồ | Hiển thị "Chưa có dữ liệu" hoặc biểu đồ trống | Đỗ Đức Cảnh |
| MC63 | Kiểm tra biểu đồ với dữ liệu < 7 ngày | Có 3 ngày dữ liệu | 1. Mở chức năng<br>2. Quan sát biểu đồ | Hiển thị 3 điểm dữ liệu, các ngày khác để trống | Đỗ Đức Cảnh |
| MC64 | Kiểm tra tương tác với biểu đồ | Có dữ liệu | 1. Hover/tap lên điểm trên biểu đồ | Hiển thị tooltip với ngày và cân nặng chính xác | Đỗ Đức Cảnh |
| MC65 | Kiểm tra cập nhật biểu đồ sau khi lưu mục tiêu | Đặt mục tiêu mới | 1. Lưu mục tiêu với cân nặng mới<br>2. Quan sát biểu đồ | Biểu đồ cập nhật với điểm dữ liệu mới nhất | Đỗ Đức Cảnh |

## XII. TÍCH HỢP VỚI CÁC CHỨC NĂNG KHÁC

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiên |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| MC66 | Kiểm tra mục tiêu calo được sử dụng trong theo dõi hàng ngày | Đã đặt mục tiêu 2000 cal/ngày | 1. Đặt mục tiêu<br>2. Vào giao diện theo dõi sức khỏe<br>3. Ghi nhận bữa ăn | Hiển thị tiến độ calo: X/2000 cal | Đỗ Đức Cảnh |
| MC67 | Kiểm tra mục tiêu được sử dụng trong lập kế hoạch ăn uống | Đã đặt mục tiêu | 1. Đặt mục tiêu<br>2. Vào chức năng quản lý lịch ăn | Hệ thống gợi ý thực đơn phù hợp với mục tiêu calo | Đỗ Đức Cảnh |
| MC68 | Kiểm tra đồng bộ dữ liệu mục tiêu | Đặt mục tiêu trên thiết bị A | 1. Đặt mục tiêu trên thiết bị A<br>2. Đăng nhập thiết bị B<br>3. Xem mục tiêu | Mục tiêu được đồng bộ và hiển thị trên thiết bị B | Đỗ Đức Cảnh |

## XIII. UI/UX VÀ TRẢI NGHIỆM NGƯỜI DÙNG

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| MC69 | Kiểm tra hiển thị loading khi lưu mục tiêu | Dữ liệu hợp lệ | 1. Nhập thông tin<br>2. Nhấn lưu<br>3. Quan sát | Hiển thị loading spinner trong khi xử lý | Đỗ Đức Cảnh |
| MC70 | Kiểm tra disable button khi đang lưu | Dữ liệu hợp lệ | 1. Nhấn lưu<br>2. Thử nhấn lại | Nút bị disable, không gửi request trùng lặp | Đỗ Đức Cảnh |
| MC71 | Kiểm tra hiển thị đơn vị đo lường | N/A | 1. Mở form | Đơn vị (cm, kg, ngày) hiển thị rõ ràng bên cạnh mỗi trường | Đỗ Đức Cảnh |
| MC72 | Kiểm tra tooltip/hint cho các trường | N/A | 1. Hover/tap vào icon (?) | Hiển thị gợi ý: "Chiều cao: Nhập chiều cao hiện tại của bạn tính bằng cm" | Đỗ Đức Cảnh |
| MC73 | Kiểm tra placeholder text | N/A | 1. Quan sát các trường input | Placeholder text hữu ích: "VD: 170", "VD: 70" | Đỗ Đức Cảnh |
| MC74 | Kiểm tra real-time preview calo | Nhập thông tin | 1. Nhập từng trường<br>2. Quan sát | Calo ước tính cập nhật real-time khi nhập | Đỗ Đức Cảnh |
| MC75 | Kiểm tra hiển thị gợi ý dựa trên BMI | Nhập chiều cao và cân nặng | 1. Nhập chiều cao và cân nặng<br>2. Quan sát | Hiển thị BMI và gợi ý: "BMI của bạn: 23.5 (Bình thường)" | Đỗ Đức Cảnh |

## XIV. RESPONSIVE VÀ CROSS-PLATFORM

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| MC76 | Kiểm tra giao diện trên mobile | Dữ liệu đầy đủ | 1. Mở chức năng trên mobile<br>2. Đặt mục tiêu | Giao diện responsive, form hiển thị tốt, biểu đồ scale phù hợp | Đỗ Đức Cảnh |
| MC77 | Kiểm tra giao diện trên tablet | Dữ liệu đầy đủ | 1. Mở chức năng trên tablet<br>2. Đặt mục tiêu | Giao diện tận dụng tốt không gian màn hình lớn hơn | Đỗ Đức Cảnh |
| MC78 | Kiểm tra xoay màn hình | Đang nhập dữ liệu | 1. Nhập 1 phần dữ liệu<br>2. Xoay màn hình | - Dữ liệu đã nhập không bị mất<br>- Layout adapt tốt | Đỗ Đức Cảnh |
| MC79 | Kiểm tra date picker trên các platform | N/A | 1. Chọn trường ngày đạt mục tiêu | Date picker native của từng platform hoạt động tốt | Đỗ Đức Cảnh |

## XV. PERFORMANCE VÀ NETWORK

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| MC80 | Kiểm tra lưu mục tiêu với mạng chậm | Dữ liệu hợp lệ | 1. Throttle network về 3G<br>2. Lưu mục tiêu | - Hiển thị loading<br>- Lưu thành công sau khi chờ<br>- Không bị timeout | Đỗ Đức Cảnh |
| MC81 | Kiểm tra lưu mục tiêu khi mất mạng | Dữ liệu hợp lệ | 1. Ngắt mạng<br>2. Lưu mục tiêu | Hiển thị lỗi "Không có kết nối mạng" và cho phép retry | Đỗ Đức Cảnh |
| MC82 | Kiểm tra load biểu đồ nhanh | Có dữ liệu 7 ngày | 1. Mở chức năng<br>2. Đo thời gian load biểu đồ | Biểu đồ hiển thị trong < 1 giây | Đỗ Đức Cảnh |
| MC83 | Kiểm tra tính toán calo không lag | Thay đổi nhiều trường | 1. Thay đổi nhanh các trường input<br>2. Quan sát | Calo được tính lại mượt mà, không bị lag | Đỗ Đức Cảnh |

## XVI. BẢO MẬT VÀ DATA INTEGRITY

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| MC84 | Kiểm tra chỉ user owner mới sửa được mục tiêu | User A có mục tiêu | 1. User B thử sửa mục tiêu của User A | Hệ thống từ chối, báo lỗi 403 Forbidden | Đỗ Đức Cảnh |
| MC85 | Kiểm tra SQL Injection trong các trường | Chiều cao: ' OR '1'='1 | 1. Nhập SQL injection<br>2. Lưu | Hệ thống escape hoặc reject, không bị tấn công | Đỗ Đức Cảnh |
| MC86 | Kiểm tra XSS trong các trường | Cân nặng: <script>alert('xss')</script> | 1. Nhập script<br>2. Lưu và xem lại | Hệ thống sanitize, không thực thi script | Đỗ Đức Cảnh |
| MC87 | Kiểm tra dữ liệu được mã hóa khi lưu trữ | Dữ liệu nhạy cảm | 1. Lưu mục tiêu<br>2. Kiểm tra database | Dữ liệu nhạy cảm (nếu có) được mã hóa | Đỗ Đức Cảnh |

## XVII. EDGE CASES VÀ BOUNDARY TESTING

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| MC88 | Kiểm tra tuổi rất trẻ | Tuổi: 15 | 1. Nhập tuổi 15<br>2. Lưu | Chấp nhận HOẶC hiển thị cảnh báo "Nên tham khảo ý kiến bác sĩ" | Đỗ Đức Cảnh |
| MC89 | Kiểm tra tuổi cao | Tuổi: 80 | 1. Nhập tuổi 80<br>2. Lưu | Chấp nhận và tính toán phù hợp với người cao tuổi | Đỗ Đức Cảnh |
| MC90 | Kiểm tra copy-paste dữ liệu | Copy "170cm" | 1. Copy text có đơn vị<br>2. Paste vào trường | Tự động parse và lấy số 170 | Đỗ Đức Cảnh |
| MC91 | Kiểm tra nhập số âm | Chiều cao: -170 | 1. Nhập số âm<br>2. Lưu | Hiển thị lỗi "Chiều cao phải là số dương" | Đỗ Đức Cảnh |
| MC92 | Kiểm tra nhập số 0 | Cân nặng: 0 | 1. Nhập 0<br>2. Lưu | Hiển thị lỗi "Cân nặng phải lớn hơn 0" | Đỗ Đức Cảnh |
| MC93 | Kiểm tra khoảng trắng trong input | Chiều cao: " 170 " | 1. Nhập với khoảng trắng<br>2. Lưu | Tự động trim và chấp nhận số 170 | Đỗ Đức Cảnh |

## XVIII. API INTEGRATION

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| MC94 | Kiểm tra API endpoint create goal | Dữ liệu hợp lệ | 1. Gọi POST /api/goals với data hợp lệ | - Status: 201 Created<br>- Response chứa goal_id và dữ liệu đã lưu | Đỗ Đức Cảnh |
| MC95 | Kiểm tra API endpoint update goal | Dữ liệu cập nhật | 1. Gọi PUT /api/goals/:id với data mới | - Status: 200 OK<br>- Response chứa dữ liệu đã cập nhật | Đỗ Đức Cảnh |
| MC96 | Kiểm tra API endpoint get goal | Goal ID | 1. Gọi GET /api/goals/:id | - Status: 200 OK<br>- Response chứa đầy đủ thông tin mục tiêu | Đỗ Đức Cảnh |
| MC97 | Kiểm tra API trả về 400 khi thiếu trường bắt buộc | Thiếu chiều cao | 1. Gọi API thiếu field required | - Status: 400 Bad Request<br>- Error message rõ ràng | Đỗ Đức Cảnh |
| MC98 | Kiểm tra API trả về 404 khi goal không tồn tại | Goal ID không tồn tại | 1. Gọi GET /api/goals/999999 | - Status: 404 Not Found<br>- Error: "Goal not found" | Đỗ Đức Cảnh |

## XIX. ACCESSIBILITY

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| MC99 | Kiểm tra screen reader | N/A | 1. Bật screen reader<br>2. Navigate form | Tất cả label và error được đọc rõ ràng | Đỗ Đức Cảnh |
| MC100 | Kiểm tra keyboard navigation | N/A | 1. Chỉ dùng keyboard<br>2. Di chuyển giữa các trường | Tab qua các trường theo thứ tự hợp lý | Đỗ Đức Cảnh |
| MC101 | Kiểm tra contrast màu sắc | N/A | 1. Kiểm tra tỷ lệ tương phản | Đạt chuẩn WCAG AA (4.5:1) | Đỗ Đức Cảnh |
| MC102 | Kiểm tra font size có thể scale | N/A | 1. Tăng font size hệ thống<br>2. Mở form | Text scale đúng cách, không bị overflow | Đỗ Đức Cảnh |

## XX. LOCALIZATION VÀ UNITS

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| MC103 | Kiểm tra chuyển đổi đơn vị chiều cao (cm ↔ feet/inch) | Chiều cao: 175 cm | 1. Chọn đơn vị Imperial<br>2. Quan sát | Hiển thị 5'9" (175 cm = 5 feet 9 inches) | Đỗ Đức Cảnh |
| MC104 | Kiểm tra chuyển đổi đơn vị cân nặng (kg ↔ lbs) | Cân nặng: 70 kg | 1. Chọn đơn vị Imperial<br>2. Quan sát | Hiển thị 154 lbs (70 kg × 2.20462) | Đỗ Đức Cảnh |
| MC105 | Kiểm tra ngôn ngữ tiếng Việt | N/A | 1. Mở form ở ngôn ngữ tiếng Việt | Tất cả text hiển thị tiếng Việt chính xác, không bị lỗi font | Đỗ Đức Cảnh |
| MC106 | Kiểm tra ngôn ngữ tiếng Anh | N/A | 1. Chuyển sang tiếng Anh<br>2. Mở form | Tất cả text hiển thị tiếng Anh chính xác | Đỗ Đức Cảnh |

## XXI. ERROR HANDLING VÀ RECOVERY

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| MC107 | Kiểm tra lưu dữ liệu tạm khi crash | Đang nhập dữ liệu | 1. Nhập một phần dữ liệu<br>2. App bị crash/force close<br>3. Mở lại app | Dữ liệu được restore từ draft/autosave | Đỗ Đức Cảnh |
| MC108 | Kiểm tra retry khi lưu thất bại | Dữ liệu hợp lệ | 1. Lưu mục tiêu, bị lỗi server<br>2. Chọn "Thử lại" | Gửi lại request và lưu thành công | Đỗ Đức Cảnh |
| MC109 | Kiểm tra thông báo lỗi rõ ràng | Lỗi server 500 | 1. Lưu mục tiêu, server lỗi | Hiển thị "Đã có lỗi xảy ra, vui lòng thử lại sau" thay vì technical error | Đỗ Đức Cảnh |
| MC110 | Kiểm tra không mất dữ liệu khi back | Đang nhập dữ liệu | 1. Nhập dữ liệu<br>2. Nhấn back<br>3. Vào lại | Hiển thị confirm "Bạn có muốn lưu thay đổi?" hoặc autosave | Đỗ Đức Cảnh |

---

## TỔNG KẾT

**Tổng số test cases: 110**

### Phân loại theo nhóm:
- **Nhóm I - Truy cập chức năng**: 4 test cases (MC1-MC4)
- **Nhóm II - Validation chiều cao**: 8 test cases (MC5-MC12)
- **Nhóm III - Validation cân nặng hiện tại**: 7 test cases (MC13-MC19)
- **Nhóm IV - Validation cân nặng mong muốn**: 6 test cases (MC20-MC25)
- **Nhóm V - Validation ngày đạt mục tiêu**: 6 test cases (MC26-MC31)
- **Nhóm VI - Validation số ngày tập luyện**: 5 test cases (MC32-MC36)
- **Nhóm VII - Validation chỉ số hoạt động**: 6 test cases (MC37-MC42)
- **Nhóm VIII - Tính toán calo tự động**: 8 test cases (MC43-MC50)
- **Nhóm IX - Đặt mục tiêu hoàn chỉnh**: 5 test cases (MC51-MC55)
- **Nhóm X - Điều chỉnh mục tiêu**: 5 test cases (MC56-MC60)
- **Nhóm XI - Biểu đồ thống kê**: 5 test cases (MC61-MC65)
- **Nhóm XII - Tích hợp chức năng**: 3 test cases (MC66-MC68)
- **Nhóm XIII - UI/UX**: 7 test cases (MC69-MC75)
- **Nhóm XIV - Responsive**: 4 test cases (MC76-MC79)
- **Nhóm XV - Performance**: 4 test cases (MC80-MC83)
- **Nhóm XVI - Bảo mật**: 4 test cases (MC84-MC87)
- **Nhóm XVII - Edge cases**: 6 test cases (MC88-MC93)
- **Nhóm XVIII - API Integration**: 5 test cases (MC94-MC98)
- **Nhóm XIX - Accessibility**: 4 test cases (MC99-MC102)
- **Nhóm XX - Localization**: 4 test cases (MC103-MC106)
- **Nhóm XXI - Error handling**: 4 test cases (MC107-MC110)

### Mức độ ưu tiên thực hiện:
1. **Critical (P0)**: MC1, MC5, MC10, MC13, MC18, MC20, MC21, MC26, MC29, MC43-MC47, MC51, MC53, MC94
2. **High (P1)**: MC6-MC9, MC14-MC17, MC22-MC25, MC27-MC28, MC30-MC42, MC48-MC50, MC52, MC54-MC60, MC84-MC86
3. **Medium (P2)**: MC2-MC4, MC11-MC12, MC19, MC61-MC75, MC80-MC83, MC87, MC95-MC98, MC107-MC110
4. **Low (P3)**: MC76-MC79, MC88-MC93, MC99-MC106

### Công thức tính calo (Mifflin-St Jeor):
- **Nam**: BMR = 10 × weight(kg) + 6.25 × height(cm) - 5 × age + 5
- **Nữ**: BMR = 10 × weight(kg) + 6.25 × height(cm) - 5 × age - 161
- **TDEE**: BMR × Activity Factor (1.2 - 1.9)
- **Giảm cân**: TDEE - (deficit calo/ngày)
- **Tăng cân**: TDEE + (surplus calo/ngày)

### Hệ số hoạt động (Activity Factor):
- Ít vận động: 1.2
- Nhẹ nhàng (1-3 ngày/tuần): 1.375
- Trung bình (3-5 ngày/tuần): 1.55
- Nặng (6-7 ngày/tuần): 1.725
- Rất nặng (vận động viên): 1.9

### Ghi chú:
- Test cases được thiết kế dựa trên UC-03.1 và FR-03
- Bao gồm validation, tính toán, UI/UX, bảo mật
- Tập trung vào độ chính xác của công thức tính calo
- Phù hợp cho cả người dùng mới và người dùng đã có mục tiêu
