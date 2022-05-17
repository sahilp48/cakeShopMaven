<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Customer</title>
<style type="text/css">
body{
background-image: url("https://s1.1zoom.me/big0/758/Sweets_Cake_Chocolate_Cupcake_552690_1280x776.jpg");
}
h1{

font-size:40px;
color: #9FD8D6;
margin-top: 40px;
}
.delete{

	width:100px;
	height:20px;
  background-color: #4CAF50;
  color: white;
  border: none;
  border-radius: 4px;
  cursor: pointer;
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
</head>
<body>
<form:form action="actions" method="post">
		<input type="submit" class="back" name="backtomanagecakes" value="back">
		</form:form>
	<center>
<h1>Delete Cake</h1>
		<form:form action="managecakes" method="post" modelAttribute="cake">
		<font color="white">Cake Id :</font>
					
					<form:input path="cakeId" />
					<span class="err" style="color: white;">${ErrMsg}</span>
					<br>
					<br>
					<input type="submit" class="delete" name="deletecakesubmit" value="Delete"> 
		</form:form>
		<br> 
	</center>
</body>
</html>