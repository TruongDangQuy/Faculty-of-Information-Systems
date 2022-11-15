<%-- 
    Document   : blogdetail
    Created on : Oct 5, 2022, 6:02:49 PM
    Author     : Adminstrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by Free CSS Templates
http://www.freecsstemplates.org
Released for free under a Creative Commons Attribution 2.5 License
-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>${ub.getTieuDe()}</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="edit/blogdetail.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.style1 {font-size: 12em}
-->
</style>
</head>
<body>
<div id="menu">
	<ul>
		<li class="active"><a href="BlogServlet" accesskey="1" title="">Quay lại</a></li>
	
	</ul>
</div>
<div id="header">
	<h1><a href="#">${ub.getTieuDe()}</a></h1>
	<h2 class="style1"><a href="http://www.freecsstemplates.org/">${ub.getNgayCapNhat()} </a></h2>
</div>
<div id="content">
	<div id="colOne">
		<h2>Khoa hệ thống thông tin và viễn thám</h2>
		<p><img src="${ub.getHinhAnh()}" alt="" width="100" height="100" class="img1" /></p>
                <p>${ub.getNoiDung()}</p>
		
		
	</div>
	<div id="colTwo">
		<h3>Công tác hoạt động</h3>
		<p>Hỗ trợ và định hướng nghề nghiệp, thông tin về các lĩnh vực hot nhất hiện nay. <a href="#">More&#8230;</a></p>
		<h3>Cam kết đầu ra</h3>
		<p>Môi trường thân thiện và đáp ứng được tiêu chí đầu ra, giới thiệu việc làm. <a href="#">More&#8230;</a></p>
		<h3>Hỗ trợ học phí</h3>
		<p>Nhà trường đang triển khai chương trình cho vay vốn với lãi suất thích hợp, giúp đỡ hoàn cảnh khó khăn. <a href="#">More&#8230;</a></p>
		<h2>Khám phá tài năng</h2>
		<ul>
			<li><a href="#">Điều lệ</a></li>
			<li><a href="#">Thông điệp</a></li>
			<li><a href="#">Đáp ứng</a></li>
			<li><a href="#">Phát triển</a></li>
		</ul>
	</div>
	<div style="clear: both;">&nbsp;</div>
</div>
<div id="footer">
	<p>Khoa <a href="http://www.freecsstemplates.org"><strong>Hệ Thống Thông Tin Và Viễn Thám</strong></a></p>
</div>
<div align=center>Trường Đại Học <a href='http://all-free-download.com/free-website-templates/'>Tài Nguyên Và Môi Trường Thành Phố Hồ Chí Minh</a></div></body>
</html>



