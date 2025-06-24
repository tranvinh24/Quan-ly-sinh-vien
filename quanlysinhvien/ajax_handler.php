<?php
header('Content-Type: application/json');
$conn = mysqli_connect("localhost", "root", "", "qlsv") or die("Connection failed !");
mysqli_set_charset($conn, 'utf8');

$response = array('success' => false, 'message' => '');

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $action = $_POST['action'] ?? '';
    
    if ($action === 'add') {
        // Xử lý thêm sinh viên
        $data = array(
            'MaSV' => $_POST['MaSV'] ?? '',
            'TenSV' => $_POST['TenSV'] ?? '',
            'MaNganh' => $_POST['MaNganh'] ?? '',
            'NgaySinh' => $_POST['NgaySinh'] ?? '',
            'QueQuan' => $_POST['QueQuan'] ?? '',
            'GioiTinh' => $_POST['GioiTinh'] ?? '',
            'DanToc' => $_POST['DanToc'] ?? '',
            'TonGiao' => $_POST['TonGiao'] ?? '',
            'SoCMT' => $_POST['SoCMT'] ?? '',
            'NoiCapCMT' => $_POST['NoiCapCMT'] ?? '',
            'SDT' => $_POST['SDT'] ?? '',
            'Email' => $_POST['Email'] ?? '',
            'DoiTuongMG' => $_POST['DoiTuongMG'] ?? ''
        );

        // Validate dữ liệu
        $errors = array();
        foreach ($data as $key => $value) {
            if ($key === 'DoiTuongMG') {
                // Cho phép giá trị 0 cho DoiTuongMG
                if ($value === '') {
                    $errors[$key] = "Vui lòng nhập thông tin $key";
                }
            } else {
                if (empty($value)) {
                    $errors[$key] = "Vui lòng nhập thông tin $key";
                }
            }
        }

        if (empty($errors)) {
            $sql = "INSERT INTO sinhvien(MaSV,TenSV, GioiTinh,NgaySinh,QueQuan, DanToc, TonGiao, SoCMT, NoiCapCMT, SDT, Email, DoiTuongMG,MaLop,MaNganh)
                    VALUES (?,?,?,?,?,?,?,?,?,?,?,?,null,?)";
            
            $stmt = mysqli_prepare($conn, $sql);
            mysqli_stmt_bind_param($stmt, "sssssssssssss", 
                $data['MaSV'], $data['TenSV'], $data['GioiTinh'], $data['NgaySinh'],
                $data['QueQuan'], $data['DanToc'], $data['TonGiao'], $data['SoCMT'],
                $data['NoiCapCMT'], $data['SDT'], $data['Email'], $data['DoiTuongMG'],
                $data['MaNganh']
            );

            if (mysqli_stmt_execute($stmt)) {
                $response['success'] = true;
                $response['message'] = 'Thêm sinh viên thành công!';
            } else {
                $response['message'] = 'Lỗi khi thêm sinh viên: ' . mysqli_error($conn);
            }
            mysqli_stmt_close($stmt);
        } else {
            $response['message'] = 'Vui lòng điền đầy đủ thông tin!';
            $response['errors'] = $errors;
        }
    }
    elseif ($action === 'edit') {
        // Xử lý sửa sinh viên
        $MaSV = $_POST['MaSV'] ?? '';
        $data = array(
            'NgaySinh' => $_POST['NgaySinh'] ?? '',
            'QueQuan' => $_POST['QueQuan'] ?? '',
            'GioiTinh' => $_POST['GioiTinh'] ?? '',
            'DanToc' => $_POST['DanToc'] ?? '',
            'TonGiao' => $_POST['TonGiao'] ?? '',
            'SoCMT' => $_POST['SoCMT'] ?? '',
            'NoiCapCMT' => $_POST['NoiCapCMT'] ?? '',
            'SDT' => $_POST['SDT'] ?? '',
            'Email' => $_POST['Email'] ?? '',
            'DoiTuongMG' => $_POST['DoiTuongMG'] ?? ''
        );

        // Validate dữ liệu
        $errors = array();
        foreach ($data as $key => $value) {
            if ($key === 'DoiTuongMG') {
                // Cho phép giá trị 0 cho DoiTuongMG
                if ($value === '') {
                    $errors[$key] = "Vui lòng nhập thông tin $key";
                }
            } else {
                if (empty($value)) {
                    $errors[$key] = "Vui lòng nhập thông tin $key";
                }
            }
        }

        if (empty($errors)) {
            $sql = "UPDATE sinhvien SET 
                    NgaySinh=?, QueQuan=?, GioiTinh=?, DanToc=?, 
                    TonGiao=?, SoCMT=?, NoiCapCMT=?, SDT=?, 
                    Email=?, DoiTuongMG=?
                    WHERE MaSV=?";
            
            $stmt = mysqli_prepare($conn, $sql);
            mysqli_stmt_bind_param($stmt, "sssssssssss", 
                $data['NgaySinh'], $data['QueQuan'], $data['GioiTinh'],
                $data['DanToc'], $data['TonGiao'], $data['SoCMT'],
                $data['NoiCapCMT'], $data['SDT'], $data['Email'],
                $data['DoiTuongMG'], $MaSV
            );

            if (mysqli_stmt_execute($stmt)) {
                $response['success'] = true;
                $response['message'] = 'Cập nhật thông tin sinh viên thành công!';
            } else {
                $response['message'] = 'Lỗi khi cập nhật thông tin: ' . mysqli_error($conn);
            }
            mysqli_stmt_close($stmt);
        } else {
            $response['message'] = 'Vui lòng điền đầy đủ thông tin!';
            $response['errors'] = $errors;
        }
    }
}

echo json_encode($response);
?> 