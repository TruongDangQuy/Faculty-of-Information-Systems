<%-- 
    Document   : Person
    Created on : Aug 10, 2022, 10:05:28 AM
    Author     : Adminstrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lịch sử đặt xe</title>
        <!-- font awesome cdn link  -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <!--File CSS-->
        <link rel="stylesheet" href="edit/table.css">
    </head>
    <body>
        <section>
            <h1>Thông tin người dùng</h1>
            <p style="color: red;">${errorString}</p>
            <div class="tbl-header">
                <table cellpadding="6" cellspacing="6" border="5">
                    <thead>
                        <tr>
                            <th>Email</th>
                            <th>Số Điện Thoại</th>
                            <th>Tên</th>
                            <th>Ngày Tháng Năm Sinh</th>                           
                            <th>Hình Ảnh</th>
                            <th>Tuỳ Chỉnh</th>
                        </tr>
                    </thead>
                </table>
            </div>
            <div class="tbl-content">
                <table cellpadding="0" cellspacing="0" border="0">
                    <tbody>
                        <c:forEach items="${personList}" var="userperson"> 
                            <tr>
                                <td>${userperson.getEmail()}</td>
                                <td>${userperson.getSoDienThoai()}</td>
                                <td>${userperson.getTen()}</td>
                                <td>${userperson.getNgayThangNamSinh()}</td>                               
                                <td><img src="${userperson.getHinhAnh()}" style="height: 150px;width: 150px"></td>
                                <td>
                                    <a href="EditPersonServlet?code=${userperson.getEmail()}"><button class="favorite styled" type="button">Sửa đổi</button></a>                      
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </section>
        <a href="index.jsp"><button class="favorite styled" type="button">Quay lại</button></a>
    </body>
    <script src=""></script>
</html>
