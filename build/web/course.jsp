<%-- 
    Document   : course
    Created on : Oct 14, 2022, 3:57:51 PM
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
            <section class="category">

                    <p class="section-subtitle">Đào Tạo </p>

                    <h2 class="section-title">Cùng Khám Phá Các Công Nghệ </h2>

                    <ul class="course-item-group">

                        <li class="course-category-item">

                            <div class="wrapper">
                                <img src="images/course-category-icon-1.png" alt="category icon" class="category-icon default">

                                <img src="images/course-category-icon-1-w.png" alt="category icon white" class="category-icon hover">
                            </div>

                            <div class="course-category-content">
                                <h3 class="category-title">
                                    <a href="#">Tìm Hiểu Khoa Học Dữ Liệu </a>
                                </h3>

                                <p class="category-subtitle">Big Data , GIS</p>
                            </div>

                        </li>


                        <li class="course-category-item">

                            <div class="wrapper">
                                <img src="images/course-category-icon-2.jpg" alt="category icon" class="category-icon default">

                                <img src="images/course-category-icon-2.jpg " alt="category icon white" class="category-icon hover">
                            </div>

                            <div class="course-category-content">
                                <h3 class="category-title">
                                    <a href="#">Viễn Thám Xử Lý</a>
                                </h3>

                                <p class="category-subtitle">Tìm hiểu về công nghệ Gis , xử lý ảnh , viễn thám ứng dụng </p>
                            </div>

                        </li>


                        <li class="course-category-item">

                            <div class="wrapper">
                                <img src="images/course-category-icon-3.png" alt="category icon" class="category-icon default">

                                <img src="images/course-category-icon-3-w.png" alt="category icon white" class="category-icon hover">
                            </div>

                            <div class="course-category-content">
                                <h3 class="category-title">
                                    <a href="#">Thiết Kế Giao Diện Website </a>
                                </h3>

                                <p class="category-subtitle">Tìm hiểu , thực hành các ngôn ngữ giao diện webstie</p>
                            </div>

                        </li>


                        <li class="course-category-item">

                            <div class="wrapper">
                                <img src="images/course-category-icon-4.png" alt="category icon" class="category-icon default">

                                <img src="images/course-category-icon-4-w.png" alt="category icon white" class="category-icon hover">
                            </div>

                            <div class="course-category-content">
                                <h3 class="category-title">
                                    <a href="#">Thương Mại Điện Tử </a>
                                </h3>

                                <p class="category-subtitle">Kinh doanh online, kinh doanh hợp pháp, thông minh </p>
                            </div>

                        </li>


                        <li class="course-category-item">

                            <div class="wrapper">
                                <img src="images/course-category-icon-5.png" alt="category icon" class="category-icon default">

                                <img src="images/course-category-icon-5-w.png" alt="category icon white" class="category-icon hover">
                            </div>

                            <div class="course-category-content">
                                <h3 class="category-title">
                                    <a href="#">Lập trình Hướng Đối Tượng </a>
                                </h3>

                                <p class="category-subtitle">Một kỹ thuật lập trình cho phép lập trình viên tạo ra các đối tượng trong code trừu tượng hóa các đối tượng</p>
                            </div>

                        </li>


                        <li class="course-category-item">

                            <div class="wrapper">
                                <img src="images/course-category-icon-6.png" alt="category icon" class="category-icon default">

                                <img src="images/course-category-icon-6-w.png" alt="category icon white" class="category-icon hover">
                            </div>

                            <div class="course-category-content">
                                <h3 class="category-title">
                                    <a href="#">Kỹ Năng Số</a>
                                </h3>

                                <p class="category-subtitle">khả năng tìm kiếm, đánh giá, sử dụng, chia sẻ và tạo nội dung bằng công nghệ thông tin và Internet</p>
                            </div>

                        </li>

                    </ul>

                </section>
            <section class="course" id="course">

                    <p class="section-subtitle">Giáo Trình Giảng Dạy </p>

                    <h2 class="section-title">Tìm Giáo Trình Phù Hợp Với Bạn </h2>

                    <div class="course-grid">

                        <div class="course-card">

                            <div class="course-banner">
                                <img src="images/course-1.jpg" alt="course banner">

                                <div class="course-tag-box">
                                    <a href="#" class="badge-tag orange">Cơ Bản </a>
                                    <a href="#" class="badge-tag blue">  Nâng Cao</a>
                                </div>
                            </div>

                            <div class="course-content">

                                <h3 class="card-title">
                                    <a href="#"> Lập Trình Website Bằng Ngôn Ngữ Java </a>
                                </h3>

                                <div class="wrapper border-bottom">

                                    <div class="author">
                                        <img src="images/course-instructor-img.jpg" alt="course instructor image" class="author-img">

                                        <a href="#" class="author-name">Ths.Trần Văn Định</a>
                                    </div>

                                    <div class="rating">
                                        <ion-icon name="star"></ion-icon>
                                        <p>5.0 (20k)</p>
                                    </div>

                                </div>

                                <div class="wrapper">
                                    <div class="course-price">50.000đ</div>

                                    <div class="enrolled">
                                        <div class="icon-user">
                                            <img src="images/student-icon.png" alt="user icon">
                                        </div>

                                        <p>600k</p>
                                    </div>
                                </div>

                            </div>

                        </div>


                        <div class="course-card">

                            <div class="course-banner">
                                <img src="images/course-2.jpg" alt="course banner">

                                <div class="course-tag-box">
                                    <a href="#" class="badge-tag orange">Cơ Bản </a>
                                    <a href="#" class="badge-tag blue">Nâng Cao</a>
                                </div>
                            </div>

                            <div class="course-content">

                                <h3 class="card-title">
                                    <a href="#">Thương Mại Điện Tử </a>
                                </h3>

                                <div class="wrapper border-bottom">

                                    <div class="author">
                                        <img src="images/course-instructor-img-1.jpg" alt="course instructor image" class="author-img">

                                        <a href="#" class="author-name">Th.s Từ Minh Trí</a>
                                    </div>

                                    <div class="rating">
                                        <ion-icon name="star"></ion-icon>
                                        <p>4.7 (5k)</p>
                                    </div>

                                </div>

                                <div class="wrapper">
                                    <div class="course-price">80.000đ</div>

                                    <div class="enrolled">
                                        <div class="icon-user">
                                            <img src="images/student-icon.png" alt="user icon">
                                        </div>

                                        <p>545k</p>
                                    </div>
                                </div>

                            </div>

                        </div>


                        <div class="course-card">

                            <div class="course-banner">
                                <img src="images/course-3.jpg" alt="course banner">

                                <div class="course-tag-box">
                                    <a href="#" class="badge-tag orange">Cơ Bản </a>
                                    <a href="#" class="badge-tag blue">Nâng Cao</a>
                                </div>
                            </div>

                            <div class="course-content">

                                <h3 class="card-title">
                                    <a href="#">Nghiên Cứu Khoa Học </a>
                                </h3>

                                <div class="wrapper border-bottom">

                                    <div class="author">
                                        <img src="images/course-instructor-img-2.jpg" alt="course instructor image" class="author-img">

                                        <a href="#" class="author-name"> TS. Dương Thị Thúy Nga</a>
                                    </div>

                                    <div class="rating">
                                        <ion-icon name="star"></ion-icon>
                                        <p>4.1 (3k)</p>
                                    </div>

                                </div>

                                <div class="wrapper">
                                    <div class="course-price">150.000đ</div>

                                    <div class="enrolled">
                                        <div class="icon-user">
                                            <img src="images/student-icon.png" alt="user icon">
                                        </div>

                                        <p>17k</p>
                                    </div>
                                </div>

                            </div>

                        </div>


                        <div class="course-card">

                            <div class="course-banner">
                                <img src="images/course-4.jpg" alt="course banner">

                                <div class="course-tag-box">
                                    <a href="#" class="badge-tag orange">Cơ Bản </a>
                                    <a href="#" class="badge-tag blue">Nâng Cao</a>
                                </div>
                            </div>

                            <div class="course-content">

                                <h3 class="card-title">
                                    <a href="#">Lập Trình .Net </a>
                                </h3>

                                <div class="wrapper border-bottom">

                                    <div class="author">
                                        <img src="images/course-instructor-img.jpg" alt="course instructor image" class="author-img">

                                        <a href="#" class="author-name">ThS. Cao Hữu Thanh Vũ</a>
                                    </div>

                                    <div class="rating">
                                        <ion-icon name="star"></ion-icon>
                                        <p>4.8 (3.9k)</p>
                                    </div>

                                </div>

                                <div class="wrapper">
                                    <div class="course-price">100.000đ</div>

                                    <div class="enrolled">
                                        <div class="icon-user">
                                            <img src="images/student-icon.png" alt="user icon">
                                        </div>

                                        <p>891k</p>
                                    </div>
                                </div>

                            </div>

                        </div>



                        <div class="course-card">

                            <div class="course-banner">
                                <img src="images/course-5.jpg" alt="course banner">

                                <div class="course-tag-box">
                                    <a href="#" class="badge-tag orange">Cơ Bản </a>
                                    <a href="#" class="badge-tag blue">Nâng Cao</a>
                                </div>
                            </div>

                            <div class="course-content">

                                <h3 class="card-title">
                                    <a href="#">Nhập Môn Lập Trình </a>
                                </h3>

                                <div class="wrapper border-bottom">

                                    <div class="author">
                                        <img src="images/course-instructor-img-3.jpg" alt="course instructor image" class="author-img">

                                        <a href="#" class="author-name">ThS. Đặng Đức Trung</a>
                                    </div>

                                    <div class="rating">
                                        <ion-icon name="star"></ion-icon>
                                        <p>3.8 (1k)</p>
                                    </div>

                                </div>

                                <div class="wrapper">
                                    <div class="course-price">90.000đ</div>

                                    <div class="enrolled">
                                        <div class="icon-user">
                                            <img src="images/student-icon.png" alt="user icon">
                                        </div>

                                        <p>204k</p>
                                    </div>
                                </div>

                            </div>

                        </div>


                        <div class="course-card">

                            <div class="course-banner">
                                <img src="images/course-6.jpg" alt="course banner">

                                <div class="course-tag-box">
                                    <a href="#" class="badge-tag orange">Cơ Bản </a>
                                    <a href="#" class="badge-tag blue">Nâng Cao</a>
                                </div>
                            </div>

                            <div class="course-content">

                                <h3 class="card-title">
                                    <a href="#">Anh Văn Chuyên Ngành </a>
                                </h3>

                                <div class="wrapper border-bottom">

                                    <div class="author">
                                        <img src="images/course-instructor-img-4.jpg" alt="course instructor image" class="author-img">

                                        <a href="#" class="author-name"> TS. Báo Văn Tuy</a>
                                    </div>

                                    <div class="rating">
                                        <ion-icon name="star"></ion-icon>
                                        <p>4.9 (23k)</p>
                                    </div>

                                </div>

                                <div class="wrapper">
                                    <div class="course-price">60.000đ</div>

                                    <div class="enrolled">
                                        <div class="icon-user">
                                            <img src="images/student-icon.png" alt="user icon">
                                        </div>

                                        <p>1.3M</p>
                                    </div>
                                </div>

                            </div>

                        </div>

                    </div>

                    <button class="btn btn-primary">
                        <p class="btn-text">Xem Tất Cả </p>
                        <span class="square"></span>
                    </button>

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
