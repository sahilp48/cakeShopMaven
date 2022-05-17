<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View User History</title>
</head>
<style type="text/css">
table, th, tr, td {
	border: 2px solid white;
	border-collapse: collapse;
	padding: 5px;
	
}
body{
background-image: url("https://s1.1zoom.me/big0/758/Sweets_Cake_Chocolate_Cupcake_552690_1280x776.jpg");
background-size: cover;
background-repeat: no-repeat;
}
h1{

font-size:40px;
color: #9FD8D6;
margin-top: 40px;
}

.back{
	width:100px;
height:30px;
  background-color: #9FD8D6;
  color: #1C3147;

  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

</style>
<body>
	<center>

		<br> <br>
		<h1>Order History</h1>
		<table style="color: white">
			<tr>
				<th>Order Id</th>
				<th>Cake Name</th>
				<th>Quantity</th>
				<th>Price</th>
			</tr>
			<c:forEach items="${orderHistory}" var="order">
				<tr>
					<th>${order.orderId}</th>
					<th>${order.orderName}</th>
					<th>${order.quantity}</th>
					<th>${order.price}</th>
				</tr>
			</c:forEach>
		</table>

		<br>
		<form:form action="backToUserHome" method="post">
			<input class="back" type="submit" value="back">
		</form:form>
	</center>
</body>
</html>