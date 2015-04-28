<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="${pageContext.request.contextPath}/static/css/main.css"
	rel="stylesheet" type="text/css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/script/jquery-1.11.2.min.js"></script>
<script type="text/javascript">
	function onLoad() {
		$("#password").keyup(checkPasswordMatch);
		$("#confirmpass").keyup(checkPasswordMatch);
		
		$("#details").submit(canSubmit);
	}
	
	function canSubmit(){
		var password = $("#password").val();
		var confirmpass = $("#confirmpass").val();
		
		if(password != confirmpass){
			alert("<fmt:message key='UnmatchedPasswords.user.password' />")
			return false;
		}
		
		return true;
	}

	function checkPasswordMatch() {
		var password = $("#password").val();
		var confirmpass = $("#confirmpass").val();
		
		if (password.length > 3 || confirmpass.length > 3) {
			if (password == confirmpass) {
				$("#matchpass").text("Passwords match");
				$("#matchpass").addClass("valid");
				$("#matchpass").removeClass("error");
			} else {
				$("#matchpass").text("<fmt:message key='UnmatchedPasswords.user.password' />");
				$("#matchpass").addClass("error");
				$("#matchpass").removeClass("valid");
			}
		}

	}

	$(document).ready(onLoad);
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create Account</title>
</head>
<body>
<fmt:message key='UnmatchedPasswords.user.password' />
<fmt:message key="MatchedPasswords.user.password" />
	<h2>Create new account</h2>


	<sf:form id="details" class="formTable" method="post" commandName="user"
		action="${pageContext.request.contextPath}/createaccount">
		<table>
			<tr>
				<td class="label">Username:</td>
				<td><sf:input class="control" path="username" name="username"
						type="text" /> <br /> <sf:errors path="username"
						cssClass="error"></sf:errors></td>
			</tr>
			<tr>
				<td class="label">Email:</td>
				<td><sf:input class="control" path="email" name="email"
						type="text" /> <br /> <sf:errors path="email" cssClass="error"></sf:errors>
				</td>
			</tr>
			<tr>
				<td class="label">Password:</td>
				<td><sf:input class="control" id="password" path="password"
						name="password" type="text" /> <br /> <sf:errors path="password"
						cssClass="error"></sf:errors></td>
			</tr>
			<tr>
				<td class="label">Confirm password:</td>
				<td><input class="control" id="confirmpass" name="confirmpass"
					type="text" />
					<div id="matchpass"></div></td>
			</tr>
			<tr>
				<td></td>
				<td><input class="control" value="Create account" type="submit" /></td>
			</tr>
		</table>
	</sf:form>


</body>
</html>
