<%@ page import="com.fashionstore.model.User"%>

<%
User user = (User)session.getAttribute("user");

if(user == null){
    response.sendRedirect("login.jsp");
    return;
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fashion Store | Home</title>

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:Arial, Helvetica, sans-serif;
}

body{

background:linear-gradient(135deg,#ff758c,#ff7eb3,#8e44ad);
height:100vh;

display:flex;
justify-content:center;
align-items:center;

}

.container{

width:600px;

background:white;

padding:40px;

border-radius:15px;

box-shadow:0 10px 25px rgba(0,0,0,.3);

text-align:center;

}

.logo{

font-size:60px;

margin-bottom:20px;

}

h1{

color:#8e44ad;

margin-bottom:25px;

}

table{

width:100%;

margin-top:20px;

border-collapse:collapse;

}

td{

padding:12px;

border-bottom:1px solid #ddd;

text-align:left;

}

.logout-btn{

display:inline-block;

margin-top:30px;

padding:12px 30px;

background:#8e44ad;

color:white;

text-decoration:none;

border-radius:8px;

font-size:18px;

transition:.3s;

}

.logout-btn:hover{

background:#6c3483;

}

</style>

</head>

<body>

<div class="container">

<div class="logo">🛍️</div>

<h1>Welcome <%=user.getName()%></h1>

<table>

<tr>
<td><b>Email</b></td>
<td><%=user.getEmail()%></td>
</tr>

<tr>
<td><b>Phone</b></td>
<td><%=user.getPhone()%></td>
</tr>

<tr>
<td><b>Address</b></td>
<td><%=user.getAddress()%></td>
</tr>

</table>

<a href="LogoutServlet" class="logout-btn">
Logout
</a>

</div>

</body>
</html>