<%-- 
    Document   : index
    Created on : Oct 12, 2022, 5:47:06 PM
    Author     : Adminstrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

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

        <!--
        - main container
        -->

        <div class="container">

            <!--
          - #HEADER
            -->

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
            <!-- end header -->






            <main>

                <!--
            - #HOME SECTION
                -->

                <section class="home" id="home">

                    <div class="deco-shape shape-1">
                        <img src="images/shape-1.png" alt="art shape" width="70">
                    </div>
                    <div class="deco-shape shape-2">
                        <img src="images/shape-2.png" alt="art shape" width="55">
                    </div>
                    <div class="deco-shape shape-3">
                        <img src="images/shape-3.png" alt="art shape" width="120">
                    </div>
                    <div class="deco-shape shape-4">
                        <img src="images/shape-4.png" alt="art shape" width="30">
                    </div>

                    <div class="home-left">
                        <p class="section-subtitle">Chào Mừng <c:if test="${sessionScope.acc !=null}">${sessionScope.acc.getEmail()}</c:if> Đến Với </p>
                        <h1 class="main-heading">
                            <span class="underline-img">Khoa Hệ Thống Thông Tin Và Viễn Thám <img src="images/banner-line.png" alt="line"></span>
                        </h1>

                        <p class="section-text">
                            Vì Lợi Ích Mười Năm Trồng Cây , Vì Lợi Ích Trăm Năm Trồng Người
                        </p>

                        <div class="home-btn-group">
                            <button class="btn btn-primary">
                                <p class="btn-text">Chương Trình Đào Tạo </p>
                                <span class="square"></span>
                            </button>

                            <button class="btn btn-secondary">
                                <p class="btn-text">Đăng Kí Lịch Học</p>
                                <span class="square"></span>
                            </button>
                        </div>

                    </div>

                    <div class="home-right">

                        <div class="img-box">

                            <img src="images/banner-img-bg.png" alt="colorful background shape" class="background-shape">
                            <img src="images/banner-img.png" alt="banner image" class="banner-img">
                            <img src="images/banner-aliment-icon-1.png" alt="" class="icon-1 smooth-zigzag-anim-1" width="250">
                            <img src="images/banner-aliment-icon-2.png" alt="" class="icon-2 smooth-zigzag-anim-2" width="240">
                            <img src="images/banner-aliment-icon-3.png" alt="" class="icon-3 smooth-zigzag-anim-3" width="195">
                            <img src="images/banner-aliment-icon-4.png" alt="" class="icon-4 drop-anim">

                        </div>

                    </div>

                </section>





                <!--
            - #COURSE CATEGORY SECTION
                -->

                





                <!--
            - #ABOUT SECTION
                -->

                





                <!--
            - #COURSE SECTION
                -->

                





                <!--
            - #EVENT SECTION
                -->

                





                <!--
            - #FEATURES SECTION
                -->

                <section class="features">

                    <div class="features-left">

                        <p class="section-subtitle">Hội Nhập Và Phát Triển</p>

                        <h2 class="section-title">Sứ Mệnh </h2>

                        <ul>

                            <li class="features-item">
                                <div class="item-icon-box blue">
                                    <img src="images/feature-icon-1.png" alt="feature icon">
                                </div>

                                <div class="wrapper">

                                    <h3 class="item-title">Sáng Tạo </h3>

                                    <p class="item-text">Tiếp thu, thu nhập, bổ sung và trau dồi những kiến thức, kỹ năng, kinh nghiệm, giá trị và nhận thức mới mẻ.
                                    </p>

                                </div>
                            </li>

                            <li class="features-item">
                                <div class="item-icon-box pink">
                                    <img src="images/feature-icon-2.png" alt="feature icon">
                                </div>

                                <div class="wrapper">

                                    <h3 class="item-title">Chất Lượng </h3>

                                    <p class="item-text">Giảng dạy hiệu quả , hợp lý , dễ hiểu
                                    </p>

                                </div>
                            </li>

                            <li class="features-item">
                                <div class="item-icon-box purple">
                                    <img src="images/feature-icon-3.png" alt="feature icon">
                                </div>

                                <div class="wrapper">

                                    <h3 class="item-title">Hiệu Quả </h3>

                                    <p class="item-text">Đạt chuẩn đầu ra và việc làm cho sinh viên tốt nghiệp
                                    </p>

                                </div>
                            </li>

                        </ul>

                    </div>

                    <div class="features-right">
                        <img src="images/coure-features-img.jpg" alt="core features image">
                    </div>

                </section>





                <!--
            - #INSTRUCTOR SECTION
                -->

                <section class="instructor">

                    <p class="section-subtitle">Best Coach</p>

                    <h2 class="section-title">Đội Ngũ Giảng Viên Chuyên Gia</h2>

                    <div class="instructor-grid">

                        <div class="instructor-card">

                            <div class="instructor-img-box">
                                <img src="images/instructor-1.jpg" alt="instructor louis sullivan">

                                <div class="social-link">
                                    <a href="#" class="facebook">
                                        <ion-icon name="logo-facebook"></ion-icon>
                                    </a>

                                    <a href="#" class="instagram">
                                        <ion-icon name="logo-instagram"></ion-icon>
                                    </a>

                                    <a href="#" class="twitter">
                                        <ion-icon name="logo-twitter"></ion-icon>
                                    </a>
                                </div>
                            </div>

                            <h4 class="instructor-name">ThS. Đặng Đức Trung</h4>

                            <p class="instructor-title">Phó trưởng Bộ môn Công nghệ phần mềm (Phụ trách)r</p>

                        </div>

                        <div class="instructor-card">

                            <div class="instructor-img-box">
                                <img src="images/instructor-2.jpg" alt="instructor camden david">

                                <div class="social-link">
                                    <a href="#" class="facebook">
                                        <ion-icon name="logo-facebook"></ion-icon>
                                    </a>

                                    <a href="#" class="instagram">
                                        <ion-icon name="logo-instagram"></ion-icon>
                                    </a>

                                    <a href="#" class="twitter">
                                        <ion-icon name="logo-twitter"></ion-icon>
                                    </a>
                                </div>
                            </div>

                            <h4 class="instructor-name">PGS.TS. Vũ Xuân Cường</h4>

                            <p class="instructor-title">Chủ tịch Hội đồng nhà trường</p>

                        </div>

                        <div class="instructor-card">

                            <div class="instructor-img-box">
                                <img src="images/instructor-3.jpg" alt="instructor fiona dean">

                                <div class="social-link">
                                    <a href="#" class="facebook">
                                        <ion-icon name="logo-facebook"></ion-icon>
                                    </a>

                                    <a href="#" class="instagram">
                                        <ion-icon name="logo-instagram"></ion-icon>
                                    </a>

                                    <a href="#" class="twitter">
                                        <ion-icon name="logo-twitter"></ion-icon>
                                    </a>
                                </div>
                            </div>

                            <h4 class="instructor-name">TS. Dương Thị Thúy Nga</h4>

                            <p class="instructor-title">Trưởng khoa Trưởng Bộ môn Tin học Tài nguyên Môi trường</p>

                        </div>

                        <div class="instructor-card">

                            <div class="instructor-img-box">
                                <img src="images/instructor-4.jpg" alt="instructor cherish sosa">

                                <div class="social-link">
                                    <a href="#" class="facebook">
                                        <ion-icon name="logo-facebook"></ion-icon>
                                    </a>

                                    <a href="#" class="instagram">
                                        <ion-icon name="logo-instagram"></ion-icon>
                                    </a>

                                    <a href="#" class="twitter">
                                        <ion-icon name="logo-twitter"></ion-icon>
                                    </a>
                                </div>
                            </div>

                            <h4 class="instructor-name">ThS. Từ Thanh Trí</h4>

                            <p class="instructor-title">Phó Trưởng Khoa, Bí thư chi bộ, Chủ tịch công đoàn</p>

                        </div>

                    </div>

                </section>





                <!--
            - #TESTIMONIALS
                -->
                <!-- 
                <section class="testimonials">
    
                    <div class="testimonials-left">
    
                        <p class="section-subtitle">Testimonial</p>
    
                        <h2 class="section-title">What Our Client Says About Us</h2>
    
                        <p class="section-text">
                            Proin et lacus eu odio tempor porttitor id vel augue. Vivamus volutpat vehicula sem, et imperdiet enim tempor id. Phasellus lobortis efficitur nisl eget vehicula. Donec viverra blandit nunc, nec tempor ligula ullamcorper venenatis.
                        </p>
    
                    </div>
    
                    <div class="testimonials-right">
    
                        <div class="testimonials-card">
                            <img src="./assets/images/quote.png" alt="quote icon" class="quote-img">
    
                            <p class="testimonials-text">
                                "Proin feugiat tortor non neque eleifend, at fermentum est elementum. Ut mollis leo odio vulputate rutrum. Nunc sagittis sit amet ligula ut eleifend. Mauris consequat mauris sit amet turpis commodo fermentum. Quisque consequat tortor ut nisl finibus".
                            </p>
    
                            <div class="testimonials-client">
    
                                <div class="client-img-box">
                                    <img src="./assets/images/client.jpg" alt="client christine rose">
                                </div>
    
                                <div class="client-detail">
                                    <h4 class="client-name">Christine Rose</h4>
    
                                    <p class="client-title">Customer</p>
                                </div>
    
                            </div>
                        </div>
    
                    </div>
    
                </section>
    
    
                -->





                <!--
            - #CONTACT
                -->
                <!--
          - #FOOTER
                -->

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





        <!--
        - custom js link
        -->
        <script src="./assets/js/script.js"></script>

        <!--
        - ionicon link
        -->
        <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

    </body>

</html>
