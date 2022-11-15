<%-- 
    Document   : blog
    Created on : Oct 12, 2022, 5:47:14 PM
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
                        <li class="btn-search">
                            <form   action="SearchBlogServlet" method="get"  type="text" id="form-search">
                                <input oninput="search(this)" value="${txtS}" type="text" id="search-text" name="tab" placeholder="Bạn Muốn Tìm Gì?" required >
                                <button id="search-btn" ><i class="ti-search"></i></button>
                            </form>

                        </li>
                        <script>
                            

   
     
     
     function search(param){
                            var txtSearch = param.value;
                            $.ajax({
                                url: "SearchBlogServlet",
                                type: "get", //send it through get method
                                data: {
                                    tab: txtSearch
                                },
                                success: function (data) {
                                    var row = document.getElementById("blog");
                                    row.innerHTML = data;
                                },
                                error: function (xhr) {
                                    //Do Something to handle error
                                }
                            });
                        }

</script>
                        <!--<li class=" btn-search">
                            <form  action="SearchBlogServlet" method="get" type="text" id="form-search">
                                <input onkeyup="search()" type="text" id="search-text" name="tab" placeholder="Bạn Muốn Tìm Gì?" required >
                                <button id="search-btn"><i class="ti-search"></i></button>
                            </form>
    
                        </li>-->
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
            <!--
            - #BLOG
            -->

            <section class="blog" id="blog">

                <p class="section-subtitle">Bài viết</p>

                <h2 class="section-title">Khoa hệ thống thông tin và viễn thám</h2>
                <c:if test="${sessionScope.acc !=null}">
                    <p class="section-subtitle">
                        <a href="#">${sessionScope.acc.getEmail()}</a>
                    </p>
                </c:if>

                <div class="blog-grid">

                    <c:forEach items="${blogList}" var="userblog">
                        <div class="blog-card">

                            <div class="blog-banner-box">
                                <img src="${userblog.getHinhAnh()}" alt="blog banner">
                            </div>

                            <div class="blog-content">
                                <input type="hidden" value=${userblog.getMaBaiViet()}>
                                <h3 class="blog-title">
                                    <a href="BlogDetailServlet?p=${userblog.getMaBaiViet()}" title="Chi tiết">${userblog.getTieuDe()}</a>
                                </h3>

                                <div class="wrapper">

                                    <div class="blog-publish-date">
                                        <img src="images/calendar.png" alt="calendar icon">

                                        <a href="#">${userblog.getNgayCapNhat()}</a>
                                    </div>

                                    <div class="blog-comment">
                                        <img src="images/comment.png" alt="comment icon">
                                        <c:if test="${sessionScope.acc!=null}">
                                            <span><a href="CommentServlet?p=${userblog.getMaBaiViet()}" > Bình luận</a></span>
                                        </c:if>
                                    </div>

                                </div>

                            </div>

                        </div>
                    </c:forEach>







                </div>

            </section>
            <!-- FOOTER -->
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







<!--
- custom js link
-->


<script src="./assets/js/script.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


<!--
- ionicon link
-->
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>

