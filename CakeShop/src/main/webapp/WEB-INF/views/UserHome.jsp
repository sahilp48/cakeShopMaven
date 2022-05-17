<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Cake's Bake</title>
<style type="text/css">
label {
	display: inline-block;
	width: 200px;
	margin: 5px 5px 5px 5px;
	text-align: left;
}

input[type=text], input[type=password], select {
	width: 200px;
}

button {
	margin: 5px 5px 5px 5px;
	padding: 5px;
}

input[type=checkbox] {
	display: inline-block;
	margin-right: 190px;
}

input[type=radio] {
	display: inline-block;
	margin-left: 45px;
}

.error {
	color: red;
}
body{
background-image: url("https://s1.1zoom.me/big0/758/Sweets_Cake_Chocolate_Cupcake_552690_1280x776.jpg");
background-size: cover;
background-repeat: no-repeat;
}

h1{

font-size:40px;
color: #9FD8D6;
/* margin-top: 40px; */
}
h4{

font-size:20px;
color: #9FD8D6;
margin-top: 10px;
}

a{
color: #D3D3D3;
}

div{
/* background-color: grey; */
margin :150px 50px 0px 800px ;
border:2px solid #9FD8D6;

}
button{
/* background-color: #2F4F4F; */
/* color: #D3D3D3; */
width: 150px;

}


.txtbox{

width:300px !important; 
height: 25px;
}

.outsideform {

	margin-top: 40px;
	
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

ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
  position: -webkit-sticky; /* Safari */
  position: sticky;
  top: 0;
}

li {
  float: left;
  margin-left: 50px
}
.logouts{
 float: right;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover {
  background-color: #111;
}

.active {
  background-color: #4CAF50;
}


</style>
</head>
<body>
<!-- <ul>
  <li><a class="active" href="#home">Home</a></li>
  <li><a href="#news">News</a></li>
  <li><a href="#contact">Contact</a></li>
  <li><a href="#contact">Contact</a></li>
  <li><a href="#contact">Contact</a></li>
  
  <li class="logouts"><a href="#contact">Logout</a></li>
</ul> -->
<br>
<br>
<h4>Welcome, ${username}</h4>
<form:form  class ="outsideform" action="actions" method="post">
		<input class ="logout" type="submit" name="logout" value="Logout">
		</form:form>
		
	<div>
	
		<center>
		<h1>Cakes & Bakes</h1>
		
		<br>
		
		<form:form  action="userhome" method="post">
	

				<input class="button" type="submit" name="buycake" value="Buy Cake">
				<br>
				<br>
				<input  class="button" type="submit" name="userorderhistory" value="Order History">
				<br>
				<br>
				<input  class="button" type="submit" name="deleteorder" value="Delete Order">
				<br>
				<br>
			</form:form>
		</center>
	</div>
</body>
</html>