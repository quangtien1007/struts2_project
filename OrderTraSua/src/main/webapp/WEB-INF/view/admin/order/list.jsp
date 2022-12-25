<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Danh sách đặt hàng</title>
<style> @import url('https://fonts.googleapis.com/css2?family=Unbounded&display=swap'); </style>
<style>
	table,td,tr,th
	{
		border: 1px solid;
	}
	table
	{
		width:70%;
	}
</style>
</head>
<body style="background: rgb(238,174,202);
background: radial-gradient(circle, rgba(238,174,202,1) 0%, rgba(148,187,233,1) 100%); font-family: 'Unbounded', cursive;">


	<div style="text-align:center">
    	<!-- <img src="http://sampartners1.cafe24.com/wp/wp-content/uploads/2016/01/gongcha_01.jpg" style="height:400px;width:850px"> -->
	</div>

	<h1 style="color:	#ff4500; font-size: 40pt; text-align: center; margin-bottom:5px">Danh sách đặt hàng</h1>
	
	 <s:if test="hasActionMessages()">
	      <p>
	          <s:actionmessage /> 
	      </p>
	  </s:if>
	<p>  <a style="color:#ff6a6a; font-size: 22pt; margin-top:5px; margin-bottom:10px" href="homeAdminAction">Trang chủ</a></p>
	<div>
		<table style="font-size: 18pt; text-align: center; width:100%">
			<tr>
				<th>ID người dùng</th>
				<th>ID loại trà sữa</th>
				<th>Số lượng</th>
				<th>Giá</th>
				<th>Thành tiền</th>
			</tr>
			
			
			<s:iterator var="order" value="orderlist" >
				<tr>
					<td><s:property value="idnguoidung"/></td>
					<td><s:property value="idloaicaphe"/></td>
					<td><s:property value="soluong"/></td>
					<td><s:property value="gia"/> VNĐ</td>
					<td><s:property value="thanhtien"/> VNĐ</td>
				</tr>
			</s:iterator>
		
		</table>
	</div>
</body>
</html>