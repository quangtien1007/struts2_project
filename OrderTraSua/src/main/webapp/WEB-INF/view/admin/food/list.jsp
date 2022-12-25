<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Danh sách loại trà sữa</title>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Unbounded&display=swap');
</style>
<style>
a {
	text-decoration: none;
}

a:hover {
	text-decoration: underline;
}

table, td, tr, th {
	border: 1px solid;
}

table {
	width: 100%;
}
</style>
</head>
<body
	style="background: rgb(238,174,202);
background: radial-gradient(circle, rgba(238,174,202,1) 0%, rgba(148,187,233,1) 100%); font-family: 'Unbounded', cursive;">
	<h1
		style="color: #ff4500; font-size: 30pt; text-align: center; margin-bottom: 5px">Danh
		sách cà phê</h1>

	<s:if test="hasActionMessages()">
		<p>
			<s:actionmessage />
		</p>
	</s:if>
	<p>
		<a
			style="color: #ff6a6a; font-size: 17pt; margin-top: 5px; margin-bottom: 10px"
			href="createFoodAction">Thêm mới</a>&nbsp <a
			style="color: #ff6a6a; font-size: 17pt; margin-top: 5px; margin-bottom: 10px"
			href="homeAdminAction">Trang chủ</a>
	</p>
	<table style="font-size: 17pt;">
		<tr>
			<th>Tên cà phê</th>
			<th>Hình ảnh</th>
			<th>Giá</th>
			<th></th>
			<th></th>
		</tr>


		<s:iterator var="food" value="foodlist">
			<tr>
				<td><s:property value="ten" /></td>
				<td style="text-align: center"><img width='80'
					src='./img/<s:property value="hinh"/>' /></td>
				<td style="text-align: center"><s:property value="gia" /> VNĐ</td>
				<td style="text-align: center"><a
					href='editFoodAction?id=<s:property value="id"/>'>Chỉnh sửa</a></td>
				<td style="text-align: center"><a
					href='deleteFoodAction?id=<s:property value="id"/>'
					onclick="return confirm('Bạn chắc chắn xóa?')">Xóa</a></td>
			</tr>
		</s:iterator>

	</table>
</body>
</html>