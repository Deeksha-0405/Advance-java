<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Crude operation</title>
</head>
<body>
<form action="login" method="get">
<input type="hidden" name="requestAction" value="Update" />
<h2>Admin Login</h2>
<table>
		<tr>
			<td>Login Id :</td>
			<td><input type="text" name="login" /></td>
		</tr>
		<tr>
			<td>Password :</td>
			<td><input type="text" name="password" /></td>
		</tr>
		<tr>
			<td><input type="submit" value="loginSuccess"/></td>
		</tr>
</table>
</form>
</body>
</html>