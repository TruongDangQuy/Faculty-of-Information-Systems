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
        <title>Quản lý thông tin người dùng</title>
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
                            <h2>Quản lý <b>thông tin người dùng</b></h2>
                        </div>
                        <div class="col-sm-6">
                            <a href="#addEmployeeModal"  class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Thêm thông tin người dùng</span></a>						
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
                            <th>Số điện thoại</th>
                            <th>Tên</th>
                            <th>Ngày tháng năm sinh</th>
                            <th>Hình ảnh</th> 
                            <th>Tuỳ chỉnh</th>
                        </tr>
                    </thead>
                    <tbody>
  
                            <tr>
                                <td>
                                    <span class="custom-checkbox">
                                        <input type="checkbox" id="checkbox1" name="options[]" value="1">
                                        <label for="checkbox1"></label>
                                    </span>
                                </td>
                                <td>${up.getEmail()}</td>
                                <td>${up.getSoDienThoai()}</td>
                                <td>${up.getTen()}</td>
                                <td>${up.getNgayThangNamSinh()}</td>
                                <td><img src="${up.getHinhAnh()}"></td>
                                                                                      
                                <td>
                                    <a href="EditPersonByAdmin?code=${up.getEmail()}" class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Sửa đổi">&#xE254;</i></a>
                                    <a href="DeletePersonByAdmin?code=${up.getEmail()}" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Xoá">&#xE872;</i></a>
                                </td>
                            </tr>
 
                    </tbody>
                </table>
              
            </div>
            <a href="AccountServlet"><button type="button" class="btn btn-primary">Quay lại</button></a>

        </div>
        <!-- Edit Modal HTML -->
        <div id="addEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="AddBlogServlet" method="post" enctype="multipart/form-data">
                        <div class="modal-header">						
                            <h4 class="modal-title">Thêm thông tin người dùng</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">					
                            <div class="form-group">
                                <label>Email</label>
                                <input name="Email" type="text" value="${up.getEmail()}" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Số điện thoại</label>
                                <input name="SoDienThoai" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Tên</label>
                                <input name="Ten" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Ngày tháng năm sinh</label>
                                <input name="NgayThangNamSinh" type="date" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Hình ảnh</label>
                                <input type="file" name="HinhAnh" required="">
                                
                            </div>                            

                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Huỷ">
                            <input type="submit" class="btn btn-success" value="Thêm bài">
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
            if (option ===true){
                window.location.href= 'DeletePersonByAdmin?code='+getEmail();
            }
            else{
                window.close();
            }
        }
    </script>
</html>