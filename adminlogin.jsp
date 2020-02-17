<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>admin page</title>
<Script>
function admin(){
	var name=document.myform.adminname.value;
	var password=document.myform.password;
	if(name!="admin"  || name=="" ){
		
		alert("invalid admin name");
		return false;
	}if(password.value!="admin"  || password.value=="" ){
		
		alert("invalid password ");
		return false;
	}
	
	return true;
	
	}



</Script>
<link rel="stylesheet" type="text/css" href="edit.css"> 
</head>
<body >
<center> <h1>Admin Login </h1>
<form action="Retrive.jsp"  name="myform" onsubmit="return admin()" >
 
<table>
   
    <tr>
     <td>admin Name<td>
     <td> <input type="text" name="adminname"> </td>
    </tr>
    <tr>
     <td>password<td>
     <td> <input type="password" name="password"> </td>
    </tr>
     <tr>
     <td> <input type="submit" name="submit" value="login"> </td> 
    </tr>
    </table>
     
    </form>
</center>

</body>
</html>