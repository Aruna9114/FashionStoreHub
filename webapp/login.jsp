<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fashion Store | Login</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:Arial, Helvetica, sans-serif;
}

body{

    height:100vh;

    display:flex;
    justify-content:center;
    align-items:center;

    background:linear-gradient(135deg,#ff758c,#ff7eb3,#8e44ad);
}

.container{

    width:420px;
    background:white;
    padding:35px;
    border-radius:15px;
    box-shadow:0 10px 30px rgba(0,0,0,.3);

}

.logo{

    text-align:center;
    font-size:40px;
    margin-bottom:10px;
}

h2{

    text-align:center;
    color:#8e44ad;
    margin-bottom:25px;
}

label{

    font-weight:bold;
    color:#444;
}

input{

    width:100%;
    padding:12px;
    margin-top:6px;
    margin-bottom:18px;

    border:1px solid #ccc;
    border-radius:8px;

    font-size:15px;
}

input:focus{

    outline:none;

    border:2px solid #8e44ad;
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

    transition:.3s;
}

button:hover{

    background:#6c3483;
}

.register{

    text-align:center;
    margin-top:18px;
}

.register a{

    text-decoration:none;
    color:#8e44ad;
    font-weight:bold;
}

.register a:hover{

    text-decoration:underline;
}

.message{

    text-align:center;
    color:red;
    margin-bottom:15px;
    font-weight:bold;
}

</style>

</head>

<body>

<div class="container">

<div class="logo">🛍️</div>

<h2>Welcome Back</h2>

<%
String msg = request.getParameter("msg");
if(msg != null){
%>

<div class="message">
<%=msg %>
</div>

<%
}
%>

<form action="LoginServlet" method="post">

<label>Email Address</label>
<input type="email" name="email" placeholder="Enter your email" required>

<label>Password</label>
<input type="password" name="password" placeholder="Enter your password" required>

<button type="submit">Login</button>

<div class="register">
Don't have an account?
<a href="register.jsp">Create Account</a>
</div>

</form>

</div>

</body>
</html>