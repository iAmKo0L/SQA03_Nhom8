# TEST CASES - UC-05: QUẢN LÝ CALO NẠP VÀO THEO NGÀY

## I. TRUY CẬP CHỨC NĂNG QUẢN LÝ CALO

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| QL1 | Xác minh truy cập chức năng ghi nhận bữa ăn thành công | Người dùng đã đăng nhập | 1. Đăng nhập vào hệ thống<br>2. Chọn giao diện theo dõi sức khỏe<br>3. Chọn "Ghi nhận bữa ăn" | - Hiển thị giao diện FoodDiary<br>- Mặc định tab "Phân tích ảnh"<br>- Có tab "Nhập thủ công" | Đỗ Đức Cảnh |
| QL2 | Kiểm tra truy cập khi chưa đăng nhập | Người dùng chưa đăng nhập | 1. Không đăng nhập<br>2. Thử truy cập chức năng | Chuyển hướng đến trang đăng nhập | Đỗ Đức Cảnh |
| QL3 | Kiểm tra chuyển đổi giữa tab "Phân tích ảnh" và "Nhập thủ công" | N/A | 1. Mở giao diện ghi nhận bữa ăn<br>2. Chuyển qua tab "Nhập thủ công" | - Tab được chuyển đổi mượt mà<br>- Hiển thị danh sách món ăn đã ghi nhận | Đỗ Đức Cảnh |
| QL4 | Kiểm tra tab "Nhập thủ công" mặc định khi có dữ liệu | Đã có món ăn hôm nay | 1. Vào tab "Nhập thủ công" | Hiển thị danh sách các thẻ bản ghi món ăn hôm nay với nút sửa/xóa | Đỗ Đức Cảnh |
| QL5 | Kiểm tra giao diện trống khi chưa có món ăn | Chưa có món ăn hôm nay | 1. Vào tab "Nhập thủ công" | Hiển thị "Chưa có món ăn nào hôm nay" và nút "Thêm món ăn thủ công" | Đỗ Đức Cảnh |

## II. XEM DANH SÁCH MÓN ĂN (READ)

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| QL6 | Xác minh hiển thị danh sách món ăn trong ngày | Có 5 món ăn hôm nay | 1. Vào tab "Nhập thủ công" | Hiển thị đầy đủ 5 món ăn với thông tin: tên, calo, số lượng | Đỗ Đức Cảnh |
| QL7 | Kiểm tra hiển thị tổng calo nạp vào trong ngày | Có món ăn với tổng 1500 cal | 1. Vào giao diện quản lý<br>2. Quan sát tổng calo | Hiển thị "Tổng calo nạp vào: 1500 cal" | Đỗ Đức Cảnh |
| QL8 | Kiểm tra hiển thị tiến độ so với mục tiêu | Mục tiêu: 2000 cal<br>Đã ăn: 1500 cal | 1. Xem giao diện | Hiển thị tiến độ: "1500/2000 cal (75%)" | Đỗ Đức Cảnh |
| QL9 | Kiểm tra cảnh báo vượt mục tiêu calo | Mục tiêu: 2000 cal<br>Đã ăn: 2200 cal | 1. Thêm món ăn vượt mục tiêu<br>2. Quan sát | Hiển thị cảnh báo màu đỏ "Đã vượt mục tiêu 200 cal" | Đỗ Đức Cảnh |
| QL10 | Kiểm tra lọc món ăn theo bữa (sáng/trưa/tối) | Có món ăn nhiều bữa | 1. Chọn filter "Bữa sáng" | Chỉ hiển thị món ăn của bữa sáng | Đỗ Đức Cảnh |
| QL11 | Kiểm tra sắp xếp danh sách theo thời gian | Có nhiều món ăn | 1. Xem danh sách | Món ăn được sắp xếp theo thời gian thêm (mới nhất trên cùng) | Đỗ Đức Cảnh |
| QL12 | Kiểm tra refresh danh sách | Đã có dữ liệu | 1. Pull to refresh (mobile)<br>2. Hoặc nhấn nút refresh | Danh sách được tải lại từ server | Đỗ Đức Cảnh |

## III. THÊM MÓN ĂN THỦ CÔNG (CREATE) - VALIDATION

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| QL13 | Xác minh thêm món ăn thành công với dữ liệu hợp lệ | Tên: Cơm gà<br>Calo: 500<br>Số lượng: 1 | 1. Nhấn "Thêm món ăn thủ công"<br>2. Nhập đầy đủ thông tin<br>3. Nhấn "Thêm" | - Thông báo "Thêm đồ ăn thành công"<br>- Quay lại danh sách<br>- Món ăn xuất hiện trong danh sách<br>- Tổng calo được cập nhật | Đỗ Đức Cảnh |
| QL14 | Kiểm tra trường tên món ăn bắt buộc | Tên: ""<br>Calo: 500<br>Số lượng: 1 | 1. Để trống tên món ăn<br>2. Nhấn "Thêm" | - Nút "Thêm" bị disable HOẶC<br>- Hiển thị lỗi "Vui lòng nhập tên món ăn" | Đỗ Đức Cảnh |
| QL15 | Kiểm tra trường hàm lượng calo bắt buộc | Tên: Cơm gà<br>Calo: ""<br>Số lượng: 1 | 1. Để trống calo<br>2. Nhấn "Thêm" | - Nút "Thêm" bị disable HOẶC<br>- Hiển thị lỗi "Vui lòng nhập hàm lượng calo" | Đỗ Đức Cảnh |
| QL16 | Kiểm tra trường số lượng bắt buộc | Tên: Cơm gà<br>Calo: 500<br>Số lượng: "" | 1. Để trống số lượng<br>2. Nhấn "Thêm" | - Nút "Thêm" bị disable HOẶC<br>- Hiển thị lỗi "Vui lòng nhập số lượng" HOẶC mặc định = 1 | Đỗ Đức Cảnh |
| QL17 | Kiểm tra validation khi để trống tất cả các trường | Tất cả trống | 1. Không nhập gì<br>2. Thử nhấn "Thêm" | Nút "Thêm" bị disable và hiển thị lỗi cho các trường bắt buộc | Đỗ Đức Cảnh |
| QL18 | Kiểm tra độ dài tên món ăn tối đa | Tên: 101 ký tự | 1. Nhập tên rất dài (>100 ký tự)<br>2. Nhấn "Thêm" | Hiển thị lỗi "Tên món ăn tối đa 100 ký tự" HOẶC tự động cắt | Đỗ Đức Cảnh |
| QL19 | Kiểm tra độ dài tên món ăn tối thiểu | Tên: A (1 ký tự) | 1. Nhập tên 1 ký tự<br>2. Nhấn "Thêm" | Chấp nhận HOẶC lỗi "Tên món ăn tối thiểu 2 ký tự" | Đỗ Đức Cảnh |
| QL20 | Kiểm tra tên món ăn có ký tự đặc biệt | Tên: Cơm gà & rau | 1. Nhập tên có ký tự đặc biệt<br>2. Nhấn "Thêm" | Chấp nhận và lưu đúng | Đỗ Đức Cảnh |
| QL21 | Kiểm tra tên món ăn có emoji | Tên: Cơm gà 🍗 | 1. Nhập tên có emoji<br>2. Nhấn "Thêm" | Chấp nhận và hiển thị đúng emoji | Đỗ Đức Cảnh |

