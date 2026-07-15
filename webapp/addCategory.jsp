<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Category</title>

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:Arial,sans-serif;
}

body{

height:100vh;

display:flex;

justify-content:center;

align-items:center;

background:linear-gradient(135deg,#ff758c,#ff7eb3,#8e44ad);

}

.container{

width:450px;

background:white;

padding:35px;

border-radius:15px;

box-shadow:0 10px 30px rgba(0,0,0,.3);

}

h2{

text-align:center;

color:#8e44ad;

margin-bottom:20px;

}

input,textarea{

width:100%;

padding:12px;

margin:10px 0;

border-radius:8px;

border:1px solid #ccc;

font-size:15px;

}

textarea{

height:100px;

resize:none;

}

button{

width:100%;

padding:14px;

background:#8e44ad;

color:white;

border:none;

border-radius:8px;

font-size:17px;

cursor:pointer;

}

button:hover{

background:#6c3483;

}

.message{

text-align:center;

font-weight:bold;

color:green;

margin-bottom:15px;

}

</style>

</head>

<body>

<div class="container">

<h2>📂 Add Category</h2>

<%
String msg=request.getParameter("msg");

if(msg!=null){
%>

<div class="message">

<%=msg%>

</div>

<%
}
%>

<form action="AddCategoryServlet" method="post">

<input type="text"
name="categoryName"
placeholder="Category Name"
required>

<textarea
name="description"
placeholder="Category Description"></textarea>

<button type="submit">

Add Category

</button>

</form>

</div>

</body>
</html>