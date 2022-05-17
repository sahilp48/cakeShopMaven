
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Registration</title>
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
	padding: 10px;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
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
margin-top: 40px;
}
h2{
font-size:30px;
color: #9FD8D6;
margin-top: 40px;
font-style: oblique;
margin-left: 20px;
}
a{
color: #D3D3D3;
}

div{

margin :150px 50px 0px 800px ;
 border-style: double;
 border-color: white;
 backdrop-filter:blur(10px);

}
button{
/* background-color: #2F4F4F; */
/* color: #D3D3D3; */
width: 150px;

}


.txtbox{
width:300px !important; 
height: 25px;
  padding: 12px 20px;

  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

form {


	margin-top: 80px;
	
}
.errormsg{
color: red;
font-size: 12px;
}
</style>
</head>
<body>
<h2>Let us bake a sweet memory for you!</h2>
	<div align="center">

		<h1>Cakes & Bakes</h1>


		<form:form action="login" method="post" modelAttribute="logindetails">
			<form:input class="txtbox" path="name" placeholder="Username" required ="required"/>
			<br />
			<br>
			<form:password class="txtbox" path="password" placeholder="Password" required ="required"/>
			<br>
			<span class="err"><font class="errormsg">${errorMsg}</font></span>
			<br>
			<br>
			<a href="/CakeShop/registration">New Registration</a>
			<br>
			<br>
			<form:button>Login</form:button>
			<br>
			<br>
		</form:form>


	</div>
</body>
</html>