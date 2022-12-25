<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Chỉnh sửa loại trà sữa</title>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Unbounded&display=swap');

a {
	text-decoration: none;
}

a:hover {
	text-decoration: underline;
}
</style>
</head>
<body
	style="background: rgb(238,174,202);
background: radial-gradient(circle, rgba(238,174,202,1) 0%, rgba(148,187,233,1) 100%);font-family: 'Unbounded', cursive;">

	<div style="text-align: center">
		<img
			src="https://419.vn/wp-content/uploads/2022/11/tcfh-1024x399.png"
			style=" width: 70%">
	</div>
	<a
		style="color: #ff6a6a; font-size: 20pt; margin-left: 240px; margin-bottom: 10px"
		href="listFoodAction">Quay lại danh sách</a>
	<h1
		style="color: #ff4500; font-size: 40pt; text-align: center; margin-bottom: 15px; margin-top: 0px">Chỉnh
		sửa loại cà phê</h1>
	<div style="font-size: 20pt; margin-left: 500px">
		<s:form action="updateFoodAction" method="POST"
			enctype="multipart/form-data" validate="true">


			<input type="hidden" name="id" value='<s:property value="food.id"/>' />

			<s:textfield
				style="width:350px; height:25px; font-size:17pt; margin-bottom:10px"
				label="Tên cà phê" id="loaicaphe" name="tencaphe"
				value="%{food.ten }" />
			<s:textfield
				style="width:350px; height:25px; font-size:17pt; margin-bottom:10px; text-align:right"
				id="gia" name="gia" label="Giá" value="%{food.gia }" />
			<img style="margin-left: 250px" width='80'
				src='./img/<s:property value="food.hinh"/>' />
			<br />
			<s:file style=" height:40px; font-size: 17pt;" value="Thêm"
				name="hinh" label="Chọn hình"
				accept="image/png, image/jpeg, image/jpg, image/gif">
			</s:file>

			<s:submit value="Thêm"
				style=" width:100px; height:40px; font-size: 17pt; margin-left:260px" />
		</s:form>
	</div>
	<script>
		
	</script>
</body>
</html>