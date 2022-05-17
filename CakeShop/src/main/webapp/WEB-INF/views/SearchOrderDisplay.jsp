<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"  isELIgnored="false"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
table, th, tr, td {
	border: 2px solid black;
	border-collapse: collapse;
	padding: 5px;
	background-color: #f2f2f2;
}</style>
</head>
<body>
	<div align="center">
		 <h1>Search Result!!</h1>


 		<table>
			<tr>
				<th>Order Id</th>
				<th>Order Name</th>
				<th>Quantity</th>
				<th>Price</th>
				
			</tr>
				<tr>
					<th>${id}</th>
					<th>${name}</th>
					<th>${quantity}</th>
					<th>${price}</th>
				</tr>
		</table> 
			
	</div>
</body>
</html>