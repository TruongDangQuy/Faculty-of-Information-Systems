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
        <title>Quản lý tài khoản</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="edit/ManageProduct.css" rel="stylesheet" type="text/css"/>
        <style>
            img{
                width: 200px;
                height: 120px;
            }
        </style>
    <body>
        <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2>Quản lý <b>tài khoản</b></h2>
                        </div>
                        <div class="col-sm-6">
                            <a href="#addEmployeeModal"  class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Thêm tài khoản</span></a>
                            <a href="#deleteEmployeeModal" class="btn btn-danger" data-toggle="modal"><i class="material-icons">&#xE15C;</i> <span>Xoá tài khoản</span></a>						
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
                            <th>Mật khẩu</th>
                            <th>Quyền hạn</th>                           
                            <th>Tuỳ chỉnh</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${listTaiKhoan}" var="account">
                            <tr>
                                <td>
                                    <span class="custom-checkbox">
                                        <input type="checkbox" id="checkbox1" name="options[]" value="1">
                                        <label for="checkbox1"></label>
                                    </span>
                                </td>
                                <td><a href="PersonByAdminServlet?a=${account.getEmail()}">${account.getEmail()}</a></td>
                                <td>${account.getMatKhau()}</td>
                                <td>${account.getQuyenHan()}</td>

                                <td>
                                    <a href="EditAccountServlet?pid=${account.getEmail()}" class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Sửa đổi">&#xE254;</i></a>
                                    <a href="DeleteAccountServlet?pid=${account.getEmail()}" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Xoá">&#xE872;</i></a>
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
        <div id="addEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form method="post" action="SigninServlet">
                        <div class="modal-header">						
                            <h4 class="modal-title">Thêm tài khoản</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">					
                            <div class="form-group">
                                <label>Email</label>
                                <input name="Email" type="email" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Mật khẩu</label>
                                <input name="MatKhau" type="text" class="form-control" required>
                            </div>

                            <div class="form-group">
                                <label>Quyền hạn</label>                               
                                <select name="QuyenHan" class="form-select" aria-label="Default select example">
                                    <option value="admin">admin</option>
                                    <option value="user">user</option>                                  
                                </select>
                            </div>                         

                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Huỷ">
                            <input type="submit" class="btn btn-success" value="Thêm">
                        </div>
                    </form>
                </div>
            </div>
        </div>       
        <script src="js/ManageProduct.js" type="text/javascript"></script>
    </body>
    <script>
        function showMess(getEmail()){
            var option = confirm('Xoá thông tin này?');
            if (option === true) {
                window.location.href = 'EditAccountServlet?pid=' + getEmail();
            } else {
                window.close();
            }
        }
    </script>
</html>