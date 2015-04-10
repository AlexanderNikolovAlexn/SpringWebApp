<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
	<tr>
		<td>ID</td>
		<td>Name</td>
		<td>Email</td>
		<td>Text</td>
	</tr>
	<c:forEach var="offer" items="${offers}">
	<tr>
	   <td>${offer.id}</td>
	   <td>${offer.name}</td>
	   <td>${offer.email}</td>
	   <td>${offer.text}</td>   
    </tr>
	</c:forEach>
	</table>
</body>
</html>