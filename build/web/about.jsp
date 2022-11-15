<%-- 
    Document   : about
    Created on : Oct 14, 2022, 3:57:41 PM
    Author     : Adminstrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Hệ Thống Tin Và Viễn Thám</title>

        <!--
        - custom css link
        -->
        <link rel="stylesheet" href="./assets/css/style.css">
        <link rel="stylesheet" href="./assets/css/media_queries.css">
        <link rel="stylesheet" href="./assets/css/animation.css">

        <!--
        - google font link
        -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Jost:wght@500;600;700;800;900&family=Roboto:wght@400;500&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="./assets/themify-icons/themify-icons.css">
        <link rel="shortcut icon" href="images/logo.png" type="image/x-icon">
    </head>
    <body>
        <div class="container">
            <header>

                <nav class="navbar">

                    <div class="navbar-brand">
                        <img src="images/logo.png" alt="Educator Logo">

                    </div>

                    <ul class="navbar-nav">

                        <li class="nav-item">
                            <a href="index.jsp">Trang chủ</a>
                        </li>
                        <li class="nav-item">
                            <a href="about.jsp">Giới thiệu</a>
                        </li>
                        <li class="nav-item">
                            <a href="course.jsp">Khoá học</a>
                        </li>
                        <li class="nav-item">
                            <a href="BlogServlet">Bài viết</a>
                        </li>
                        <li class="nav-item">
                            <a href="event.jsp">Sự kiện</a>
                        </li>
                        <c:if test="${sessionScope.acc!=null}">
                        <li class="nav-item"><a href="#">Quản lý</a>
                            <ul class="nav-admin">
                                <c:if test="${sessionScope.acc.getQuyenHan() == 'admin'}">
                                    <li class="">
                                        <a href="ManageBlogServlet">Bài viết</a>
                                    </li>
                                </c:if>
                                <c:if test="${sessionScope.acc.getQuyenHan() == 'admin'}">
                                    <li class="">
                                        <a href="AccountServlet">Tài khoản</a>
                                    </li>
                                </c:if>
                                <c:if test="${sessionScope.acc!=null}">
                                    <li class="">
                                        <a href="ManagerCommentServlet">Bình luận</a>
                                    </li>
                                </c:if>
                            </ul>
                        </li>
                        </c:if>
                        <li class=" btn-search">
                        <form  action="SearchBlogServlet" method="get" type="text" id="form-search">
                            <input type="text" id="search-text" name="tab" placeholder="Bạn Muốn Tìm Gì?" required >
                            <button id="search-btn"><i class="ti-search"></i></button>
                        </form>

                    </li>
                        <c:if test="${sessionScope.acc!=null}">
                             <a href="PersonServlet">
                            <li class="btn-account">
                                <i class="icon-account ti-user">
                                      
                                </i>
                            </li>
                            </a>
                        </c:if>
                    </ul>
                    <c:if test="${sessionScope.acc == null}">
                        <a href="login.jsp"><button class="btn btn-primary">
                                <p class="btn-text">Đăng nhập</p>
                                <span class="square"></span>
                            </button></a>
                    </c:if>
                    <c:if test="${sessionScope.acc!=null}">
                       <a href="LogoutServlet"><button class="btn btn-primary">
                                <p class="btn-text">Đăng xuất</p>
                                <span class="square"></span>
                            </button></a>
                    </c:if>
                    <button class="nav-toggle-btn">
                        <span class="one"></span>
                        <span class="two"></span>
                        <span class="three"></span>
                    </button>

                </nav>


            </header>
            <section class="about" id="about">

                    <div class="about-left">

                        <div class="img-box">
                            <img src="images/about-img-bg.png" alt="about bg" class="about-bg">

                            <img src="images/about-img.png" alt="about person" class="about-img" style="height:600px; ">

                            <img src="images/banner-aliment-icon-1.png" alt="" class="icon-1 smooth-zigzag-anim-1" width="250">
                            <img src="images/banner-aliment-icon-3.png" alt="" class="icon-2 smooth-zigzag-anim-3" width="195">
                        </div>

                    </div>

                    <div class="about-right">

                        <p class="section-subtitle">Khoa</p>

                        <h2 class="section-title">Hệ Thống Thông Tin và Viễn Thám</h2>

                        <p class="section-text">
                            Đội ngũ giảng viên có tuổi đời trung bình rất trẻ và năng động, với phần lớn các giảng viên có trình độ sau đại học. Hiện nay, Khoa có 20 giảng viên cơ hữu và cán bộ chuyên trách, trong đó có 1 PGS.TS, 5 Tiến sĩ và 13 Thạc sĩ. Ngoài đội ngũ giảng viên
                            cơ hữu, Khoa còn được sự hỗ trợ từ các GS. TS., chuyên gia hàng đầu trong các lĩnh vực: Công nghệ thông tin, Hệ thống thông tin, Tin học môi trường, Hệ thống thông tin địa lý và Viễn thám…
                        </p>

                        <ul class="about-ul">

                            <li>
                            <ion-icon name="checkmark-circle"></ion-icon>
                            <p>Trưởng khoa (phụ trách): TS. Dương Thị Thúy Nga</p>
                            </li>

                            <li>
                            <ion-icon name="checkmark-circle"></ion-icon>
                            <p>Phó Trưởng khoa: ThS. Từ Thanh Trí</p>
                            </li>

                            <li>
                            <ion-icon name="checkmark-circle"></ion-icon>
                            <p>Phó trưởng khoa: ThS. Cao Duy Trường</p>
                            </li>

                        </ul>

                        <button class="btn btn-primary">
                            <p class="btn-text">Xem Chi Tiết</p>
                            <span class="square"></span>
                        </button>

                    </div>

                </section>
            <footer>

                    <div class="footer-grid">

                        <div class="grid-item">

                            <div class="footer-logo">
                                <img src="images/logo-footer.png" alt="educator logo white">
                            </div>

                            <p class="footer-text">
                            <ul class="list-item" style="color:aliceblue ;">
                                <li>Trường Đại Học Tài Nguyên và Môi Trường TP. Hồ Chí Minh</li>
                                <li>236B Lê Văn Sỹ, Phường 1, Quận Tân Bình, TP. Hồ Chí Minh</li>
                                <li>Điện thoại: 028.38443006 Fax: 028.38449474</li>
                            </ul>

                            </p>

                            <div class="social-link">
                                <a href="https://www.facebook.com/KhoaHTTTVVT">
                                    <ion-icon name="logo-facebook"></ion-icon>
                                </a>
                                <a href="#">
                                    <ion-icon name="logo-instagram"></ion-icon>
                                </a>
                                <a href="#">
                                    <ion-icon name="logo-twitter"></ion-icon>
                                </a>
                                <a href="#">
                                    <ion-icon name="logo-youtube"></ion-icon>
                                </a>
                            </div>

                        </div>

                        <ul class="grid-item">

                            <h4 class="item-heading">Liên Kết Với Chúng Tôi</h4>

                            <li class="list-item">
                                <a href="index.jsp">Trang chủ</a>
                            </li>

                            <li class="list-item">
                                <a href="about.jsp">Giới thiệu</a>
                            </li>

                            <li class="list-item">
                                <a href="course.jsp">Khoá học</a>
                            </li>

                            <li class="list-item">
                                <a href="BlogServlet">Bài viết</a>
                            </li>

                            <li class="list-item">
                                <a href="event.jsp">Sự kiện</a>
                            </li>

                        </ul>
                    </div>

                    </div>

                    </div>

                    <p>
                    <p class="copyright">
                        <small>Trường Đại học Tài nguyên và Môi trường Thành Phố Hồ Chí Minh
                        </small>
                    </p>
                    </p>

                </footer>
        </div>
    </body>
</html>