## IV. THÊM MÓN ĂN - VALIDATION HÀMLƯỢNG CALO

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| QL22 | Xác minh nhập calo hợp lệ | Calo: 500 | 1. Nhập calo 500<br>2. Nhấn "Thêm" | Chấp nhận và lưu thành công | Đỗ Đức Cảnh |
| QL23 | Kiểm tra calo tối thiểu | Calo: 1 | 1. Nhập calo = 1<br>2. Nhấn "Thêm" | Chấp nhận và lưu thành công | Đỗ Đức Cảnh |
| QL24 | Kiểm tra calo = 0 | Calo: 0 | 1. Nhập calo = 0<br>2. Nhấn "Thêm" | Hiển thị lỗi "Hàm lượng calo phải lớn hơn 0" | Đỗ Đức Cảnh |
| QL25 | Kiểm tra calo số âm | Calo: -100 | 1. Nhập calo âm<br>2. Nhấn "Thêm" | Hiển thị lỗi "Hàm lượng calo phải là số dương" | Đỗ Đức Cảnh |
| QL26 | Kiểm tra calo rất lớn | Calo: 10000 | 1. Nhập calo = 10000<br>2. Nhấn "Thêm" | Hiển thị cảnh báo "Hàm lượng calo rất cao, bạn có chắc chắn?" nhưng vẫn cho phép lưu | Đỗ Đức Cảnh |
| QL27 | Kiểm tra calo là số thập phân | Calo: 250.5 | 1. Nhập calo 250.5<br>2. Nhấn "Thêm" | Chấp nhận số thập phân với 1-2 chữ số sau dấu phẩy | Đỗ Đức Cảnh |
| QL28 | Kiểm tra calo không phải là số | Calo: abc | 1. Nhập chữ vào calo<br>2. Nhấn "Thêm" | Hiển thị lỗi "Hàm lượng calo phải là số" | Đỗ Đức Cảnh |

## V. THÊM MÓN ĂN - VALIDATION SỐ LƯỢNG

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| QL29 | Xác minh nhập số lượng hợp lệ | Số lượng: 2 | 1. Nhập số lượng 2<br>2. Nhấn "Thêm" | Chấp nhận và tính tổng calo = calo × 2 | Đỗ Đức Cảnh |
| QL30 | Kiểm tra số lượng mặc định | Số lượng: "" (để trống) | 1. Không nhập số lượng<br>2. Nhấn "Thêm" | Mặc định = 1 và lưu thành công | Đỗ Đức Cảnh |
| QL31 | Kiểm tra số lượng = 0 | Số lượng: 0 | 1. Nhập số lượng = 0<br>2. Nhấn "Thêm" | Hiển thị lỗi "Số lượng phải lớn hơn 0" | Đỗ Đức Cảnh |
| QL32 | Kiểm tra số lượng số âm | Số lượng: -2 | 1. Nhập số lượng âm<br>2. Nhấn "Thêm" | Hiển thị lỗi "Số lượng phải là số dương" | Đỗ Đức Cảnh |
| QL33 | Kiểm tra số lượng là số thập phân | Số lượng: 1.5 | 1. Nhập 1.5 phần<br>2. Nhấn "Thêm" | Chấp nhận số thập phân và tính tổng calo = calo × 1.5 | Đỗ Đức Cảnh |
| QL34 | Kiểm tra số lượng rất lớn | Số lượng: 100 | 1. Nhập số lượng = 100<br>2. Nhấn "Thêm" | Hiển thị cảnh báo "Số lượng rất lớn, bạn có chắc chắn?" nhưng cho phép lưu | Đỗ Đức Cảnh |

## VI. THÊM MÓN ĂN - CHỌN BỮA ĂN VÀ THỜI GIAN

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| QL35 | Xác minh chọn bữa ăn (sáng/trưa/tối/phụ) | Bữa: Sáng | 1. Chọn "Bữa sáng"<br>2. Thêm món ăn | Món ăn được gắn nhãn "Bữa sáng" | Đỗ Đức Cảnh |
| QL36 | Kiểm tra mặc định bữa ăn theo thời gian | Thời gian: 8:00 AM | 1. Thêm món ăn lúc 8AM | Tự động chọn "Bữa sáng" | Đỗ Đức Cảnh |
| QL37 | Kiểm tra chọn thời gian tùy chỉnh | Thời gian: 10:30 AM | 1. Chọn thời gian cụ thể<br>2. Thêm món ăn | Lưu với thời gian chính xác 10:30 AM | Đỗ Đức Cảnh |
| QL38 | Kiểm tra không cho chọn thời gian tương lai | Thời gian: ngày mai | 1. Thử chọn thời gian trong tương lai<br>2. Nhấn "Thêm" | Hiển thị lỗi "Không thể thêm món ăn cho thời gian trong tương lai" HOẶC disable | Đỗ Đức Cảnh |
| QL39 | Kiểm tra thêm món ăn cho ngày quá khứ | Thời gian: hôm qua | 1. Chọn ngày hôm qua<br>2. Thêm món ăn | Cho phép thêm và hiển thị trong lịch sử ngày đó | Đỗ Đức Cảnh |

## VII. THÊM MÓN ĂN - TÌM KIẾM VÀ GỢI Ý

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| QL40 | Kiểm tra tìm kiếm món ăn trong database | Search: "Cơm" | 1. Nhập "Cơm" vào tìm kiếm<br>2. Quan sát gợi ý | Hiển thị danh sách món ăn có "Cơm": Cơm gà, Cơm chiên, Cơm sườn... | Đỗ Đức Cảnh |
| QL41 | Kiểm tra chọn món ăn từ gợi ý | Chọn "Cơm gà" | 1. Tìm kiếm và chọn món từ gợi ý | Tự động điền tên và calo mặc định của món ăn đó | Đỗ Đức Cảnh |
| QL42 | Kiểm tra thêm món ăn mới chưa có trong database | Tên: Món ăn tự chế biến | 1. Nhập tên món mới<br>2. Nhập calo thủ công<br>3. Thêm | Lưu thành công và có thể suggest cho lần sau | Đỗ Đức Cảnh |
| QL43 | Kiểm tra autocomplete khi gõ | Gõ: "Com" | 1. Gõ "Com"<br>2. Quan sát | Gợi ý real-time: "Cơm gà", "Cơm chiên"... | Đỗ Đức Cảnh |
| QL44 | Kiểm tra tìm kiếm không có kết quả | Search: "xyz123abc" | 1. Tìm món không tồn tại | Hiển thị "Không tìm thấy món ăn, bạn có thể thêm mới" | Đỗ Đức Cảnh |

