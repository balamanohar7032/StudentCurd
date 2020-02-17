<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.student.dao.StudentDao,com.student.bean.*"%>
     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Form</title>
<link rel="stylesheet" type="text/css" href="edit.css"> 
</head>
<body>
 
<%  
String id=request.getParameter("id");  
Student u=StudentDao.getRecordById(Integer.parseInt(id));  
%>
<center>
 <h1>Edit Form</h1>  
<form action="edit.jsp" method="post">

<input type="hidden" name="id" value="<%=u.getId() %>"/>  
<table>
   
    <tr>
     <td>FirstName <td>
     <td> <input type="text" name="firstname" value="<%=u.getFirstname() %>" ></td>
     
    </tr>
     <tr>
     <td>Last Name <td>
     <td> <input type="text" name="lastname" value="<%=u.getLastname() %>"> </td>
    </tr>
     <tr>
     <td>Roll Number <td>
     <td> <input type="text" name="rollnumber" value="<%=u.getRollnumber() %>"> </td>
    </tr>
    <tr> 
     <td>Address<td>
     <td> <input type="text" name="address" value="<%=u.getAddress() %>"> </td>
    </tr>
     <tr> 
     <td>Mathematics<td>
     <td> <input type="text" name="maths" value="<%=u.getMaths() %>"> </td>
    </tr>
    <tr> 
     <td>physics<td>
     <td> <input type="text" name="physics" value="<%=u.getPhysics() %>"> </td>
    </tr>
    <tr> 
     <td>English<td>
     <td> <input type="text" name="english" value="<%=u.getEnglish() %>"> </td>
    </tr>
    <tr>
     <td> <input type="submit" name="submit" value="update"> </td> 
    </tr>
     
   </table>
  
   
  </form> 
  </center>

</body>
</html>