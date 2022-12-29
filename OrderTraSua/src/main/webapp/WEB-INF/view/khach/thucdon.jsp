<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Menu</title>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Unbounded&display=swap');
</style>
<style>
a {
	text-decoration: none;
	color:#ff6a6a;
}

a:hover {
	text-decoration: underline;
	color:#ff6a6a;
}

table, td, tr, th {
	border: 1px solid;
	font-size: 20px;
}

table {
	width: 100%;
}
</style>

</head>

<body
	style="background: rgb(238,174,202);
background: radial-gradient(circle, rgba(238,174,202,1) 0%, rgba(148,187,233,1) 100%);font-family: 'Unbounded', cursive;">

	<div style="text-align: center">
		<!-- <img
			src="https://gongchafranchising.com/wp-content/uploads/2021/02/bg-2.jpg"
			style="height: 380px; width: 100%"> -->
	</div>
	<a href="logout" style="font-size: 20px">Đăng xuất</a>
	<h3>Xin chào quý khách </h3>
	<br />
	<h1
		style="text-align: center; font-size: 49pt; color: #ff4500; margin-top: 5px">Menu</h1>
	<div style="text-align: center; font-size: 18pt; color: red;">
		<s:if test='getMessage()!=""'>
			<p>
				<s:property value="message" />
			</p>
		</s:if>
	</div>

	<table style="font-size: 18pt;">
		<tr>
			<th>Tên cà phê</th>
			<th>Hình ảnh</th>
			<th>Giá</th>
			<th></th>

		</tr>


		<s:iterator var="food" value="foodlist">
			<tr>
				<td><s:property value="ten" /></td>
				<td style="text-align: center"><img width='110px'
					src='./img/<s:property value="hinh"/>' /></td>
				<td style="text-align: center"><s:property value="gia" /> VNĐ</td>
				<td style="text-align: center"><a
					href='orderAction?idloaicaphe=<s:property value="id"/>'>Mua
						hàng</a> <img
					src="http://bestanimations.com/Animals/Mammals/Cats/cats/cute-kitty-animated-gif-63.gif"
					style="height: 45px; width: 45px"></td>
			</tr>
		</s:iterator>

	</table>

</body>
</html>