<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Student</title>
</head>
<body>
<form action="AddStudent"  method="Post">
	<table>
		<tr>
			<td>Roll number :</td>
			<td><input type="text" name="rollno" /></td>
		</tr>
		<tr>
			<td>Name :</td>
			<td><input type="text" name="name" /></td>
		</tr>
		<tr>
			<td>Course :</td>
			<td><input type="text" name="course" /></td>
		</tr>
		<tr>
			<td>Duration :</td>
			<td><input type="text" name="duration" /></td>
		</tr>
		<tr>
			<td>Age :</td>
			<td><input type="text" name="age" /></td>
		</tr>
		<tr>
			<td>Gender :</td>
			<td>Male<input type="radio" name="gender" value="male" /></td>
			<td>Female<input type="radio" name="gender" value="female" /></td>
			<td>Other<input type="radio" name="gender" value="other" /></td>
		</tr>
		<tr>
			<td>City :</td>
			<td>
				<td>
				<select name="city" id="city">
					<option value="pune">Pune</option>
					<option value="mumbai">Mumbai</option>
					<option value="lonavala">Lonavala</option>
					<option value="nashik">Nashik</option>
					<option value="nagpur">Nagpur</option>
					<option value="satara">Satara</option>
				</select>
			</td>
		</tr>
		<tr>
			<td><input type="submit" value="Add Student"/></td>
		</tr>
	</table>
</form>
</body>
</html>