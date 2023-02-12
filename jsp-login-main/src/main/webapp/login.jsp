<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>

<%!
	String emailVal="1@gmail.com";
	String pass="pass";
%>

<%
	String email=request.getParameter("email");
	String password=request.getParameter("pass");
	
	if(email.isEmpty() || password.isEmpty())
		throw new ServletException("Email or Password is empty");
	
	if(email.equals(emailVal) && password.equals(pass))
		out.println("Login successful ");
	else
		out.println("invalid email or password ");
%>

</body>
</html>