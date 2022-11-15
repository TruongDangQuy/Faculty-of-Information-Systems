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
        <title>Sửa đổi bài viết</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="edit/manager.css" rel="stylesheet" type="text/css"/>
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
                            <h2>Sửa đổi <b>Bài viết</b></h2>
                        </div>
                        <div class="col-sm-6">
                        </div>
                    </div>
                </div>
            </div>
            <div id="editEmployeeModal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form method="post" action="EditBlogServlet"  enctype="multipart/form-data">
                            <div class="modal-header">						
                                <h4 class="modal-title">Sửa đổi thông tin bài viết</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            </div>
                            <div class="modal-body">					
                                <div class="form-group">
                                    <label>Mã bài viết</label>
                                    <input value="${up.getMaBaiViet()}" name="MaBaiViet" type="text" class="form-control" readonly>
                                </div>  
                                <div class="form-group">
                                    <label>Tiêu đề</label>
                                    <input value="${up.getTieuDe()}" name="TieuDe" type="text" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Hình ảnh</label>
                                    <img src="${up.getHinhAnh()}" style="height: 50px;width: 50px">
                                </div>
                                <div class="form-group">
                                    <label>Thay đổi ảnh</label>
                                    <input value="" type="file" name="HinhAnh" required>
                                </div>
                                <div class="form-group">
                                    <label>Nội dung</label>
                                    <input value="${up.getNoiDung()}" name="NoiDung" type="text" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Ngày cập nhật</label>
                                    <input value="${up.getNgayCapNhat()}" name="NgayCapNhat" type="text" class="form-control" readonly>
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
