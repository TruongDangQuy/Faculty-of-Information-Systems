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
        <title>Thay đổi thông tin người dùng</title>
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    
        <link rel="stylesheet" type="text/css" href="edit/change.css" />
    </head>
    <body>
        <div class="container">
            <div class="book">
                <div class="description">
                    <h1><strong>Thay đổi</strong> thông tin người dùng</h1>
                    <p>
                        Thay đổi tại đây!
                    </p>
                    <div class="quote">
                        <p>
                            Thay đổi thông tin Tên,Email...
                        </p>
                    </div>
                    <ul>
                        <li>Service 24/7</li>
                        <li>customer care</li>
                        <li>GPS navigation and online support</li>
                        <li>Reliable</li>
                    </ul>
                    <button class="subt" type="button"><a href="PersonServlet?ac=${sessionScope.acc.getEmail()}">Quay lại</a></button>
                </div>
                <div class="form">
                    <form action="EditPersonServlet" method="post" enctype="multipart/form-data">

                        <div class="inpbox">
                            <li>Email</li>
                            <span class="flaticon-globe"></span>
                            <input value="${up.getEmail()}" type="text" name="Email" readonly>
                        </div>
                        <div class="inpbox">
                            <li>Số Điện Thoại</li>
                            <span class="flaticon-globe"></span>
                            <input value="${up.getSoDienThoai()}" type="text" name="SoDienThoai" readonly>
                        </div>
                        <div class="inpbox">
                            <li>Tên</li>
                            <span class="flaticon-globe"></span>
                            <input value="${up.getTen()}" type="text" name="Ten">
                        </div>
                        <div class="inpbox">
                            <li>Ngày Tháng Năm Sinh</li>
                            <span class="flaticon-globe"></span>
                            <input value="${up.getNgayThangNamSinh()}" type="date" name="NgayThangNamSinh">
                        </div>                      
                        <div class="inpbox">
                            <li>Hình Ảnh</li>
                            <span class="flaticon-globe"></span>>
                            <img src="${up.getHinhAnh()}" style="height: 50px;width: 50px">
                        </div>
                        <div class="inpbox">
                            <li>Thay Đổi Ảnh</li>
                            <span class="flaticon-globe"></span>
                            <input value="" type="file" name="HinhAnh" required>
                        </div>

                        <button class="subt" type="submit">Thay Đổi</button>


                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
