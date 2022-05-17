
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
}
h1{

font-size:40px;
color: #9FD8D6;

}
font {
	color: white;
}

input{
width:300px !important; 
height: 25px;
  padding: 12px 20px;

  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
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
</style>
</head>
<body>

	<div align="center">

		<h1> New User Registration</h1>

		<form:form action="registrationSuccess" method="post" modelAttribute="logindetails" >
			<form:input path="name" required ="required" placeholder="Enter Username"/>
			<br />
			<br>

			<form:password path="password"  placeholder="Enter Password" title="Password should contain atleast one lowercase,one uppercase,one numeric value , one special character and length should be greater than or equal to 8 and less or equal to 16" pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*_=+-]).{8,16}$"  required ="required"/>
			<br>
			<br>
			<form:input type="tel"  placeholder="Enter Mobile Number" path="mobileNumber" pattern="[0-9]{3}[0-9]{2}[0-9]{5}" required="required"/>
			<br>
			<br>
			<form:button>Register</form:button>
		</form:form>


	</div>
</body>
</html>