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
body{
background-image: url("https://s1.1zoom.me/big0/758/Sweets_Cake_Chocolate_Cupcake_552690_1280x776.jpg");
}
</style>
</head>
<body>
	<div>
		<center>
		<h4 style="color: white">No records Found!</h4>
		<br>
		<br>
		<form:form action="actions" method="post">
		<input class ="backbutton" type="submit" name="back" value="back">
		<br>
		<br>
			</form:form>
		</center>
	</div>
</body>
</html>