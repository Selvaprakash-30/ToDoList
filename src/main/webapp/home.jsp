<%@page import="java.util.Base64"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="dto.User" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%User u=(User)request.getSession(false).getAttribute("user"); %>
<h1>Welcome <%=u.getUserName()%></h1>
<h4>Gmail :<%=u.getUserEmail() %></h4>
<h4>contact :<%=u.getUserContact() %></h4>
<% String image=new String(Base64.getEncoder().encode(u.getUserImage())); %>
<img alt="" src="data:image/jpeg;base64", <%=image %> width="200" height="200">
</body>
</html>