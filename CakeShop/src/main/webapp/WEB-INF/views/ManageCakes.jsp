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
h1{

font-size:40px;
color: #9FD8D6;

}
h4{

font-size:20px;
color: #9FD8D6;
margin-top: 40px;
}

a{
color: #D3D3D3;
}
.logout{
background: #9FD8D6;
width: 150px;
height: 30px;
  border: none;
  cursor: pointer;
  border-radius: 4px;
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
.innerform{
margin-left: 500px;
}
</style>
</head>
<body>
	<div>
		
		<h4>You have logged in as admin</h4>
		<form:form action="actions" method="post">
		<input type="submit" class="logout" name="logout" value="Logout">
		</form:form>
		<center>
		<br>
		<br>
		<form:form class ="innerform" action="managecakes" method="post">
			<h1>Manage Cakes</h1>
				<input type="submit" class="button" name="newcake" value="Add New Cake">
				<br>
				<br>
				<input type="submit" class="button" name="updatecake" value="Update Cake">
				<br>
				<br>
				<input type="submit" class="button" name="deletecake" value="Delete Cake">
				<br>
				<br>
				<input type="submit" class="button" name="viewcakes" value="View Cakes">
				<br>
				<br>
			</form:form>
		</center>
	</div>
</body>
</html>