<%-- 
    Document   : comment
    Created on : Oct 6, 2022, 10:57:18 AM
    Author     : Adminstrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <title>Bình luận bài viết</title>
        <meta name="author" content="Codeconvey" />

        <!-- Style CSS -->
        <link rel="stylesheet" href="edit/comment.css">

        <!--Only for demo purpose - no need to add.-->
        <link rel="stylesheet" type="text/css" href="edit/demo.css" />

    </head>
    <body>

        <div class="ScriptTop">
            <div class="rt-container">
                <div class="col-rt-4" id="float-right">
                    <!-- AD -->
                </div>
                <div class="col-rt-2">
                    <ul>
                        <li><a href="BlogServlet">Quay lại</a></li>
                    </ul>
                </div>
            </div>
        </div>

        <header class="ScriptHeader">
            <div class="rt-container">
                <div class="col-rt-12">

                    <div class="rt-heading">
                        <h1>Bình luận bài viết số </h1> <h1 id="MaBaiViet">${ub.getMaBaiViet()}</h1>                       

                        <h1>${ub.getTieuDe()}</h1>
                        <p>${ub.getNgayCapNhat()}</p>

                    </div>

                </div>
            </div>
        </header>

        <section>
            <div class="rt-container">
                <div class="col-rt-12">
                    <div class="Scriptcontent">


                        <section id="app">
                            <div class="container">

                                <div class="row">

                                    <div class="col-6">

                                        <div  class="comment" >
                                            <c:forEach items="${listComment}" var="usercomment">
                                                <input type="hidden" value="Bài viết số ${usercomment.getMaBaiViet()}">
                                                <p><strong>${usercomment.getEmail()}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${usercomment.getNgayDang()}</strong><br/>
                                                    ${usercomment.getNoiDung()}</p>
                                                </c:forEach>
                                            <p  v-for="items in item" v-text="items"></p>


                                        </div><!--End Comment-->


                                    </div><!--End col -->

                                </div><!-- End row -->

                                <div class="row">
                                    <div class="col-6">
                                        <textarea type="text" class="input" id="txtcomment" placeholder="Viết bình luận" v-model="newItem" @keyup.enter="addItem()"></textarea>

                                        <button v-on:click="addItem()" class='primaryContained float-right' type="submit">Thêm</button>




                                        <div class="google_name">
                                            <a class="avata_coment" href="https://my.vnexpress.net/users/feed/1082611999" target="_blank">
                                                <img src="https://a1.vnecdn.net/t31463655222081678019.png?w=60&amp;h=60&amp;s=ZxF3fBUV_x-YwM5EaDBi1g" alt="dangquy360" class="lazyLoaded" data-was-processed="true">
                                            </a><strong><span id="Email"  v-model="secondItem" @keyup.enter="addItem()" class="fw-bold">${sessionScope.acc.getEmail()}</span></strong>
                                        </div>
                                        <p v-show="timeStamp" @keyup.enter="addItem()"> 
                                            <strong>{{ timeStamp }}</strong> 
                                        </p>
                                        

                                    </div><!-- End col -->
                                </div><!--End Row -->
                            </div><!--End Container -->
                        </section><!-- end App -->
                        <!-- partial -->
                        <script src='https://cdnjs.cloudflare.com/ajax/libs/vue/2.5.17/vue.min.js'></script>
                        <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script>
                        <script  src="js/comment.js"></script>
                        <script src="js/jquery-1.11.2.min.js"></script>
                    </div>
                </div>
            </div>
        </section>                                           
    </body>
</html>