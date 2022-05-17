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
background-size: cover;
background-repeat: no-repeat;
}
h1{

font-size:40px;
color: #9FD8D6;

}

font {
	color: white;
}
.back{
width:100px;
height:30px;
  background-color: #4CAF50;
  color: white;

  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

.add{
width:100px;
height:30px;
  background-color: #4CAF50;
  color: white;

  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
</style>
</head>
<body>
<form:form action="actions" method="post">
		<input class="back" type="submit" name="backtomanagecakes" value="back">
		</form:form>
	<center>
<h1>Add New Cake</h1>
		<form:form action="managecakes" method="post" modelAttribute="cake">
		<font>Cake Id :</font>
					<form:input path="cakeId" required="required"/>
					<br>
					<br>
					<font>Cake Name :</font>
					<form:input path="cakeName" required="required" />
					<br>
					<br>
					<font>Cake Price :</font>
					<form:input type ="number" path="cakePrice" required="required" />
					<br>
					<br>
					<input class="add" type="submit" name="newcakesubmit" value="Add"> 
		</form:form>
		<br>
	</center>
</body>
</html>