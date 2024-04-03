<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="addtask" method="post">
<label  for="id">Task Id :</label>
<input type="text" name="taskid" id="id" required><br>
<label  for="title">Task Title :</label>
<input type="text" name="tasktitle" id="title" required><br>
<label  for="descrip">Task Description :</label>
<input type="text" name="taskdescription" id="descrip" required><br>
Options :<label for="option1">
<input type="radio" id="option1" value="low" name="taskpriority">Low
</label>
<label for="option2">
<input type="radio" id="option2" value="medium" name="taskpriority">Medium
</label>
<label for="option3">
<input type="radio" id="option3" value="high" name="taskpriority">High
</label><br>
<label for="date">Due Date :
</label>
<input type="date" name="taskduedate" id="date" >
<input type="submit">

</form>

</body>
</html>