## VIII. THÊM MÓN ĂN - THÊM ẢNH VÀ GHI CHÚ

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| QL45 | Kiểm tra thêm ảnh món ăn (optional) | Ảnh món ăn | 1. Nhập thông tin món ăn<br>2. Chọn thêm ảnh<br>3. Upload ảnh<br>4. Lưu | Món ăn lưu kèm ảnh và hiển thị thumbnail trong danh sách | Đỗ Đức Cảnh |
| QL46 | Kiểm tra thêm món ăn không có ảnh | Không có ảnh | 1. Nhập thông tin<br>2. Không thêm ảnh<br>3. Lưu | Lưu thành công, hiển thị icon mặc định | Đỗ Đức Cảnh |
| QL47 | Kiểm tra thêm ghi chú cho món ăn | Ghi chú: "Ăn tại nhà hàng ABC" | 1. Nhập thông tin món ăn<br>2. Thêm ghi chú<br>3. Lưu | Ghi chú được lưu và hiển thị khi xem chi tiết | Đỗ Đức Cảnh |
| QL48 | Kiểm tra upload ảnh kích thước lớn | Ảnh > 10MB | 1. Upload ảnh rất lớn | Hiển thị lỗi "Kích thước ảnh tối đa 10MB" | Đỗ Đức Cảnh |
| QL49 | Kiểm tra upload file không phải ảnh | File: document.pdf | 1. Thử upload file PDF | Hiển thị lỗi "Chỉ chấp nhận file ảnh (JPG, PNG, WEBP)" | Đỗ Đức Cảnh |

## IX. SỬA MÓN ĂN (UPDATE)

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| QL50 | Xác minh sửa món ăn thành công | Tên mới: Cơm gà xối mỡ | 1. Chọn nút "Sửa" trên 1 món ăn<br>2. Sửa thông tin<br>3. Nhấn "Lưu" | - Thông báo "Cập nhật thành công"<br>- Quay lại danh sách<br>- Hiển thị thông tin đã sửa<br>- Tổng calo được cập nhật | Đỗ Đức Cảnh |
| QL51 | Kiểm tra hiển thị dữ liệu cũ khi mở form sửa | Món ăn đã có | 1. Nhấn nút "Sửa" | Form hiển thị với dữ liệu hiện tại của món ăn | Đỗ Đức Cảnh |
| QL52 | Kiểm tra sửa chỉ 1 trường | Sửa calo: 500 → 600 | 1. Mở form sửa<br>2. Chỉ sửa calo<br>3. Lưu | - Calo được cập nhật<br>- Các trường khác giữ nguyên | Đỗ Đức Cảnh |
| QL53 | Kiểm tra sửa nhiều trường cùng lúc | Sửa tên, calo, số lượng | 1. Mở form sửa<br>2. Sửa nhiều trường<br>3. Lưu | Tất cả các trường được cập nhật | Đỗ Đức Cảnh |
| QL54 | Kiểm tra validation khi sửa | Xóa tên món ăn | 1. Mở form sửa<br>2. Xóa tên để trống<br>3. Thử lưu | Hiển thị lỗi "Vui lòng nhập tên món ăn" | Đỗ Đức Cảnh |
| QL55 | Kiểm tra hủy chỉnh sửa | Đang sửa món ăn | 1. Mở form sửa<br>2. Thay đổi dữ liệu<br>3. Nhấn "Quay lại" hoặc "Hủy" | Quay lại danh sách, dữ liệu không thay đổi | Đỗ Đức Cảnh |
| QL56 | Kiểm tra xác nhận khi có thay đổi chưa lưu | Đang sửa món ăn | 1. Sửa dữ liệu<br>2. Nhấn back không lưu | Hiển thị confirm "Bạn có thay đổi chưa lưu, bạn có muốn rời đi?" | Đỗ Đức Cảnh |
| QL57 | Kiểm tra sửa món ăn được thêm từ ảnh | Món từ AI | 1. Chọn sửa món từ phân tích ảnh<br>2. Điều chỉnh thông tin<br>3. Lưu | Cho phép sửa và cập nhật thành công | Đỗ Đức Cảnh |
| QL58 | Kiểm tra timestamp được cập nhật khi sửa | Món ăn có timestamp | 1. Sửa món ăn<br>2. Lưu<br>3. Kiểm tra timestamp | Có field "updated_at" được cập nhật, "created_at" giữ nguyên | Đỗ Đức Cảnh |

## X. XÓA MÓN ĂN (DELETE)

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| QL59 | Xác minh xóa món ăn thành công | Món ăn đã tồn tại | 1. Nhấn nút "Xóa" trên 1 món ăn<br>2. Hiển thị confirm dialog<br>3. Nhấn "Xác nhận" | - Món ăn bị xóa khỏi danh sách<br>- Thông báo "Xóa món ăn thành công"<br>- Tổng calo được cập nhật | Đỗ Đức Cảnh |
| QL60 | Kiểm tra hủy xóa món ăn | Món ăn đã tồn tại | 1. Nhấn nút "Xóa"<br>2. Hiển thị confirm<br>3. Nhấn "Hủy" hoặc "Thoát" | Không xóa, quay lại danh sách, món ăn vẫn còn | Đỗ Đức Cảnh |
| QL61 | Kiểm tra xóa nhiều món ăn liên tiếp | Có 3 món ăn | 1. Xóa món 1<br>2. Xóa món 2<br>3. Xóa món 3 | Cả 3 món bị xóa, tổng calo về 0 | Đỗ Đức Cảnh |
| QL62 | Kiểm tra xóa tất cả món ăn trong ngày | Có nhiều món | 1. Chọn "Xóa tất cả"<br>2. Xác nhận | Tất cả món ăn bị xóa, hiển thị "Chưa có món ăn nào" | Đỗ Đức Cảnh |
| QL63 | Kiểm tra undo sau khi xóa | Vừa xóa món ăn | 1. Xóa món ăn<br>2. Nhấn "Hoàn tác" ngay sau đó | Món ăn được khôi phục lại | Đỗ Đức Cảnh |
| QL64 | Kiểm tra xóa món ăn không tồn tại | Record ID không hợp lệ | 1. Thử xóa món đã bị xóa/không tồn tại | Hiển thị lỗi "Món ăn không tồn tại hoặc đã bị xóa" | Đỗ Đức Cảnh |

