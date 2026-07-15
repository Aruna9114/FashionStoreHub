<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fashion Store | Register</title>

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

h2{

    text-align:center;
    color:#8e44ad;
    margin-bottom:25px;
}

label{

    font-weight:bold;
    color:#444;
}

input,textarea{

    width:100%;
    padding:12px;
    margin-top:6px;
    margin-bottom:18px;

    border:1px solid #ccc;
    border-radius:8px;

    font-size:15px;
}

input:focus,
textarea:focus{

    outline:none;

    border:2px solid #8e44ad;
}

textarea{

    resize:none;
    height:80px;
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

.login{

    text-align:center;
    margin-top:18px;
}

.login a{

    text-decoration:none;
    color:#8e44ad;
    font-weight:bold;
}

.login a:hover{

    text-decoration:underline;
}

.logo{

    text-align:center;
    font-size:32px;
    margin-bottom:10px;
}

</style>

</head>

<body>

<div class="container">

<div class="logo">🛍️</div>

<h2>Create Account</h2>

<form action="RegisterServlet" method="post">

<label>Full Name</label>
<input type="text" name="name" placeholder="Enter your full name" required>

<label>Email Address</label>
<input type="email" name="email" placeholder="Enter your email" required>

<label>Password</label>
<input type="password" name="password" placeholder="Enter your password" required>

<label>Phone Number</label>
<input type="text" name="phone" placeholder="Enter your phone number">

<label>Address</label>
<textarea name="address" placeholder="Enter your address"></textarea>

<button type="submit">Register</button>

<div class="login">
Already have an account?
<a href="login.jsp">Login</a>
</div>

</form>

</div>

</body>
</html>