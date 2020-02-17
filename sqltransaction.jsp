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
 <c:set var="StudentId" value="101"/>  
 <sql:transaction dataSource="${snapshot}">  
   <sql:update var="count">  
      UPDATE Student_info SET firstname = 'balamanohar' WHERE Student_id = ? 
      <sql:param value="${StudentId}" />   
   </sql:update>  
   <sql:update var="count">  
      UPDATE Student_info SET lastname= 'velpula' WHERE Student_id = 101  
   </sql:update>  
   
</sql:transaction> 
<% 
String site = new String("Retrive.jsp");
         response.setStatus(response.SC_MOVED_TEMPORARILY);
         response.setHeader("Location", site); %> 

</body>
</html>