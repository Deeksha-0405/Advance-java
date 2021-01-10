<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.zensar.Bean.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% Student student=(Student)request.getAttribute("student"); %>
<form action="UpdateStudent">
	<table>
		<tr>
			<td>Roll number :</td>
			<td><input type="text" name="rollno" value="<%=student.getRollno() %>" /></td>
		</tr>
		<tr>
			<td>Name :</td>
			<td><input type="text" name="name" value="<%=student.getName() %>" /></td>
		</tr>
		<tr>
			<td>Course :</td>
			<td><input type="text" name="course" value=<%=student.getCourse() %> /></td>
		</tr>
		<tr>
			<td>Duration :</td>
			<td><input type="text" name="duration" value="<%=student.getDuration() %>" /></td>
		</tr>
		<tr>
			<td>Age :</td>
			<td><input type="text" name="age" value="<%=student.getAge() %>" /></td>
		</tr>
		<tr>
			<td>Gender :</td>
			<% if(student.getGender().equalsIgnoreCase("male")){ %>
			<td>Male<input type="radio" name="gender" value="male"  checked></td>
			 <td>Female<input type="radio" name="gender" value="female" ></td>
			 <td>Other<input type="radio" name="gender" value="other" ></td>
      <% } else if(student.getGender().equalsIgnoreCase("female")) { %>
       <td>Male<input type="radio" name="gender" value="male" ></td>
	   <td>Female<input type="radio" name="gender" value="female" checked></td>
	   <td>Other<input type="radio" name="gender" value="other" ></td>
      <% } else { %>
      	  <td>Male<input type="radio" name="gender" value="male" ></td>
	     <td>Female<input type="radio" name="gender" value="female"></td>
         <td>Other<input type="radio" name="gender" value="other" checked></td>
      <% } %>
			
		</tr>
		<tr>
			<td>City :</td>
			<td>
				<td>
				<% if (student.getCity().equalsIgnoreCase("pune")) { %>
        <select name="city" id="city" >
					<option value="pune" selected>Pune</option>
					<option value="mumbai">Mumbai</option>
					<option value="lonavala">Lonavala</option>
					<option value="nashik">Nashik</option>
					<option value="nagpur">Nagpur</option>
					<option value="satara">Satara</option>
				</select>
	   <% } else if(student.getCity().equalsIgnoreCase("mumbai")) { %>
	    <select name="city" id="city" >
					<option value="pune">Pune</option>
					<option value="mumbai" selected>Mumbai</option>
					<option value="lonavala">Lonavala</option>
					<option value="nashik">Nashik</option>
					<option value="nagpur">Nagpur</option>
					<option value="satara">Satara</option>
				</select>
	      <% } else if(student.getCity().equalsIgnoreCase("lonavala")) { %>
         <select name="city" id="city" >
					<option value="pune">Pune</option>
					<option value="mumbai">Mumbai</option>
					<option value="lonavala" selected>Lonavala</option>
					<option value="nashik">Nashik</option>
					<option value="nagpur">Nagpur</option>
					<option value="satara">Satara</option>
				</select>
	   
	     <% } else if(student.getCity().equalsIgnoreCase("nashik")) { %>
	     <select name="city" id="city" >
					<option value="pune">Pune</option>
					<option value="mumbai" >Mumbai</option>
					<option value="lonavala">Lonavala</option>
					<option value="nashik" selected>Nashik</option>
					<option value="nagpur">Nagpur</option>
					<option value="satara">Satara</option>
				</select>
		 <% } else if(student.getCity().equalsIgnoreCase("nagpur")) { %>
      	   <select name="city" id="city" >
					<option value="pune">Pune</option>
					<option value="mumbai" >Mumbai</option>
					<option value="lonavala">Lonavala</option>
					<option value="nashik" >Nashik</option>
					<option value="nagpur" selected>Nagpur</option>
					<option value="satara">Satara</option>
				</select>
				
		<% } else { %>
		
		 <select name="city" id="city" >
					<option value="pune">Pune</option>
					<option value="mumbai" >Mumbai</option>
					<option value="lonavala">Lonavala</option>
					<option value="nashik">Nashik</option>
					<option value="nagpur">Nagpur</option>
					<option value="satara" selected>Satara</option>
				</select>
		
  
      <% } %>
        
				
			</td>
		</tr>
		<tr>
			<td><input type="submit" value="Add Student"/></td>
		</tr>
	</table>
</form>
</body>
</html>