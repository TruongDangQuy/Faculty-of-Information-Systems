<%-- 
    Document   : event
    Created on : Oct 14, 2022, 3:58:00 PM
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
            <section class="event">

                    <div class="event-left">

                        <div class="event-banner">
                            <img src="images/event-img.jpg" alt="event banner" class="banner-img">
                        </div>

                        <button class="play smooth-zigzag-anim-1">
                            <div class="play-icon pulse-anim">
                                <ion-icon name="play-circle" ></ion-icon>
                            </div>

                            <p><a href="https://www.facebook.com/KhoaHTTTVVT"> Liên Hệ Ngay </a></p>
                        </button>

                    </div>

                    <div class="event-right" id="event">

                        <p class="section-subtitle">Sự Kiện </p>

                        <h2 class="section-title">Sự Kiện Sắp Diễn Ra</h2>

                        <div class="event-card-group">

                            <div class="event-card">

                                <div class="content-left">
                                    <p class="day">28</p>
                                    <p class="month">Feb, 2022</p>
                                </div>

                                <div class="content-right">
                                    <div class="schedule">
                                        <p class="time">10:30am To 2:30pm</p>
                                        <p class="place">236B Lê Văn Sỹ, Phường 1, Quận Tân Bình, TP. HCM</p>
                                    </div>

                                    <a href="#" class="event-name">Ngày Hội việc làm và Triển lãm Khoa học Công nghệ ngành Tài nguyên – Môi trường Lần thứ I – Năm 2022</a>
                                </div>

                            </div>

                            <div class="event-card">

                                <div class="content-left">
                                    <p class="day">15</p>
                                    <p class="month">Mar, 2022</p>
                                </div>

                                <div class="content-right">
                                    <div class="schedule">
                                        <p class="time">10:30am To 2:30pm</p>
                                        <p class="place">236B Lê Văn Sỹ, Phường 1, Quận Tân Bình, TP. HCM</p>
                                    </div>

                                    <a href="#" class="event-name">Đoàn công tác Trường Đại học TNMT TP.HCM (HCMUNRE) thăm và làm việc tại trường đại học Gothenburg, Thụy Điển và trường Aalborg, Đan Mạch</a>
                                </div>

                            </div>

                            <div class="event-card">

                                <div class="content-left">
                                    <p class="day">20</p>
                                    <p class="month">May, 2022</p>
                                </div>

                                <div class="content-right">
                                    <div class="schedule">
                                        <p class="time">10:30am To 2:30pm</p>
                                        <p class="place">236B Lê Văn Sỹ, Phường 1, Quận Tân Bình, TP. HCM</p>
                                    </div>

                                    <a href="#" class="event-name">Thông báo xét tuyển ĐHCQ theo kết quả kỳ thi đánh giá năng lực của Đại học Quốc gia TP. Hồ Chí Minh năm 2022 – Đợt 4</a>
                                </div>

                            </div>

                        </div>

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
