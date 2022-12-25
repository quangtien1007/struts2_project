<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order</title>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Unbounded&display=swap');

a {
	text-decoration: none;
	color: #ff6a6a;
}

a:hover {
	text-decoration: underline;
	color: #ff6a6a;
}
</style>

</head>
<body
	style="background: rgb(238,174,202);
background: radial-gradient(circle, rgba(238,174,202,1) 0%, rgba(148,187,233,1) 100%); font-family: 'Unbounded', cursive;">

	<div style="text-align: center">
		<img
			src="https://file.hstatic.net/1000075078/file/tuyetvoi_desktop_fb7d9d2a8f574c66ae4b1b8d60848484.jpg"
			style="width: 850px">
	</div>
	<a
		style="color: #ff6a6a; font-size: 20px; margin-left: 350px; margin-bottom: 0px"
		href="homeKhachAction">Quay về danh sách</a>
	<h1
		style="text-align: center; font-size: 49pt; color: #ff4500; margin-top: 5px; margin-bottom: 5px">Đặt
		hàng</h1>

	<table>
		<th>
			<div style="margin-left: 450px; font-size: 20px; text-align: right">
				<s:form action="submitOrderAction" method="POST" validate="true">

					<s:textfield label="Tên cà phê" readonly="true"
						value='%{foodorder.ten}'
						style="width:350px; height:25px; font-size:20px; margin-bottom:10px" />
					<s:textfield
						style="width:350px; height:25px; font-size:20px; margin-bottom:10px;text-align:right"
						id="gia" name="gia" label="Giá" value='%{foodorder.gia}'
						readonly="true" />

					<s:textfield
						style="width:350px; height:25px; font-size:20px; margin-bottom:10px;text-align:right"
						id="soluong" name="soluong" label="Số lượng"
						onchange="tinhthanhtien()" />
					<s:textfield
						style="width:350px; height:25px; font-size:20px; margin-bottom:10px;text-align:right"
						id="thanhtien" name="thanhtien" label="Thành tiền" readonly="true" />

					<input type="hidden" name="idloaicaphe"
						value='<s:property value="idloaicaphe"/>' />

					<s:submit
						style=" width:160px; height:40px; font-size: 20px; margin-right:95px"
						value="Đặt hàng" />
				</s:form>
			</div>
		</th>
		<th>
			<div>
				<img
					rc="https://media1.giphy.com/media/gOQ6EgtAiwXde/giphy.webp?cid=ecf05e47f9i0iveukk1531apaq8supimeyv5vpfzokcqvw1y&rid=giphy.webp&ct=g"
					style="height: 250px">
			</div>
		</th>
	</table>


	<script>
		function tinhthanhtien() {
			var soluong = document.getElementById("soluong").value;
			var gia = document.getElementById("gia").value;
			document.getElementById("thanhtien").value = soluong * gia;
		}
	</script>

</body>
</html>