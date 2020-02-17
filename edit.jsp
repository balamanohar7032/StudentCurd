<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.student.dao.StudentDao"%>
    <jsp:useBean id="u" class="com.student.bean.Student"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>update</title>
</head>
<body>
<%  
int i=StudentDao.update(u); 
if(i>0){
response.sendRedirect("Retrive.jsp");
}else{
	response.sendRedirect("editform.jsp");
	
}
%>  

</body>
</html>