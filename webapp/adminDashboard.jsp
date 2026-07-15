<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.fashionstore.model.Admin"%>

<%
Admin admin = (Admin)session.getAttribute("admin");

if(admin == null){
    response.sendRedirect("adminLogin.jsp");
    return;
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fashion Store | Admin Dashboard</title>

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
    width:850px;
    background:#fff;
    padding:40px;
    border-radius:18px;
    box-shadow:0 10px 30px rgba(0,0,0,.25);
    text-align:center;
}

.logo{
    font-size:60px;
    margin-bottom:15px;
}

h1{
    color:#8e44ad;
    margin-bottom:10px;
}

p{
    font-size:20px;
    margin-bottom:35px;
}

.menu{
    display:grid;
    grid-template-columns:repeat(2,1fr);
    gap:20px;
}

.menu a{

    text-decoration:none;
    background:#8e44ad;
    color:white;

    padding:20px;

    border-radius:12px;

    font-size:22px;

    transition:.3s;

}

.menu a:hover{

    background:#6c3483;

    transform:scale(1.05);

}

.logout{

    margin-top:40px;

}

.logout a{

    background:#e74c3c;

    color:white;

    text-decoration:none;

    padding:14px 30px;

    border-radius:10px;

    font-size:18px;

    transition:.3s;

}

.logout a:hover{

    background:#c0392b;

}

</style>

</head>

<body>

<div class="container">

<div class="logo">👑</div>

<h1>Admin Dashboard</h1>

<p>Welcome, <b><%=admin.getUsername()%></b></p>

<div class="menu">

<a href="addProduct.jsp">
➕ Add Product
</a>

<a href="viewProducts.jsp">
📦 View Products
</a>

<a href="#">
✏️ Update Product
</a>

<a href="#">
🗑️ Delete Product
</a>

<div class="menu">

<a href="addCategory.jsp">
📂 Add Category
</a>

<a href="viewCategories.jsp">
📋 View Categories
</a>

<a href="addProduct.jsp">
➕ Add Product
</a>

<a href="viewProducts.jsp">
📦 View Products
</a>

<a href="#">
✏️ Update Product
</a>

<a href="#">
🗑️ Delete Product
</a>

<a href="#">
👥 View Users
</a>

<a href="#">
📦 Orders
</a>

<a href="#">
💳 Payments
</a>

<a href="#">
📊 Reports
</a>

</div>

</div>

<div class="logout">

<a href="LogoutServlet">
🚪 Logout
</a>

</div>

</div>

</body>
</html>