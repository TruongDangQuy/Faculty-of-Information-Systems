<%-- 
    Document   : ManagerProduct
    Created on : Dec 28, 2020, 5:19:02 PM
    Author     : trinh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Quản lý bình luận</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="edit/ManageProduct.css" rel="stylesheet" type="text/css"/>
        
        
    <body>
        
        <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2>Quản lý <b>bình luận</b></h2>
                        </div>
                        
                    </div>
                </div>
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th>
                                <span class="custom-checkbox">
                                    <input type="checkbox" id="selectAll">
                                    <label for="selectAll"></label>
                                </span>
                            </th>
                            <th>Email</th>
                            <th>Mã bài viết</th>
                            <th>Ngày Đăng</th>                           
                            <th>Nội dung</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${managecommentList}" var="usercomment">
                            <tr>
                                <td>
                                    <span class="custom-checkbox">
                                        <input type="checkbox" id="checkbox1" name="options[]" value="1">
                                        <label for="checkbox1"></label>
                                    </span>
                                </td>
                                <input type="hidden" value="${usercomment.getMaBinhLuan()}">
                                <td>${usercomment.getEmail()}</td>
                                <td>${usercomment.getMaBaiViet()}</td>
                                <td>${usercomment.getNgayDang()}</td>
                                <td>${usercomment.getNoiDung()}</td>

                                <td>
                                    <a href="EditCommentServlet?pid=${usercomment.getMaBinhLuan()}" class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Sửa đổi">&#xE254;</i></a>
                                    <a href="DeleteCommentServlet?pid=${usercomment.getMaBinhLuan()}" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Xoá">&#xE872;</i></a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <div class="clearfix">
                    <div class="hint-text">Mục <b>5</b> trong số <b>25</b> mục</div>
                    <ul class="pagination">
                        <li class="page-item disabled"><a href="#">Trước</a></li>
                        <li class="page-item"><a href="#" class="page-link">1</a></li>
                        <li class="page-item"><a href="#" class="page-link">2</a></li>
                        <li class="page-item active"><a href="#" class="page-link">3</a></li>
                        <li class="page-item"><a href="#" class="page-link">4</a></li>
                        <li class="page-item"><a href="#" class="page-link">5</a></li>
                        <li class="page-item"><a href="#" class="page-link">Sau</a></li>
                    </ul>
                </div>
            </div>
            <a href="index.jsp"><button type="button" class="btn btn-primary">Quay lại</button></a>

        </div>
        <!-- Edit Modal HTML -->
        
        <script src="js/ManageProduct.js" type="text/javascript"></script>
    </body>
    
</html>