<?php
	$conn = mysqli_connect('localhost','root','','qlsv');
	mysqli_set_charset($conn,"utf8");
    //session_start();
    $user = $_SESSION['user'];
    $sql = "SELECT * FROM users WHERE username = '$user'";
    $query = mysqli_query($conn,$sql);
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible"
          content="IE=edge">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet"
          href="styleAdmin.css">
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
    <title>Quản lý sinh viên PTIT</title>
    <script src="https://code.jquery.com/jquery-3.5.0.js"></script>
</head>

<body>
    <header>
        <div class="title">
            <div class="Group1">
                <div class="logo">
                    <img src="./imgs/logo.png"
                         alt="">
                </div>
                <div class="img-content">
                    <img src="./imgs/content2.png"
                         alt="">
                </div>
            </div>
        </div>
        <div class="title2">
            <h2>Hệ thống quản lý sinh viên</h2>
        </div>
    </header>
    <nav>
        <div class="group-user">
            <p><?php echo $user ?></p>
            <ul class="group-user-child">
                <li><a class="logout"
                       href="./login.php">Đăng xuất</a></li>
            </ul>
        </div>
    </nav>
    <section>
        <div class="section-contain">
            <div id="menu">
                <ul>
                    <li>
                        <a href="./index.php?page=admin"><i class="fa-solid fa-house"></i>Trang chủ</a>
                    </li>
                    <li>
                        <a href="./quanlysinhvien/showsinhvien.php"><i class="fa-solid fa-graduation-cap"></i>Sinh
                            viên</a>
                    </li>
                    <li class="more-func">
                        <a href="./quanlylop/dslop.php">
                            <i class="fa-solid fa-building-columns"></i> Lớp
                        </a>
                        <ul class="more-func-child nn">
                            <a href=""></a>
                            <li><a href="./quanlylop/dslop.php">Danh sách lớp</a></li>
                            <li><a href="./quanlylop/xetlop.php">Nhập học</a></li>
                        </ul>
                    </li>

                    <li class="more-func">
                        <a href="./danhgiasv/dskhenthuong.php">
                            <i class="fa-solid fa-user-graduate"></i>
                            Đánh giá sinh viên
                            <div class="func-icon-right">
                                <i class="fa-solid fa-angle-right"></i>
                            </div>
                            <div class="func-icon-down">
                                <i class="fa-solid fa-angle-down"></i>
                            </div>
                            <ul class="more-func-child">
                                <a href=""></a>
                                <li><a href="./danhgiasv/dskhenthuong.php">Danh sách khen thưởng</a></li>
                                <li><a href="./danhgiasv/dscanhcao.php">Danh sách cảnh cáo</a></li>
                                <li><a href="./danhgiasv/dsbuocthoihoc.php">Danh sách buộc thôi học</a></li>
                            </ul>
                        </a>
                    </li>
                    <li class="more-func">
                        <a href="">
                            <i class="fa-solid fa-file-circle-plus"></i>
                            Chức năng khác
                            <div class="func-icon-right">
                                <i class="fa-solid fa-angle-right"></i>
                            </div>
                            <div class="func-icon-down">
                                <i class="fa-solid fa-angle-down"></i>
                            </div>
                            <ul class="more-func-child">
                                <a href=""></a>
                                <li><a href="./doituong/doituonguutien.php">Đối tượng ưu tiên</a></li>
                                <li><a href="./capthe/quanlythe.php">Quản lý thẻ sinh viên</a></li>
                            </ul>
                        </a>
                    </li>
                </ul>
            </div>
            <div id="showFunction">
                <h1>Dash Board</h1>
                <div class="DB-content">
                    <div class="grid">
                        <div class="grid-4"
                             style="background-color: rgb(223, 181, 105);">
                            <div class="left">
                                <div>
                                    <p>1</p>
                                    <h3>Xếp lớp</h3>
                                </div>
                                <i class="fa-solid fa-house"></i>
                            </div>
                            <div class="see-more">
                                <a href="./quanlylop/xetlop.php">Xem thêm <i
                                       class="fa-solid fa-circle-arrow-right"></i></a>
                            </div>
                        </div>
                        <div class="grid-4"
                             style="background-color: rgb(113, 173, 246);">
                            <div class="left">
                                <div>
                                    <p>2</p>
                                    <h3>Lớp</h3>
                                </div>
                                <i class="fa-solid fa-building-columns"></i>
                            </div>
                            <div class="see-more">
                                <a href="./quanlylop/dslop.php">Xem thêm <i
                                       class="fa-solid fa-circle-arrow-right"></i></a>
                            </div>
                        </div>
                        <div class="grid-4"
                             style="background-color: rgb(94, 236, 94);">
                            <div class="left">
                                <div>
                                    <p>3</p>
                                    <h3>Sinh Viên</h3>
                                </div>
                                <i class="fa-solid fa-graduation-cap"></i>
                            </div>
                            <div class="see-more">
                                <a href="./quanlysinhvien/showsinhvien.php">Xem thêm <i
                                       class="fa-solid fa-circle-arrow-right"></i></a>
                            </div>
                        </div>
                        <div class="grid-4"
                             style="background-color: #fc354f;">
                            <div class="left">
                                <div>
                                    <p>4</p>
                                    <h3>Đối tượng ưu tiên</h3>
                                </div>
                                <i class="fa-solid fa-user-check"></i>
                            </div>
                            <div class="see-more">
                                <a href="./doituong/doituonguutien.php">Xem thêm <i
                                       class="fa-solid fa-circle-arrow-right"></i></a>
                            </div>
                        </div>

                    </div>
                    <div class="grid">
                        <div class="grid-4"
                             style="background-color: rgb(78, 78, 78);">
                            <div class="left">
                                <div>
                                    <p>5</p>
                                    <h3>Danh sách khen thưởng</h3>
                                </div>
                                <i class="fa-solid fa-award"></i>
                            </div>
                            <div class="see-more">
                                <a href="./danhgiasv/dskhenthuong.php">Xem thêm <i
                                       class="fa-solid fa-circle-arrow-right"></i></a>
                            </div>
                        </div>
                        <div class="grid-4"
                             style="background-color: rgb(208, 129, 77);">
                            <div class="left">
                                <div>
                                    <p>6</p>
                                    <h3>Danh sách cảnh cáo</h3>
                                </div>
                                <i class="fa-solid fa-circle-exclamation"></i>
                            </div>
                            <div class="see-more">
                                <a href="./danhgiasv/dscanhcao.php">Xem thêm <i
                                       class="fa-solid fa-circle-arrow-right"></i></a>
                            </div>
                        </div>
                        <div class="grid-4"
                             style="background-color: rgb(77, 208, 173);">
                            <div class="left">
                                <div>
                                    <p>7</p>
                                    <h3>Danh sách thôi học</h3>
                                </div>
                                <i class="fa-solid fa-user-slash"></i>
                            </div>
                            <div class="see-more">
                                <a href="./danhgiasv/dsbuocthoihoc.php">Xem thêm <i
                                       class="fa-solid fa-circle-arrow-right"></i></a>
                            </div>
                        </div>
                        <div class="grid-4"
                             style="background-color: rgb(127, 89, 241);">
                            <div class="left">
                                <div>
                                    <p>8</p>
                                    <h3>Thẻ sinh viên</h3>
                                </div>
                                <i class="fa-solid fa-id-card"></i>
                            </div>
                            <div class="see-more">
                                <a href="./capthe/quanlythe.php">Xem thêm <i
                                       class="fa-solid fa-circle-arrow-right"></i></a>
                            </div>
                        </div>


                    </div>
                </div>
            </div>
        </div>
    </section>
    <footer>
        <div class="footer-contain">
            <div class="footer-contain-left"><img src="./imgs/logo-footer.jpg"
                     alt="">
                <h2>Địa chỉ</h2>
                <div class="address">
                    <p>Cơ sở 1
                        Địa chỉ: Trần Phú, Hà Đông, Hà Nội
                        Điện thoại: (024) 3764 3219
                        Fax: (024) 37643228<br>
                        Email: mail@ptit.edu.vn</p>
                    <p>Cơ sở 2
                        Địa chỉ: Hoàng Quốc Việt, Cầu Giấy,Hà Nội
                        Điện thoại: (024) 3764 3219
                        Fax: (024) 37643228<br>
                        Email: mail@ptit.edu.vn</p>
                </div>
            </div>
            <div class="footer-contain-right">
                <h2>Liên Hệ</h2>
                <div class="contact">
                    <div class="contact-left">
                        <a href="https://www.facebook.com/HocvienPTIT"><i
                               class="fa-brands fa-facebook"></i>Facebook</a><br>
                        <a href="https://plus.google.com/110330226327788492035/"><i
                               class="fa-brands fa-google-plus"></i>Google Plus</a><br>
                        <a href="https://www.youtube.com/@iloveptit"><i
                               class="fa-brands fa-youtube"></i>Youtube</a><br>
                        <a href="https://www.instagram.com/toiyeuptit/"><i
                               class="fa-brands fa-instagram-square"></i>Instagram</a>
                    </div>
                    <div class="contact-right">
                        <p>Bản đồ</p>
                          <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14901.452769264337!2d105.79476479999998!3d20.978073600000002!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135accdd8a1ad71%3A0xa2f9b16036648187!2zSOG7jWMgdmnhu4duIEPDtG5nIG5naOG7hyBCxrB1IGNow61uaCB2aeG7hW4gdGjDtG5n!5e0!3m2!1svi!2s!4v1748185025484!5m2!1svi!2s" width="170" height="150" style="border:0; display:block; margin:auto;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                    </div>
                </div>
            </div>
        </div>
    </footer>
</body>

</html>