## XI. PHÂN TÍCH ẢNH TỰ ĐỘNG (AI DETECTION)

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| QL65 | Xác minh phân tích ảnh món ăn thành công | Ảnh món ăn rõ ràng | 1. Vào tab "Phân tích ảnh"<br>2. Upload/chụp ảnh món ăn<br>3. Chờ AI phân tích | - Hiển thị kết quả: tên món ăn, calo ước tính<br>- Nút "Xác nhận" và "Chỉnh sửa" | Đỗ Đức Cảnh |
| QL66 | Kiểm tra phân tích ảnh mờ hoặc không rõ | Ảnh mờ, tối | 1. Upload ảnh chất lượng kém<br>2. Chờ phân tích | Hiển thị "Không thể nhận dạng món ăn, vui lòng chụp lại hoặc nhập thủ công" | Đỗ Đức Cảnh |
| QL67 | Kiểm tra phân tích ảnh không phải món ăn | Ảnh phong cảnh | 1. Upload ảnh không phải món ăn<br>2. Chờ phân tích | Hiển thị "Không phát hiện món ăn trong ảnh" | Đỗ Đức Cảnh |
| QL68 | Kiểm tra phân tích nhiều món ăn trong 1 ảnh | Ảnh có 3 món ăn | 1. Upload ảnh có nhiều món<br>2. Chờ phân tích | Hiển thị danh sách 3 món với calo riêng cho từng món | Đỗ Đức Cảnh |
| QL69 | Kiểm tra chỉnh sửa kết quả AI trước khi lưu | AI detect: Cơm gà - 450 cal | 1. Sau khi AI phân tích<br>2. Nhấn "Chỉnh sửa"<br>3. Sửa calo: 450 → 500<br>4. Xác nhận | Lưu với calo đã điều chỉnh (500 cal) | Đỗ Đức Cảnh |
| QL70 | Kiểm tra từ chối kết quả AI | AI detect sai | 1. AI phân tích sai<br>2. Nhấn "Hủy" hoặc "Nhập lại" | Quay lại, cho phép chụp lại hoặc nhập thủ công | Đỗ Đức Cảnh |
| QL71 | Kiểm tra tự động thêm món ăn từ ảnh vào danh sách | AI detect thành công | 1. Upload ảnh<br>2. Xác nhận kết quả AI<br>3. Nhấn "Lưu" | Món ăn tự động thêm vào danh sách ngày hôm nay | Đỗ Đức Cảnh |
| QL72 | Kiểm tra loading khi AI đang phân tích | Upload ảnh | 1. Upload ảnh<br>2. Quan sát trong khi xử lý | Hiển thị loading "Đang phân tích ảnh..." | Đỗ Đức Cảnh |
| QL73 | Kiểm tra timeout khi AI xử lý quá lâu | Upload ảnh | 1. Upload ảnh<br>2. Chờ quá 30s | Hiển thị lỗi "Không thể phân tích ảnh, vui lòng thử lại hoặc nhập thủ công" | Đỗ Đức Cảnh |

## XII. TỔNG HỢP VÀ TÍNH TOÁN CALO

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| QL74 | Xác minh tính tổng calo chính xác | 3 món: 500 + 300 + 200 cal | 1. Thêm 3 món ăn<br>2. Quan sát tổng calo | Hiển thị "Tổng calo: 1000 cal" | Đỗ Đức Cảnh |
| QL75 | Kiểm tra tính calo theo số lượng | Món 500 cal, số lượng 2 | 1. Thêm món 500 cal × 2 phần<br>2. Quan sát | Tổng calo món này: 1000 cal (500 × 2) | Đỗ Đức Cảnh |
| QL76 | Kiểm tra cập nhật tổng calo real-time khi thêm | Ban đầu 1000 cal | 1. Có tổng 1000 cal<br>2. Thêm món 300 cal | Tổng calo tự động cập nhật thành 1300 cal | Đỗ Đức Cảnh |
| QL77 | Kiểm tra cập nhật tổng calo real-time khi xóa | Ban đầu 1000 cal | 1. Có tổng 1000 cal<br>2. Xóa món 300 cal | Tổng calo tự động cập nhật thành 700 cal | Đỗ Đức Cảnh |
| QL78 | Kiểm tra cập nhật tổng calo real-time khi sửa | Món 500 cal → 600 cal | 1. Sửa món từ 500 → 600 cal<br>2. Lưu | Tổng calo tăng thêm 100 cal | Đỗ Đức Cảnh |
| QL79 | Kiểm tra hiển thị tiến độ so với mục tiêu | Mục tiêu: 2000 cal<br>Đã ăn: 1500 cal | 1. Xem tổng calo<br>2. Quan sát tiến độ | - Hiển thị "1500/2000 cal (75%)"<br>- Progress bar 75%<br>- "Còn lại: 500 cal" | Đỗ Đức Cảnh |
| QL80 | Kiểm tra thông báo khi đạt mục tiêu | Đã ăn: 2000/2000 cal | 1. Thêm món làm đủ mục tiêu | Hiển thị thông báo "Bạn đã đạt mục tiêu calo hôm nay!" | Đỗ Đức Cảnh |
| QL81 | Kiểm tra cảnh báo khi vượt mục tiêu | Đã ăn: 2200/2000 cal | 1. Thêm món vượt mục tiêu | Hiển thị cảnh báo đỏ "Bạn đã vượt mục tiêu 200 cal" | Đỗ Đức Cảnh |

## XIII. PHÂN CHIA THEO BỮA ĂN

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| QL82 | Kiểm tra tổng calo theo từng bữa | Sáng: 500<br>Trưa: 700<br>Tối: 600 | 1. Xem danh sách món ăn<br>2. Quan sát phân chia theo bữa | Hiển thị:<br>- Bữa sáng: 500 cal<br>- Bữa trưa: 700 cal<br>- Bữa tối: 600 cal<br>- Tổng: 1800 cal | Đỗ Đức Cảnh |
| QL83 | Kiểm tra thêm bữa phụ | Bữa phụ: 200 cal | 1. Thêm món vào "Bữa phụ"<br>2. Quan sát | Hiển thị "Bữa phụ: 200 cal" trong danh sách | Đỗ Đức Cảnh |
| QL84 | Kiểm tra biểu đồ phân bố calo theo bữa | Có dữ liệu nhiều bữa | 1. Xem trang tổng quan<br>2. Quan sát biểu đồ | Pie chart hoặc bar chart hiển thị % calo mỗi bữa | Đỗ Đức Cảnh |

## XIV. XEM LỊCH SỬ VÀ THỐNG KÊ

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| QL85 | Kiểm tra xem lịch sử món ăn ngày hôm qua | Có dữ liệu hôm qua | 1. Chọn ngày hôm qua trong calendar<br>2. Xem danh sách | Hiển thị đầy đủ món ăn của hôm qua | Đỗ Đức Cảnh |
| QL86 | Kiểm tra xem lịch sử món ăn tuần trước | Có dữ liệu tuần trước | 1. Chọn ngày trong tuần trước | Hiển thị món ăn của ngày đó | Đỗ Đức Cảnh |
| QL87 | Kiểm tra thống kê 7 ngày gần nhất | Có dữ liệu 7 ngày | 1. Xem tab "Thống kê"<br>2. Quan sát biểu đồ | Biểu đồ line chart hiển thị tổng calo mỗi ngày trong 7 ngày | Đỗ Đức Cảnh |
| QL88 | Kiểm tra thống kê theo tháng | Có dữ liệu 1 tháng | 1. Chọn view "Tháng"<br>2. Quan sát | Biểu đồ hiển thị calo trung bình mỗi ngày trong tháng | Đỗ Đức Cảnh |
| QL89 | Kiểm tra xem top món ăn phổ biến | Có nhiều món ăn lặp lại | 1. Vào "Thống kê"<br>2. Xem "Món ăn phổ biến" | Hiển thị danh sách món ăn được thêm nhiều nhất | Đỗ Đức Cảnh |
| QL90 | Kiểm tra tìm kiếm trong lịch sử | Keyword: "Cơm gà" | 1. Vào lịch sử<br>2. Tìm kiếm "Cơm gà" | Hiển thị tất cả bản ghi có "Cơm gà" trong nhiều ngày | Đỗ Đức Cảnh |

