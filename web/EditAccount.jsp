<%-- 
    Document   : EditProduct
    Created on : Aug 31, 2022, 3:43:30 PM
    Author     : Adminstrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Sửa đổi thông tin tài khoản</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="css/manager.css" rel="stylesheet" type="text/css"/>
        <style>
            img{
                width: 200px;
                height: 120px;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                       
                        <div class="col-sm-6">
                        </div>
                    </div>
                </div>
            </div>
            <div id="editEmployeeModal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form method="post" action="EditAccountServlet">
                            <div class="modal-header">						
                                <h4 class="modal-title">Sửa đổi thông tin tài khoản</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            </div>
                            <div class="modal-body">					
                                <div class="form-group">
                                    <label>Email</label>
                                    <input value="${up.getEmail()}" name="Email" type="text" class="form-control" readonly required>
                                </div>
                                <div class="form-group">
                                    <label>Mật khẩu</label>
                                    <input value="${up.getMatKhau()}" name="MatKhau" type="text" class="form-control" required>
                                </div>                               
                                <div class="form-group">
                                <label>Quyền hạn</label>                               
                                <select name="QuyenHan" class="form-select" aria-label="Default select example">
                                    <option value="admin" ${up.getQuyenHan() == "admin"?"selected":""}>admin</option>
                                    <option value="user" ${up.getQuyenHan() == "user"?"selected":""}>user</option>                                  
                                </select>
                            </div>                               
                            </div>
                            <div class="modal-footer">
                                <input type="submit" class="btn btn-success" value="Sửa đổi">
                            </div>
                        </form>
                    </div>
                </div>
            </div>

        </div>


        <script src="js/manager.js" type="text/javascript"></script>
    </body>
</html>
