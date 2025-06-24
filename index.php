<?php
session_start();
$conn = mysqli_connect('localhost', 'root', '', 'qlsv');
mysqli_set_charset($conn, "utf8");
?>
<!DOCTYPE html>
<html>

<head>
  <title>Quản lý sinh viên PTIT</title>
  <meta charset="utf-8">
  <link rel="stylesheet" href="style.css" />
</head>

<body>
  <!-- 'start thực hiện kiểm tra dữ liệu người dùng nhập ở form đăng nhập' -->
  <?php
  if (isset($_POST["login"])) {
    $tk = $_POST["username"];
    $mk = $_POST["passlg"];
    $rows = mysqli_query($conn, "
select * from users where username = '$tk' and pass = '$mk'
");
    $count = mysqli_num_rows($rows);
    if ($count == 1) {
      $_SESSION["loged"] = true;
      header("location:index.php?page=admin");
      $_SESSION['user'] = $_POST["username"];
      setcookie("success", "!", time() + 1, "/", "", 0);
    } else {
      header("location:index.php?page=login");
      setcookie("error", "!", time() + 1, "/", "", 0);
    }
  }
  ?>
  <!-- 'end thực hiện kiểm tra dữ liệu người dùng nhập ở form đăng nhập' -->

  <?php
  if (isset($_COOKIE["error"])) {
    $message = "Sai tài khoản hoặc mật khẩu! Vui lòng đăng nhập lại.";
    echo "<script type='text/javascript'>
alert('$message');
</script>";
  ?>
  <?php } ?>

  <?php
  if (isset($_COOKIE["success"])) {
    $message = "Đăng nhập thành công!";
    echo "<script type='text/javascript'>
alert('$message');
</script>";
    echo "<script language='javascript'>
document.getElementById('panel').style.display = 'none';
</script>";
  ?>
  <?php } ?>

  <?php
$page = isset($_GET["page"]) ? $_GET["page"] : "";
if ($page == "admin")
  include "admin.php";
elseif ($page == "login")
  include "login.php";
else
  include "login.php"; // Hiển thị trang đăng nhập mặc định
?>
</body>

</html>