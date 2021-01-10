<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.List, com.zensar.Bean.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>List of Student</h2>
<% List<Student> ListofStudent=(List<Student>) request.getAttribute("listofStudent"); %>

<table border="1">

<th>Roll number</th>
<th>Name</th>
<th>Course</th>
<th>Duration</th>
<th>Age</th>
<th>Gender</th>
<th>Location</th>

<% for(Student student:ListofStudent){ %>
<tr>
<td><%=student.getRollno() %></td>
<td><%=student.getName() %></td>
<td><%=student.getCourse() %></td>
<td><%=student.getDuration() %></td>
<td><%=student.getAge() %></td>
<td><%=student.getGender() %></td>
<td><%=student.getCity() %></td>
<td><a href="deleteStudent?requestAction=delete&rollno=<%=student.getRollno() %>">Delete</a></td>
<td ><a href="updateStudent?requestAction=updateForm&rollno=<%=student.getRollno() %>">Update</a></td>
</tr>
<%} %>


</table>
<br>

<a href="OptionSelect.jsp">Click here to go to main page.</a>
</body>
</html>