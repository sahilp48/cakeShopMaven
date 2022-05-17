<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Customer</title>
</head>
<style type="text/css">
table, th, tr, td {
	border: 2px solid white;
	border-collapse: collapse;
	padding: 5px;
	color: white
	
}
body{
background-image: url("https://s1.1zoom.me/big0/758/Sweets_Cake_Chocolate_Cupcake_552690_1280x776.jpg");
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
<body>
<br>
<br>
	<center>
		
		</a> <br> <br>
		<table >
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
		<form:form action="actions" method="post">
		<input type="submit" class="back" name="backtomanagecakes" value="back">
		</form:form>
	</center>
</body>
</html>