<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create Offer</title>
</head>
<body>

	Enter your offer!


	<form method="get" action="${pageContext.request.contextPath}/docreate">
		<table>
			<tr>
				<td>Name:</td>
				<td><input name="name" type="text" /></td>
			</tr>
			<tr>
				<td>Email:</td>
				<td><input name="email" type="text" /></td>
			</tr>
			<tr>
				<td>Offer Description:</td>
				<td><textarea name="offerDesc" rows="10" cols="40"></textarea></td>
			</tr>
			<tr>
				<td></td>
				<td><input value="Create offer" type="submit" /></td>
			</tr>
		</table>
	</form>


</body>
</html>