## XV. UI/UX VÀ TRẢI NGHIỆM NGƯỜI DÙNG

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| QL91 | Kiểm tra hiển thị loading khi tải danh sách | N/A | 1. Vào giao diện quản lý<br>2. Quan sát khi đang load | Hiển thị skeleton loading hoặc spinner | Đỗ Đức Cảnh |
| QL92 | Kiểm tra hiển thị loading khi thêm món | Dữ liệu hợp lệ | 1. Nhấn "Thêm"<br>2. Quan sát | Loading spinner trên nút, nút bị disable | Đỗ Đức Cảnh |
| QL93 | Kiểm tra swipe to delete (mobile) | Món ăn trong list | 1. Swipe left/right trên món ăn | Hiển thị nút "Xóa" hoặc confirm xóa | Đỗ Đức Cảnh |
| QL94 | Kiểm tra pull to refresh | Có dữ liệu | 1. Pull down để refresh<br>2. Chờ load | Danh sách được tải lại từ server | Đỗ Đức Cảnh |
| QL95 | Kiểm tra animation khi thêm/xóa món | Thêm hoặc xóa món | 1. Thêm món mới<br>2. Hoặc xóa món | Animation mượt mà (fade in/out, slide) | Đỗ Đức Cảnh |
| QL96 | Kiểm tra empty state | Chưa có món nào | 1. Xem danh sách trống | Hiển thị illustration + text "Chưa có món ăn nào, hãy thêm món đầu tiên!" | Đỗ Đức Cảnh |
| QL97 | Kiểm tra hiển thị thumbnail ảnh món ăn | Món có ảnh | 1. Xem danh sách<br>2. Quan sát | Mỗi món hiển thị thumbnail ảnh (nếu có) | Đỗ Đức Cảnh |
| QL98 | Kiểm tra quick add từ gợi ý | N/A | 1. Có gợi ý "Thêm nhanh"<br>2. Tap vào món gợi ý | Thêm món ngay lập tức với thông tin mặc định | Đỗ Đức Cảnh |

## XVI. RESPONSIVE VÀ CROSS-PLATFORM

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| QL99 | Kiểm tra giao diện trên mobile | Dữ liệu đầy đủ | 1. Mở chức năng trên mobile<br>2. Thêm/sửa/xóa món | Giao diện responsive, list view tối ưu cho mobile | Đỗ Đức Cảnh |
| QL100 | Kiểm tra giao diện trên tablet | Dữ liệu đầy đủ | 1. Mở trên tablet<br>2. Quản lý món ăn | Tận dụng không gian, có thể hiển thị grid view | Đỗ Đức Cảnh |
| QL101 | Kiểm tra camera trên các platform | Chụp ảnh món ăn | 1. Chọn "Chụp ảnh"<br>2. Mở camera | Camera native mở đúng và chụp được ảnh | Đỗ Đức Cảnh |
| QL102 | Kiểm tra chọn ảnh từ thư viện | N/A | 1. Chọn "Chọn từ thư viện"<br>2. Pick ảnh | Gallery mở và chọn được ảnh | Đỗ Đức Cảnh |

## XVII. PERFORMANCE VÀ NETWORK

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| QL103 | Kiểm tra load danh sách với nhiều món ăn | 100 món trong 1 ngày | 1. Xem danh sách có 100 món | - Load nhanh < 2s<br>- Có pagination hoặc infinite scroll | Đỗ Đức Cảnh |
| QL104 | Kiểm tra thêm món khi mất mạng | Dữ liệu hợp lệ, offline | 1. Ngắt mạng<br>2. Thêm món ăn | - Lưu offline vào local storage<br>- Thông báo "Đã lưu offline, sẽ đồng bộ khi có mạng" | Đỗ Đức Cảnh |
| QL105 | Kiểm tra đồng bộ dữ liệu offline khi có mạng | Có món ăn offline | 1. Đã thêm món offline<br>2. Bật lại mạng | Tự động đồng bộ lên server, thông báo "Đã đồng bộ X món ăn" | Đỗ Đức Cảnh |
| QL106 | Kiểm tra upload ảnh với mạng chậm | Ảnh món ăn | 1. Throttle network về 3G<br>2. Upload ảnh | - Hiển thị progress bar upload<br>- Upload thành công sau khi chờ | Đỗ Đức Cảnh |
| QL107 | Kiểm tra compress ảnh trước khi upload | Ảnh 5MB | 1. Upload ảnh lớn<br>2. Quan sát | Ảnh được compress xuống ~500KB-1MB trước khi upload | Đỗ Đức Cảnh |
| QL108 | Kiểm tra cache ảnh đã tải | Xem lại món ăn | 1. Xem món có ảnh<br>2. Scroll ra khỏi view<br>3. Scroll lại | Ảnh load từ cache, không tải lại từ server | Đỗ Đức Cảnh |

## XVIII. API INTEGRATION

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| QL109 | Kiểm tra API GET food records | N/A | 1. Gọi GET /api/v2/food-record?date=2026-03-29 | - Status: 200 OK<br>- Response: array của food records | Đỗ Đức Cảnh |
| QL110 | Kiểm tra API POST thêm món ăn | Dữ liệu món ăn hợp lệ | 1. Gọi POST /api/v2/food-records với body hợp lệ | - Status: 201 Created<br>- Response: food record với id mới | Đỗ Đức Cảnh |
| QL111 | Kiểm tra API PUT cập nhật món ăn | Dữ liệu cập nhật | 1. Gọi PUT /api/v2/food-records/:id | - Status: 200 OK<br>- Response: food record đã cập nhật | Đỗ Đức Cảnh |
| QL112 | Kiểm tra API DELETE xóa món ăn | Record ID hợp lệ | 1. Gọi DELETE /api/v2/food-records/:id | - Status: 200 OK hoặc 204 No Content<br>- Record bị xóa | Đỗ Đức Cảnh |
| QL113 | Kiểm tra API trả về 400 khi thiếu field | Thiếu tên món ăn | 1. POST với body thiếu field bắt buộc | - Status: 400 Bad Request<br>- Error message rõ ràng | Đỗ Đức Cảnh |
| QL114 | Kiểm tra API trả về 404 khi record không tồn tại | ID: 999999 | 1. Gọi GET /api/v2/food-records/999999 | - Status: 404 Not Found<br>- Error: "Food record not found" | Đỗ Đức Cảnh |
| QL115 | Kiểm tra API pagination | Có 100 records | 1. Gọi GET /api/v2/food-record?page=1&limit=20 | Trả về 20 records đầu tiên + metadata (total, page) | Đỗ Đức Cảnh |

