<%-- 
    Document   : AddPerson
    Created on : Aug 16, 2022, 9:33:44 AM
    Author     : Adminstrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Thêm Thông Tin Cá Nhân</title>
        <link rel="stylesheet" href="edit/signin.css">
    </head>
    <body>
        <div class="wrapper">
            <div class="title">
                Thêm Thông Tin Cá Nhân
            </div>
            <form method="post" action="AddPersonServlet" enctype="multipart/form-data">

                <div class="field">
                    <input type="text" name="Email" value="${Email}" readonly="">
                    <label>Email</label>
                </div>
                <div class="field">
                    <input type="text"  name="SoDienThoai">
                </div>
                <div class="field">
                    <input type="text" name="Ten">
                    <label>Tên</label>
                </div>
                <div class="field">
                    <input type="text" name="NgayThangNamSinh">
                    <label>Ngày Tháng Năm Sinh</label>
                </div><!-- comment -->                
                <div class="field">
                    <input type="file" name="HinhAnh" required>
                    <label>HinhAnh</label>
                </div>
                <div class="field">
                    <input type="submit"  value="Hoàn tất">
                </div>
                <div class="signup-link">
                    <a href="Login.jsp">Đăng nhập ngay</a>
                    <br><a href="index.jsp">Quay về trang chủ</a>
                </div>
            </form>
        </div>
    <center>
        <div>
            <h4>Thông tin đăng ký</h4>
            <h5>${SoDienThoai}</h5>
            <h5>${Ten}</h5>
        </div>
    </center>
</body>
</html>
