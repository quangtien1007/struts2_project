<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thêm loại trà sữa</title>
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
background: radial-gradient(circle, rgba(238,174,202,1) 0%, rgba(148,187,233,1) 100%); font-family: 'Unbounded', cursive;">


	<div style="text-align: center">
		<img
			src="https://ecoparker.s3.ap-southeast-1.amazonaws.com/s3fs-public/styles/listing_detail_header/public/nha%20hang/45519673_2220682351539112_7646554049159888896_o_0.jpg?itok=MsMb6ThS"
			style="height: 380px; width: 70%">
	</div>
	<a
		style="color: #ff6a6a; font-size: 20pt; margin-left: 240px; margin-bottom: 0px"
		href="listFoodAction">Quay lại danh sách</a>
	<h1
		style="color: #ff4500; font-size: 40pt; text-align: center; margin-bottom: 15px; margin-top: 0px">Thêm
		loại cà phê</h1>
	<div style="font-size: 20pt; margin-left: 500px">
		<s:form action="storeFoodAction" method="POST"
			enctype="multipart/form-data" validate="true">

			<s:textfield
				style="width:350px; height:25px; font-size:17pt; margin-bottom:10px"
				label="Tên cà phê" id="loaicaphe" name="tencaphe" />
			<s:textfield
				style="width:350px; height:25px; font-size:17pt; margin-bottom:10px; text-align:right"
				id="gia" name="gia" label="Giá" />
			<s:file style=" height:40px; font-size: 17pt;" name="hinh"
				label="Chọn hình" accept="image/png, image/jpeg, image/gif"></s:file>

			<s:submit value="Thêm"
				style=" width:100px; height:40px; font-size: 17pt; margin-left:260px" />
		</s:form>
	</div>

	<script>
		
	</script>
</body>
</html>