## XIX. BẢO MẬT VÀ AUTHORIZATION

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| QL116 | Kiểm tra chỉ user owner mới xem được món ăn của mình | User A có món ăn | 1. User B thử gọi API lấy món của User A | - Status: 403 Forbidden<br>- Không trả về dữ liệu | Đỗ Đức Cảnh |
| QL117 | Kiểm tra chỉ user owner mới sửa được món ăn | User A có món ăn | 1. User B thử sửa món của User A | - Status: 403 Forbidden<br>- Báo lỗi "Không có quyền" | Đỗ Đức Cảnh |
| QL118 | Kiểm tra chỉ user owner mới xóa được món ăn | User A có món ăn | 1. User B thử xóa món của User A | - Status: 403 Forbidden<br>- Món không bị xóa | Đỗ Đức Cảnh |
| QL119 | Kiểm tra SQL Injection trong tên món ăn | Tên: ' OR '1'='1 | 1. Nhập SQL injection<br>2. Thêm món | Hệ thống escape/sanitize, không bị tấn công | Đỗ Đức Cảnh |
| QL120 | Kiểm tra XSS trong tên món ăn | Tên: <script>alert('xss')</script> | 1. Nhập script vào tên<br>2. Lưu và xem lại | Script được escape, không thực thi | Đỗ Đức Cảnh |
| QL121 | Kiểm tra validate token khi gọi API | Token không hợp lệ | 1. Gọi API với token sai/hết hạn | - Status: 401 Unauthorized<br>- Yêu cầu đăng nhập lại | Đỗ Đức Cảnh |

## XX. EDGE CASES VÀ BOUNDARY TESTING

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| QL122 | Kiểm tra thêm món ăn cùng tên nhiều lần | Tên: Cơm gà | 1. Thêm "Cơm gà" 3 lần trong ngày | Cho phép thêm, mỗi record độc lập | Đỗ Đức Cảnh |
| QL123 | Kiểm tra copy món ăn từ ngày khác | Món từ hôm qua | 1. Xem món hôm qua<br>2. Chọn "Copy sang hôm nay" | Món được duplicate sang ngày hiện tại | Đỗ Đức Cảnh |
| QL124 | Kiểm tra thêm món ăn lúc nửa đêm (00:00) | Thời gian: 00:00 | 1. Thêm món lúc 00:00<br>2. Kiểm tra ngày | Món được tính vào ngày mới (sau 00:00) | Đỗ Đức Cảnh |
| QL125 | Kiểm tra khoảng trắng trong tên món ăn | Tên: "  Cơm gà  " | 1. Nhập tên có space đầu/cuối<br>2. Lưu | Tự động trim, lưu "Cơm gà" | Đỗ Đức Cảnh |
| QL126 | Kiểm tra tên món ăn toàn khoảng trắng | Tên: "     " | 1. Nhập toàn space<br>2. Lưu | Hiển thị lỗi "Tên món ăn không hợp lệ" | Đỗ Đức Cảnh |
| QL127 | Kiểm tra concurrent edit | 2 thiết bị cùng sửa 1 món | 1. Thiết bị A mở form sửa<br>2. Thiết bị B cũng sửa cùng món<br>3. Cả 2 lưu | - Last write wins HOẶC<br>- Conflict detection và thông báo | Đỗ Đức Cảnh |

## XXI. TÍCH HỢP VỚI CÁC CHỨC NĂNG KHÁC

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| QL128 | Kiểm tra calo nạp vào ảnh hưởng đến tổng quan sức khỏe | Thêm 500 cal | 1. Thêm món 500 cal<br>2. Quay lại trang tổng quan | Tổng calo trong trang "Theo dõi sức khỏe" được cập nhật | Đỗ Đức Cảnh |
| QL129 | Kiểm tra dữ liệu calo dùng trong lập kế hoạch ăn | Đã ghi nhận nhiều ngày | 1. Vào "Quản lý lịch ăn"<br>2. Xem gợi ý | AI gợi ý dựa trên lịch sử ăn uống | Đỗ Đức Cảnh |
| QL130 | Kiểm tra báo cáo dinh dưỡng | Có dữ liệu 1 tháng | 1. Vào "Báo cáo"<br>2. Xem thống kê dinh dưỡng | Hiển thị insights: calo trung bình, xu hướng, món ăn nhiều nhất | Đỗ Đức Cảnh |
| QL131 | Kiểm tra thông báo nhắc nhở ghi nhận bữa ăn | Chưa ghi bữa trưa | 1. Đến 12:30 PM chưa ghi bữa trưa | Gửi notification "Bạn chưa ghi nhận bữa trưa hôm nay" | Đỗ Đức Cảnh |

## XXII. IMPORT/EXPORT DỮ LIỆU

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| QL132 | Kiểm tra export dữ liệu ra CSV | Có dữ liệu 1 tháng | 1. Chọn "Export"<br>2. Chọn format CSV<br>3. Download | File CSV chứa: date, food_name, calories, quantity | Đỗ Đức Cảnh |
| QL133 | Kiểm tra export dữ liệu ra PDF | Có dữ liệu | 1. Chọn "Export PDF" | File PDF có format đẹp với biểu đồ và bảng | Đỗ Đức Cảnh |
| QL134 | Kiểm tra import dữ liệu từ CSV | File CSV hợp lệ | 1. Chọn "Import"<br>2. Upload file CSV<br>3. Confirm | Dữ liệu được import và hiển thị trong danh sách | Đỗ Đức Cảnh |
| QL135 | Kiểm tra import file CSV sai format | File CSV sai cấu trúc | 1. Upload file CSV sai | Hiển thị lỗi "File không đúng định dạng" và danh sách lỗi cụ thể | Đỗ Đức Cảnh |

## XXIII. SEARCH VÀ FILTER

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| QL136 | Kiểm tra tìm kiếm món ăn trong ngày | Keyword: "gà" | 1. Nhập "gà" vào search box<br>2. Quan sát | Hiển thị tất cả món có "gà" trong tên | Đỗ Đức Cảnh |
| QL137 | Kiểm tra filter theo bữa ăn | Filter: Bữa sáng | 1. Chọn filter "Bữa sáng" | Chỉ hiển thị món của bữa sáng | Đỗ Đức Cảnh |
| QL138 | Kiểm tra filter theo khoảng calo | Filter: 200-500 cal | 1. Chọn "Lọc theo calo"<br>2. Nhập 200-500 | Hiển thị món có calo trong khoảng 200-500 | Đỗ Đức Cảnh |
| QL139 | Kiểm tra filter kết hợp | Bữa sáng + calo 200-500 | 1. Chọn bữa sáng<br>2. Chọn khoảng calo<br>3. Apply | Hiển thị món thỏa mãn CẢ 2 điều kiện | Đỗ Đức Cảnh |
| QL140 | Kiểm tra clear filter | Đang có filter | 1. Apply filter<br>2. Nhấn "Xóa bộ lọc" | Hiển thị lại tất cả món ăn | Đỗ Đức Cảnh |

