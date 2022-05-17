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
	color: white;
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
</style>
<body>
	<center>

		</a> <br> <br>
		<table >
			<tr>
				<th>User Name</th>
				<th>Password</th>
				<th>Mobile Number</th>
			</tr>
			<c:forEach items="${userList}" var="user">
				<tr>
					<th>${user.name}</th>
					<th>${user.password}</th>
					<th>${user.mobileNumber}</th>
				</tr>
			</c:forEach>
		</table>

		<br>
		<form:form action="actions" method="post">
			<input class="back" type="submit" name="back" value="Back">
		</form:form>
	</center>
</body>
</html>