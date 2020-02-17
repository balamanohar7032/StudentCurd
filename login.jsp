<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="com.student.dao.StudentDao,com.student.bean.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>student details</title>
</head>
<body>
<%  
String id=request.getParameter("id");  
Student u=StudentDao.getRecordById(Integer.parseInt(id));  
%><table border="1">
<tr >
   <th>id</th>
   <th>firstname</th>
   <th>lastname</th>
   <th>rollnumber</th>
   <th>address</th>
   <th>maths</th>
   <th>english</th>
   <th>physics</th>
   </tr>
   <tr> 
		 <td><%=u.getId() %></td>
		<td><%=u.getFirstname() %></td>
		 <td><%=u.getLastname() %></td>
		 <td><%=u.getRollnumber() %></td>
		 <td><%=u.getAddress() %></td>
		<td><%=u.getMaths() %></td>
		 <td><%=u.getPhysics() %></td>
		<td><%=u.getEnglish() %></td>
</tr>
</table>
<center><br/><a href="Studentlogin.jsp"><h2>logout</h2></a> </center>
</body>
</html>