## XXIV. NOTIFICATIONS VÀ REMINDERS

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| QL141 | Kiểm tra thông báo khi gần đạt mục tiêu | Đã ăn: 1900/2000 cal | 1. Thêm món làm đạt 1900 cal | Thông báo "Bạn sắp đạt mục tiêu calo hôm nay!" | Đỗ Đức Cảnh |
| QL142 | Kiểm tra cảnh báo ăn quá ít | 6 PM mà mới 800/2000 cal | 1. Đến 6 PM<br>2. Mới ăn 800 cal | Thông báo "Bạn đang ăn quá ít so với mục tiêu" | Đỗ Đức Cảnh |
| QL143 | Kiểm tra reminder ghi nhận bữa ăn | Bật reminder | 1. Enable reminder<br>2. Set thời gian 12:00, 18:00 | Nhận notification nhắc ghi nhận bữa ăn đúng giờ | Đỗ Đức Cảnh |

## XXV. ACCESSIBILITY

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| QL144 | Kiểm tra screen reader | N/A | 1. Bật screen reader<br>2. Navigate form thêm món | Labels, buttons được đọc rõ ràng | Đỗ Đức Cảnh |
| QL145 | Kiểm tra keyboard navigation | N/A | 1. Chỉ dùng keyboard<br>2. Thêm/sửa/xóa món | Hoàn tất toàn bộ flow chỉ bằng keyboard | Đỗ Đức Cảnh |
| QL146 | Kiểm tra contrast và màu sắc | N/A | 1. Kiểm tra tỷ lệ tương phản | Đạt chuẩn WCAG AA (4.5:1) | Đỗ Đức Cảnh |
| QL147 | Kiểm tra voice input cho tên món ăn | Voice: "Cơm gà" | 1. Nhấn icon microphone<br>2. Nói "Cơm gà" | Tên món được nhập tự động từ giọng nói | Đỗ Đức Cảnh |

## XXVI. BARCODE VÀ QR CODE SCANNING

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| QL148 | Kiểm tra scan barcode thực phẩm đóng gói | Barcode sản phẩm | 1. Chọn "Quét mã vạch"<br>2. Scan barcode<br>3. Xác nhận | Tự động điền thông tin: tên, calo từ database thực phẩm | Đỗ Đức Cảnh |
| QL149 | Kiểm tra scan barcode không có trong database | Barcode mới | 1. Scan barcode<br>2. Không tìm thấy | Thông báo "Không tìm thấy, vui lòng nhập thủ công" | Đỗ Đức Cảnh |
| QL150 | Kiểm tra camera permission cho scan | N/A | 1. Chọn "Quét mã vạch"<br>2. Lần đầu tiên | Yêu cầu cấp quyền camera | Đỗ Đức Cảnh |

## XXVII. BATCH OPERATIONS

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| QL151 | Kiểm tra chọn nhiều món để xóa | Có 5 món | 1. Enable "Chế độ chọn"<br>2. Chọn 3 món<br>3. Nhấn "Xóa" | Xác nhận và xóa cả 3 món cùng lúc | Đỗ Đức Cảnh |
| QL152 | Kiểm tra copy nhiều món sang ngày khác | Chọn nhiều món | 1. Chọn 3 món<br>2. Chọn "Copy sang..."<br>3. Chọn ngày | 3 món được copy sang ngày đã chọn | Đỗ Đức Cảnh |
| QL153 | Kiểm tra chọn tất cả | Có 10 món | 1. Nhấn "Chọn tất cả"<br>2. Thực hiện action | Tất cả món được chọn | Đỗ Đức Cảnh |

## XXVIII. FAVORITE VÀ QUICK ADD

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| QL154 | Kiểm tra đánh dấu món ăn yêu thích | Món: Cơm gà | 1. Chọn icon "Yêu thích" trên món<br>2. Quan sát | Món được đánh dấu sao, lưu vào danh sách yêu thích | Đỗ Đức Cảnh |
| QL155 | Kiểm tra quick add từ danh sách yêu thích | Có món yêu thích | 1. Mở "Món yêu thích"<br>2. Nhấn "Thêm nhanh" | Món được thêm ngay vào ngày hôm nay | Đỗ Đức Cảnh |
| QL156 | Kiểm tra tạo template bữa ăn | Combo: Cơm + gà + rau | 1. Chọn nhiều món<br>2. Chọn "Lưu làm template"<br>3. Đặt tên template | Template được lưu để sử dụng lại | Đỗ Đức Cảnh |
| QL157 | Kiểm tra thêm từ template | Có template "Bữa sáng thường ngày" | 1. Chọn "Thêm từ template"<br>2. Chọn template | Tất cả món trong template được thêm cùng lúc | Đỗ Đức Cảnh |

## XXIX. ERROR HANDLING

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| QL158 | Kiểm tra lỗi server 500 khi thêm món | Dữ liệu hợp lệ | 1. Thêm món, server lỗi<br>2. Quan sát | Hiển thị "Đã có lỗi xảy ra, vui lòng thử lại" với nút retry | Đỗ Đức Cảnh |
| QL159 | Kiểm tra lỗi database constraint | Dữ liệu vi phạm constraint | 1. Thêm dữ liệu không hợp lệ<br>2. Backend reject | Hiển thị error message rõ ràng, không crash app | Đỗ Đức Cảnh |
| QL160 | Kiểm tra retry khi thất bại | Thêm món bị lỗi | 1. Thêm món, lỗi mạng<br>2. Nhấn "Thử lại" | Gửi lại request và thành công | Đỗ Đức Cảnh |
| QL161 | Kiểm tra queue khi thêm nhiều món offline | Offline, thêm 5 món | 1. Ngắt mạng<br>2. Thêm 5 món<br>3. Bật mạng | Cả 5 món được đồng bộ lên server theo thứ tự | Đỗ Đức Cảnh |

## XXX. ANALYTICS VÀ INSIGHTS

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| QL162 | Kiểm tra tính calo trung bình 7 ngày | Có dữ liệu 7 ngày | 1. Xem thống kê | Hiển thị "Calo trung bình: 1850 cal/ngày" | Đỗ Đức Cảnh |
| QL163 | Kiểm tra streak (chuỗi ngày ghi nhận liên tục) | Ghi nhận 10 ngày liên tiếp | 1. Xem trang tổng quan | Hiển thị "Streak: 10 ngày 🔥" | Đỗ Đức Cảnh |
| QL164 | Kiểm tra xu hướng calo | Dữ liệu 30 ngày | 1. Xem "Xu hướng" | Hiển thị trend: "Tăng trung bình 50 cal/ngày" hoặc "Giảm..." | Đỗ Đức Cảnh |
| QL165 | Kiểm tra so sánh với tuần trước | Dữ liệu 2 tuần | 1. Xem thống kê tuần này | Hiển thị "So với tuần trước: +5% calo" | Đỗ Đức Cảnh |

