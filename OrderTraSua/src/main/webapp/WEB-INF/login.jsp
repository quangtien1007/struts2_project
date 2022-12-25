<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng nhập</title>
<style> @import url('https://fonts.googleapis.com/css2?family=Unbounded&display=swap'); </style>
</head>


<body style="background: rgb(238,174,202);
background: radial-gradient(circle, rgba(238,174,202,1) 0%, rgba(148,187,233,1) 100%); font-family: 'Unbounded', cursive;">
 
 <p  style="color:	#ff4500; font-size: 30px; text-align: center; margin-bottom:5px">Chào mừng đến với coffee shop</p>
 <h1  style="color:	#ff4500; font-size: 49px; text-align: center; font:bold; margin-top:5px">THE COFFEE HOUSE</h1>
 
 
 <div style="text-align:center; margin-left:380px">
 	<table>
 		
 		<th><img src="https://product.hstatic.net/1000028508/product/239270325_3045507619056577_531106232057750834_n_3eef855d097047c985c49cb5e01ba016.jpg"style="width:180px"></th>
 		<th style="font-size: 20pt">
 			<p style="color:#ff6a6a; font-size: 20pt; margin-top:5px; margin-bottom:10px" > Vui lòng đăng nhập tài khoản!</p>
			<form action="loginUser" method="POST" style="text-align:right">
	           Tài khoản: <input type="text" name="tendangnhap" style="width:350px; height:25px; font-size:15pt; margin-bottom:10px"/> <br /> 
	           Mật khẩu: <input type="password" name="matkhau"  style="width:350px; height:25px; font-size: 15pt; margin-bottom:10px"/> <br />
	           <input type="submit" value="Đăng nhập" style="width:140px; height:40px; font-size: 17pt"/>
	        </form>
	        <br/>
 		</th>
 	
 	</table>
 </div>
 <div style="text-align:center; font-size:18pt; color: red;">
    <s:if test="hasActionMessages()">
        <div class="welcome">
            <s:actionmessage /> 
        </div>
    </s:if>
 </div>
    <div style="text-align: center">
    	<img src="https://mir-s3-cdn-cf.behance.net/project_modules/2800_opt_1/780d9585529573.5da55bbdbccb1.gif" style="height:250px">
	</div>
    
</body>
</html>