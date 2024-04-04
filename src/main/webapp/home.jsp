<%@page import="dto.Task"%>
<%@page import="java.util.Base64"%>
<%@page import="java.util.List" %>
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

<%User u=(User)request.getSession().getAttribute("user"); %>
<h1>Welcome <%=u.getUserName()%></h1>
<h4>Gmail :<%=u.getUserEmail() %></h4>
<h4>contact :<%=u.getUserContact() %></h4>
<% String image=new String(Base64.getEncoder().encode(u.getUserImage())); %>
<img alt="" src="data:image/jpeg;base64, <%=image %>" width="200px" height="200px"><br>
<a href="addtask.jsp">Add Task</a><br>
<h3>Tasks</h3><br>
<% List<Task> tasks = (List)request.getAttribute("tasks"); %>
<table>
<thead>
<tr>
<th>Id</th>
<th>Title</th>
<th>Description</th>
<th>Priority</th>
<th>DueDate</th>
<th>Status</th>
</tr>
</thead>
<tbody>
<%for(Task task:tasks){ %>
<tr>
<td><%= task.getTaskid() %></td>
<td><%= task.getTasktitle() %></td>
<td><%= task.getTaskdescription() %></td>
<td><%= task.getTaskpriority() %></td>
<td><%= task.getTaskduedate() %></td>
<td><%= task.getTaskstatus() %></td>
</tr>
<%} %>
</tbody>
</table>
</body>
</html>