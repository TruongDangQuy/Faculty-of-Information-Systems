<%-- 
    Document   : EditPerson
    Created on : Aug 11, 2022, 1:29:26 PM
    Author     : Adminstrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thay đổi thông tin bình luận</title>
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    
        <link rel="stylesheet" type="text/css" href="edit/change.css" />
    </head>
    <body>
        <div class="container">
            <div class="book">
                <div class="description">
                    <h1><strong>Thay đổi</strong> thông tin bình luận</h1>
                    <p>
                        Thay đổi tại đây!
                    </p>
                    <div class="quote">
                        <p>
                            Thay đổi thông tin bình luận
                        </p>
                    </div>
                    <ul>
                        <li>Service 24/7</li>
                        <li>customer care</li>
                        <li>GPS navigation and online support</li>
                        <li>Reliable</li>
                    </ul>
                    <button class="subt" type="button"><a href="ManagerCommentServlet?ac=${sessionScope.acc.getEmail()}">Quay lại</a></button>
                </div>
                <div class="form">
                    <form method="post" action="EditCommentServlet" >
                        <input type="hidden" value="${uc.getMaBinhLuan()}" name="MaBinhLuan">
                        <div class="inpbox">
                            <li>Email</li>
                            <span class="flaticon-globe"></span>
                            <input value="${uc.getEmail()}" type="text" name="Email" readonly>
                        </div>
                        <div class="inpbox">
                            <li>Mã bài viết</li>
                            <span class="flaticon-globe"></span>
                            <input value="${uc.getMaBaiViet()}" type="text" name="MaBaiViet" readonly>
                        </div>
                        <div class="inpbox">
                            <li>Ngày đăng</li>
                            <span class="flaticon-globe"></span>
                            <input value="${uc.getNgayDang()}" type="text" name="NgayDang" readonly>
                        </div>                                     
                        <div class="inpbox">
                            <li>Nội dung</li>
                            <span class="flaticon-globe"></span>
                            <input value="${uc.getNoiDung()}" type="text" name="NoiDung">
                        </div>

                        <button class="subt" type="submit">Thay Đổi</button>


                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
