<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Customer</title>
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
.table{
margin-left: 550px;
margin-top: 200px;
}

form {
	margin-left: 550px;
}
font {
	color: white;
}
select {
	height:20px;

  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
button {
width:100px;
height:30px;
  background-color: #4CAF50;
  color: white;

  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
button:hover {
  background-color: #45a049;
}
.backbutton {
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
</head>
<body>
 <a href="/CakeShop/backToUserHome"> <input type="button" class="backbutton" value="Back" /></a>
	<center>
		<table class="table" style="color: white">
			<tr>
				<th>Cake Id</th>
				<th>Cake Name</th>
				<th>Price</th>
			</tr>
			<c:forEach items="${cakeList}" var="cake">
				<tr>
					<th>${cake.cakeId}</th>
					<th>${cake.cakeName}</th>
					<th>${cake.cakePrice}</th>
				</tr>
			</c:forEach>
		</table>
		<br>
		<br>
		<form:form action="buysuccess" method="post" modelAttribute="customer">
					<font> Cake Name :</font> 
            <form:select class="dropdown" path="OrderName">
				<c:forEach items="${cakeList}" var="list">
					<form:option value="${list.cakeName}" />
				</c:forEach>
			</form:select>


			<br />
			<br>
			<font> Quantity :</font> 
					
					<form:input path="quantity" type="number" min="1" max="3" required="required"/>
			<br>
			<br>
			<form:button >Buy</form:button>
		</form:form>
		<br>
	</center>
</body>
</html>