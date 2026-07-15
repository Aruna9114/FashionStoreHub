<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Product</title>

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:Arial,sans-serif;
}

body{

background:linear-gradient(135deg,#ff758c,#ff7eb3,#8e44ad);

display:flex;

justify-content:center;

align-items:center;

height:100vh;

}

.container{

width:600px;

background:#fff;

padding:35px;

border-radius:15px;

box-shadow:0 10px 25px rgba(0,0,0,.3);

}

h2{

text-align:center;

margin-bottom:25px;

color:#8e44ad;

}

input,
textarea,
select{

width:100%;

padding:12px;

margin:10px 0;

border-radius:8px;

border:1px solid #ccc;

font-size:16px;

}

button{

width:100%;

padding:15px;

background:#8e44ad;

color:white;

border:none;

border-radius:8px;

font-size:18px;

cursor:pointer;

}

button:hover{

background:#6c3483;

}

</style>

</head>

<body>

<div class="container">

<h2>➕ Add Product</h2>

<%
String msg = request.getParameter("msg");
if(msg != null){
%>

<div style="color:green;
            text-align:center;
            margin-bottom:15px;
            font-weight:bold;">
    <%= msg %>
</div>

<%
}
%>

<form action="AddProductServlet" method="post">

<label>Category ID</label>
<input type="number" name="categoryId" required>

<label>Product Name</label>
<input type="text" name="productName" required>

<label>Description</label>
<textarea name="description"></textarea>

<label>Brand</label>
<input type="text" name="brand">

<label>Price</label>
<input type="number" step="0.01" name="price" required>

<label>Stock</label>
<input type="number" name="stock" required>

<label>Status</label>

<select name="status">

<option>ACTIVE</option>

<option>INACTIVE</option>

</select>

<label>Image Name</label>

<input type="text" name="image" placeholder="shirt.jpg">

<button type="submit">

Add Product

</button>

</form>

</div>

</body>

</html>