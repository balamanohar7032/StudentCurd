<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "java.io.*,java.util.*,java.sql.* " %>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
 <%@page import="com.student.dao.StudentDao,com.student.bean.*,java.util.*"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://ibasesqldb:3306/manohar"
         user = "root"  password = "1Base1t"/>
 
      <sql:query dataSource = "${snapshot}" var = "result">
         select *  from student_info inner join studentaddress on studentaddress.student_id = student_info.student_id inner join Studentmarks on Studentmarks.Student_id = student_info.student_id;
      </sql:query>
 
      <table border = "1" width = "100%">
         <tr>
            <th>Student_ ID</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>roll number</th>
            <th>address</th>
            <th>maths</th>
            <th>english</th>
            <th>physics</th>
         </tr>
         
         <c:forEach var = "row" items = "${result.rows}">
            <tr>
               <td><c:out value = "${row.Student_id}"/></td>
               <td><c:out value = "${row.firstname}"/></td>
               <td><c:out value = "${row.lastname}"/></td>
               <td><c:out value = "${row.rollnumber}"/></td>
                <td><c:out value = "${row.address}"/></td>
                 <td><c:out value = "${row.maths}"/></td>
                  <td><c:out value = "${row.english}"/></td>
                   <td><c:out value = "${row.physics}"/></td>
            </tr>
         </c:forEach>
      </table>
 
 
 


</body>
</html>