<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta>
<title>Cake's Bake</title>
<style type="text/css">
body{
background-image: url("https://s1.1zoom.me/big0/758/Sweets_Cake_Chocolate_Cupcake_552690_1280x776.jpg");
background-size: cover;
background-repeat: no-repeat;
}
h4{

font-size:20px;
color: #9FD8D6;
margin-top: 40px;
}

.button{
background: #9FD8D6;
width: 250px;
height: 40px;
margin-top: 10px;
 border-radius: 4px;
  color: #1C3147;
  border: none;
  cursor: pointer;
}

.insideform {
	margin-left: 400px;
}
h1{

font-size:40px;
color: #9FD8D6;
/* margin-top: 40px; */
}

.logout{
background: #9FD8D6;
width: 150px;
height: 30px;
  border: none;
  cursor: pointer;
  border-radius: 4px;
}


</style>
</head>
<body>
<h4>Welcome , Admin</h4>
	<div>

		<form:form class ="outsideform" action="actions" method="post">
		<input class ="logout" type="submit" name="logout" value="Logout">
		<center>
		</form:form>
		<form:form class ="insideform" action="actions" method="post">
		<br>
		<br>
			<h1>Cakes & Bakes</h1>
				<input type="submit" class="button" name="orderList" value="View Orders">
				<br>
				<br>
				<input type="submit" class="button" name="searchOrder" value="Search Order">
				<br>
				<br>
				<input type="submit" class="button" name="managecakes" value="Manage Cakes">
				<br>
				<br>
				<input type="submit"  class="button" name="userList" value="View Users">
				<br>
				<br>
			</form:form>
		</center>
	</div>
</body>
</html>