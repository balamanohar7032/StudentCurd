<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.student.dao.StudentDao,com.student.bean.*,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Retrive page</title>
</head>
<body><center>
<h1 style="color:blue;">Students List</h1> </center>
<%  
List<Student> list=StudentDao.getAllRecords();  
request.setAttribute("list",list);  
%>   
<table border="1" width="90%">  
<tr><th>Id</th><th>firstName</th><th>lastname</th><th>rollnumber</th>  
<th>address</th><th>maths</th><th>english</th><th>physics</th><th>edit</th><th>delete</th></tr>  
<c:forEach items="${list}" var="u">  
<tr><td>${u.getId()}</td><td>${u.getFirstname()}</td><td>${u.getLastname()}</td>  
<td>${u.getRollnumber()}</td><td>${u.getAddress()}</td><td>${u.getMaths()}</td><td>${u.getEnglish()}</td><td>${u.getPhysics()}</td>  
<td><a href="editform.jsp?id=${u.getId()}">Edit</a></td>  
<td><a href="delete.jsp?id=${u.getId()}">Delete</a></td></tr>  
</c:forEach>  
</table>  
<br/><a href="addstudentpage.jsp">Add New Student</a> 
 <center><br/><a href="adminlogin.jsp"><h2>logout</h2></a> </center>

</body>
</html>