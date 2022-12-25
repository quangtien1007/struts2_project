<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style> @import url('https://fonts.googleapis.com/css2?family=Unbounded&display=swap'); 
	a{
		text-decoration: none;
	}
	a:hover{
		text-decoration: underline;
	}
</style>
<title>Admin</title>
</head>
<body style="background: rgb(238,174,202);
background: radial-gradient(circle, rgba(238,174,202,1) 0%, rgba(148,187,233,1) 100%);font-family: 'Unbounded', cursive;">
 <h1 style="color:	#ff4500; font-size: 40pt; text-align: center; margin-bottom:25px">Trang quản lý</h1>
		<div style="text-align:center">
	    	<img src="http://file.hstatic.net/1000075078/article/br_bigc_go_01_91959531eb4b4e42a5ed6f53a445b92f.jpg" style="height:450px">
		</div>
 
 	<div style="text-align:center;">
		 <a style="color:#ff6a6a; font-size: 22pt; margin-top:5px; margin-bottom:20px" href="listFoodAction">Quản lý loại cà phê</a><br/>
		 <a style="color:#ff6a6a; font-size: 22pt; margin-top:5px; margin-bottom:20px" href="listOrderAction">Quản lý danh sách hoá đơn</a><br/>
		 <a style="color:#ff6a6a; font-size: 22pt; margin-top:5px; margin-bottom:20px" href="logout">Đăng xuất</a><br/>
	</div>
</body>
</html>