<%-- 
    Document   : Signin
    Created on : Oct 6, 2021, 2:24:23 PM
    Author     : Adminstrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Created By CodingNepal -->
<html lang="en" dir="ltr">
    <head>
        <meta charset="utf-8">
        <title>ĐĂNG NHẬP</title>
        <link rel="stylesheet" href="edit/signin.css">
    </head>
    <body>
        <div class="wrapper">
            <div class="title">
                Đăng nhập
            </div>
            <form method="post" action="LoginServlet">
                <div class="alert alert-danger" role="alert">
                    ${mess}
                </div>
                <div class="field">
                    <input type="text"  name="Email" required>
                    <label>Email</label>
                </div>
                <div class="field">
                    <input type="password" name="MatKhau" required>
                    <label>Mật khẩu</label>
                </div>
                <div class="field">
                    <input type="submit"  value="Đăng nhập">
                </div>
                <div class="signup-link">
                    <a href="#">Đổi mật khẩu</a>
                    <br><a href="index.jsp">Quay về trang chủ</a>
                </div>
            </form>
        </div>
</body>
</html>
