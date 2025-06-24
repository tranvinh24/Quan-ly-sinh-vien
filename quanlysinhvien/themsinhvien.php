<?php
    $conn = mysqli_connect("localhost", "root", "", "qlsv") or die("Connection failed !");
    mysqli_set_charset($conn, 'utf8');

    $result = mysqli_query($conn,
     "select *from sinhvien join nganh on sinhvien.MaNganh=nganh.MaNganh");
    $row = mysqli_fetch_assoc($result);
    $sqlNganh ="select * from Nganh ";
    $qrNganh=mysqli_query($conn,$sqlNganh);
    $num = mysqli_affected_rows($conn);
    $infor= mysqli_fetch_all($qrNganh, MYSQLI_ASSOC);
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../styleAdmin.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
    <script src="https://code.jquery.com/jquery-3.5.0.js"></script>
</head>

<body>
    <?php include("../header.php"); ?>
    <?php include("../nav.php"); ?>
    <section>
        <div class="section-contain">
            <?php include("../menu.php"); ?>
            <div id="showFunction">
                <form id="addStudentForm">
                    <div class="table-wrapper">
                        <div class="head_title">
                            <h1>Thêm sinh viên</h1>
                            <div class="ttsv" style="display:flex;">
                                <div>
                                    <table class="fl-table tt">
                                        <tr>
                                            <th>Mã sinh viên</th>
                                            <td>
                                                <input type="text" name="MaSV" class="edit_diem" required>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>Họ và tên</th>
                                            <td>
                                                <input type="text" name="TenSV" class="edit_diem" required>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>Ngày sinh</th>
                                            <td>
                                                <input type="date" name="NgaySinh" class="edit_diem" required>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>Quê quán</th>
                                            <td>
                                                <input type="text" name="QueQuan" class="edit_diem" required>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>Giới tính</th>
                                            <td>
                                                <select name="GioiTinh" class="edit_diem" required>
                                                    <option value="">Chọn giới tính</option>
                                                    <option value="Nam">Nam</option>
                                                    <option value="Nữ">Nữ</option>
                                                </select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>Dân tộc</th>
                                            <td>
                                                <input type="text" name="DanToc" class="edit_diem" required>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>Tôn giáo</th>
                                            <td>
                                                <input type="text" name="TonGiao" class="edit_diem" required>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                                <div>
                                    <table class="fl-table tt">
                                        <tr>
                                            <th>Số CMND/CCCD</th>
                                            <td>
                                                <input type="text" name="SoCMT" class="edit_diem" required>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>Nơi cấp</th>
                                            <td>
                                                <input type="text" name="NoiCapCMT" class="edit_diem" required>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>SĐT</th>
                                            <td>
                                                <input type="text" name="SDT" class="edit_diem" required>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>Email</th>
                                            <td>
                                                <input type="email" name="Email" class="edit_diem" required>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>Đối tượng miễn giảm</th>
                                            <td>
                                                <input type="text" name="DoiTuongMG" class="edit_diem" required>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>Ngành</th>
                                            <td>
                                                <select name="MaNganh" class="edit_diem" required>
                                                    <option value="">Chọn ngành</option>
                                                    <?php foreach($infor as $nganh): ?>
                                                    <option value="<?php echo $nganh['MaNganh']; ?>">
                                                        <?php echo $nganh['TenNganh']; ?>
                                                    </option>
                                                    <?php endforeach; ?>
                                                </select>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                            <button type="submit" class="btnSave">Xác nhận</button><br><br>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </section>
    <?php include("../footer.php"); ?>

    <script>
    $(document).ready(function() {
        $('#addStudentForm').on('submit', function(e) {
            e.preventDefault();
            
            // Validate form
            var isValid = true;
            $(this).find('input[required], select[required]').each(function() {
                if (!$(this).val()) {
                    isValid = false;
                    $(this).addClass('error');
                } else {
                    $(this).removeClass('error');
                }
            });

            if (!isValid) {
                alert('Vui lòng điền đầy đủ thông tin!');
                return;
            }

            // Validate email format
            var email = $('input[name="Email"]').val();
            var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            if (!emailRegex.test(email)) {
                alert('Email không đúng định dạng!');
                return;
            }

            // Collect form data
            var formData = $(this).serialize();
            formData += '&action=add';

            // Send AJAX request
            $.ajax({
                url: 'ajax_handler.php',
                type: 'POST',
                data: formData,
                dataType: 'json',
                success: function(response) {
                    if (response.success) {
                        alert(response.message);
                        window.location.href = 'showsinhvien.php';
                    } else {
                        alert(response.message);
                        if (response.errors) {
                            // Hiển thị lỗi cụ thể cho từng trường
                            for (var field in response.errors) {
                                $('input[name="' + field + '"], select[name="' + field + '"]')
                                    .addClass('error')
                                    .after('<span class="error-message">' + response.errors[field] + '</span>');
                            }
                        }
                    }
                },
                error: function() {
                    alert('Có lỗi xảy ra khi xử lý yêu cầu!');
                }
            });
        });

        // Xóa thông báo lỗi khi người dùng bắt đầu nhập
        $('input, select').on('input change', function() {
            $(this).removeClass('error');
            $(this).next('.error-message').remove();
        });
    });
    </script>

    <style>
    .error {
        border: 1px solid red !important;
    }
    .error-message {
        color: red;
        font-size: 12px;
        margin-left: 5px;
    }
    </style>
</body>
</html>