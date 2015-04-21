<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="${pageContext.request.contextPath}/static/css/main.css" rel="stylesheet" type="text/css" >
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create Offer</title>
</head>
<body>

	Enter your offer!


	<sf:form class="formTable" method="post" commandName="offer"
		action="${pageContext.request.contextPath}/docreate">
		<table>
			<tr>
				<td class="label">Name:</td>
				<td><sf:input class="control" path="name" name="name" type="text" /></td>
			</tr>
			<tr>
				<td class="label">Email:</td>
				<td><sf:input class="control" path="email" name="email" type="text" /></td>
			</tr>
			<tr>
				<td class="label">Offer Description:</td>
				<td><sf:textarea class="control" path="text" name="text" rows="10" cols="40"></sf:textarea></td>
			</tr>
			<tr>
				<td></td>
				<td><input class="control" value="Create offer" type="submit" /></td>
			</tr>
		</table>
	</sf:form>


</body>
</html>