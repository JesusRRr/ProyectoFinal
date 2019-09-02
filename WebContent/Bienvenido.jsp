<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bienvenido</title>
</head>
<body>
	
	
	<%if(session.getAttribute("usuario")==null){
		response.sendRedirect("login.jsp");
	}
	%>
	
	<h2>Bienvenido</h2>
</body>
</html>