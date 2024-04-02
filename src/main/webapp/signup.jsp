<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
#cont{
border:1px solid black;
width:800px;
padding:100px;
position:absolute;
}
</style>
</head>
<body>
<div >
<form id="cont" action="saveuser" method="post" enctype="multipart/form-data">
<label for="uid">Id  :</label>
<input type="text" name="id" id="uid">
<br>
<br>
<label for="unam">Name  :</label>
<input type="text" name="name" id="unam">
<br>
<br>
<label for="uem">Email  :</label>
<input type="text" name="email" id="uem">
<br>
<br>
<label for="con">Contact  :</label>
<input type="text" name="contact" id="con">
<br>

<br>
<label for="upw">Password  :</label>
<input type="text" name="password" id="upw">
<br>
<br>
<label for="img">Image  :</label>
<input type="file" name="image" id="img">
<br>
<br>
<input type="submit">
</form>
</div>
</body>
</html>