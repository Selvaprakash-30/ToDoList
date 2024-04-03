<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">

@import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');

*{
margin:0px;
padding:0px;
box-sizing:border-box;
font-family:"Poppins",sans-serf;
}
body{
display:flex;
justify-content:center;
align-items:center;
min-height:100vh;
flex-direction:column;
background-image:url(https://e1.pxfuel.com/desktop-wallpaper/407/1022/desktop-wallpaper-website-backgrounds-login-page.jpg);
background-size:cover;

}
h1{
color:white;
}
#container{
width:300px;
height:200px;
display:flex;
flex-direction:column;
box-shadow:0 8px 32px 0 rgba(31,38,135,.37);
border-radius:30px;
}
#a1{
margin-top:30px;
}
a{
border:1px solid black;
border-radius:20px;
width:200px;
display:inline;
font-size:20px;
margin-top:20px;
margin-left:50px;
text-align:center;
color:white;
text-decoration:none;
}
a:hover{
color:red;
backgroun:blue;
}

</style>
</head>
<body>
<h1>To Do List</h1>
 <div id="container">
 <a id="a1" class="anc" href="login.jsp">Login</a>
 <br>
 <a class="anc" href="signup.jsp">Sign Up</a>
 </div>
</body>
</html>