## XXXI. MEAL COMPOSITION (NÂNG CAO)

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| QL166 | Kiểm tra thêm thông tin dinh dưỡng chi tiết | Protein: 30g<br>Carb: 50g<br>Fat: 20g | 1. Thêm món với macro details<br>2. Lưu | Lưu thành công và hiển thị breakdown dinh dưỡng | Đỗ Đức Cảnh |
| QL167 | Kiểm tra tổng hợp dinh dưỡng trong ngày | Nhiều món có macro | 1. Xem tổng quan | Hiển thị:<br>- Tổng protein: Xg<br>- Tổng carb: Yg<br>- Tổng fat: Zg | Đỗ Đức Cảnh |
| QL168 | Kiểm tra gợi ý cân bằng dinh dưỡng | Đã ăn nhiều carb, ít protein | 1. Xem gợi ý AI | "Bạn nên ăn thêm món giàu protein" | Đỗ Đức Cảnh |

## XXXII. SOCIAL VÀ SHARING

| Mã test case | Mục đích kiểm thử | Dữ liệu đầu vào | Các bước kiểm thử | Kết quả mong muốn | Người thực hiện |
|--------------|-------------------|------------------|-------------------|-------------------|-----------------|
| QL169 | Kiểm tra share tiến độ lên mạng xã hội | Đạt mục tiêu | 1. Nhấn "Chia sẻ"<br>2. Chọn Facebook/Instagram | Tạo post với ảnh achievement: "Đã đạt mục tiêu calo hôm nay!" | Đỗ Đức Cảnh |
| QL170 | Kiểm tra share món ăn | Món ăn có ảnh đẹp | 1. Chọn món<br>2. Nhấn "Chia sẻ món này" | Share ảnh + thông tin món ăn lên social media | Đỗ Đức Cảnh |

---

## TỔNG KẾT

**Tổng số test cases: 170**

### Phân loại theo nhóm:
- **Nhóm I - Truy cập chức năng**: 5 test cases (QL1-QL5)
- **Nhóm II - Xem danh sách (READ)**: 7 test cases (QL6-QL12)
- **Nhóm III - Thêm món ăn - Validation cơ bản**: 9 test cases (QL13-QL21)
- **Nhóm IV - Thêm món ăn - Validation calo**: 7 test cases (QL22-QL28)
- **Nhóm V - Thêm món ăn - Validation số lượng**: 6 test cases (QL29-QL34)
- **Nhóm VI - Chọn bữa ăn và thời gian**: 5 test cases (QL35-QL39)
- **Nhóm VII - Tìm kiếm và gợi ý**: 5 test cases (QL40-QL44)
- **Nhóm VIII - Thêm ảnh và ghi chú**: 5 test cases (QL45-QL49)
- **Nhóm IX - Sửa món ăn (UPDATE)**: 9 test cases (QL50-QL58)
- **Nhóm X - Xóa món ăn (DELETE)**: 6 test cases (QL59-QL64)
- **Nhóm XI - Phân tích ảnh AI**: 9 test cases (QL65-QL73)
- **Nhóm XII - Tổng hợp calo**: 8 test cases (QL74-QL81)
- **Nhóm XIII - Phân chia theo bữa**: 3 test cases (QL82-QL84)
- **Nhóm XIV - Lịch sử và thống kê**: 6 test cases (QL85-QL90)
- **Nhóm XV - UI/UX**: 8 test cases (QL91-QL98)
- **Nhóm XVI - Responsive**: 4 test cases (QL99-QL102)
- **Nhóm XVII - Performance**: 6 test cases (QL103-QL108)
- **Nhóm XVIII - API Integration**: 7 test cases (QL109-QL115)
- **Nhóm XIX - Bảo mật**: 6 test cases (QL116-QL121)
- **Nhóm XX - Edge cases**: 6 test cases (QL122-QL127)
- **Nhóm XXI - Tích hợp chức năng**: 4 test cases (QL128-QL131)
- **Nhóm XXII - Import/Export**: 4 test cases (QL132-QL135)
- **Nhóm XXIII - Search và Filter**: 5 test cases (QL136-QL140)
- **Nhóm XXIV - Notifications**: 3 test cases (QL141-QL143)
- **Nhóm XXV - Accessibility**: 4 test cases (QL144-QL147)
- **Nhóm XXVI - Barcode scanning**: 3 test cases (QL148-QL150)
- **Nhóm XXVII - Batch operations**: 3 test cases (QL151-QL153)
- **Nhóm XXVIII - Favorite và Quick add**: 4 test cases (QL154-QL157)
- **Nhóm XXIX - Error handling**: 4 test cases (QL158-QL161)
- **Nhóm XXX - Analytics**: 4 test cases (QL162-QL165)
- **Nhóm XXXI - Meal composition**: 3 test cases (QL166-QL168)
- **Nhóm XXXII - Social sharing**: 2 test cases (QL169-QL170)

### Mức độ ưu tiên thực hiện:
1. **Critical (P0)**: QL1, QL6, QL7, QL13-QL17, QL22, QL24, QL29, QL50, QL54, QL59, QL65, QL71, QL74-QL78, QL109-QL112
2. **High (P1)**: QL2-QL5, QL8-QL12, QL18-QL21, QL23, QL25-QL28, QL30-QL34, QL35-QL39, QL51-QL58, QL60-QL64, QL66-QL70, QL79-QL81, QL116-QL121
3. **Medium (P2)**: QL40-QL49, QL72-QL73, QL82-QL98, QL103-QL108, QL113-QL115, QL122-QL143, QL158-QL161
4. **Low (P3)**: QL99-QL102, QL144-QL170

### Kiến trúc API:
- **GET** `/api/v2/food-record?date=YYYY-MM-DD` - Lấy danh sách món ăn theo ngày
- **POST** `/api/v2/food-records` - Thêm món ăn mới
- **PUT** `/api/v2/food-records/:id` - Cập nhật món ăn
- **DELETE** `/api/v2/food-records/:id` - Xóa món ăn
- **POST** `/api/v2/food-records/analyze-image` - Phân tích ảnh món ăn

### Flow chính:
1. **FoodDiary.tsx** → CalorieController.getFoodRecords() → CalorieService → FoodRecord → CSDL
2. **AddFood.tsx** → CalorieController.addFoodRecords() → CalorieService → FoodRecord.save()
3. **EditFood.tsx** → CalorieController.updateFoodRecords() → CalorieService → FoodRecord.update()
4. **DeleteFood** → CalorieController.deleteFoodRecords() → CalorieService → FoodRecord.delete()

### Tính năng chính:
- ✅ CRUD hoàn chỉnh (Create, Read, Update, Delete)
- ✅ Phân tích ảnh tự động bằng AI
- ✅ Tổng hợp calo theo ngày và theo bữa
- ✅ Lịch sử và thống kê
- ✅ Tìm kiếm, filter, sort
- ✅ Offline support và sync
- ✅ Favorite và quick add
- ✅ Import/Export
- ✅ Barcode scanning
- ✅ Social sharing

### Ghi chú:
- Test cases bao phủ toàn bộ UC-05.1, UC-05.2, UC-05.3
- Tập trung vào AI detection (tính năng đặc biệt)
- Validation đầy đủ cho mọi trường
- Performance và offline capabilities
- Security và data integrity
