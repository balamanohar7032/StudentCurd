<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="validate.js"></script>
<link rel="stylesheet" type="text/css" href="Student.css"> 
</head>
<body><center>
<h1 >Student Form</h1>
<form action="addStudent.jsp" method="post" name="myform" onsubmit="return validate();" >
  
<table>
   
    <tr>
     <td>id<td>
     <td> <input type="text" name="id"> </td>
    </tr>
     
    <tr>
     <td>FirstName <td>
     <td> <input type="text" name="firstname"> </td>
     
    </tr>
     <tr>
     <td>Last Name <td>
     <td> <input type="text" name="lastname"> </td>
    </tr>
     <tr>
     <td>Roll Number <td>
     <td> <input type="text" name="rollnumber"> </td>
    </tr>
    <tr> 
     <td>Address<td>
     <td> <input type="text" name="address"> </td>
    </tr>
     <tr> 
     <td>Mathematics<td>
     <td> <input type="text" name="maths"> </td>
    </tr>
    <tr> 
     <td>physics<td>
     <td> <input type="text" name="physics"> </td>
    </tr>
    <tr> 
     <td>English<td>
     <td> <input type="text" name="english"> </td>
    </tr>
    <tr>
     <td> <input type="submit" name="submit" value="Insert"> </td> 
    </tr>
     
   </table>
  
   
  </form>
   </center>
      

</body>
</html>