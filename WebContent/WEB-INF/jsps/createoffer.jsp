<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="${pageContext.request.contextPath}/static/css/main.css" rel="stylesheet" type="text/css" >
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create Offer</title>
</head>
<body>

	Enter your offer!


	<form class="formTable" method="get"
		action="${pageContext.request.contextPath}/docreate">
		<table>
			<tr>
				<td class="label">Name:</td>
				<td><input class="control" name="name" type="text" /></td>
			</tr>
			<tr>
				<td class="label">Email:</td>
				<td><input class="control" name="email" type="text" /></td>
			</tr>
			<tr>
				<td class="label">Offer Description:</td>
				<td><textarea class="control" name="text" rows="10" cols="40"></textarea></td>
			</tr>
			<tr>
				<td></td>
				<td><input class="control" value="Create offer" type="submit" /></td>
			</tr>
		</table>
	</form>


</body>
</html>