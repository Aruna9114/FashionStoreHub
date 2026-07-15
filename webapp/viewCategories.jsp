<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ page import="java.util.*"%>
<%@ page import="com.fashionstore.dao.CategoryDAO"%>
<%@ page import="com.fashionstore.model.Category"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>View Categories</title>

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:Arial,sans-serif;
}

body{

background:linear-gradient(135deg,#ff758c,#ff7eb3,#8e44ad);

padding:40px;

}

.container{

background:white;

padding:30px;

border-radius:15px;

box-shadow:0 10px 25px rgba(0,0,0,.3);

}

h2{

text-align:center;

color:#8e44ad;

margin-bottom:25px;

}

table{

width:100%;

border-collapse:collapse;

}

th{

background:#8e44ad;

color:white;

padding:15px;

}

td{

padding:12px;

text-align:center;

border-bottom:1px solid #ddd;

}

tr:hover{

background:#f8f8f8;

}

.edit{

background:#27ae60;

color:white;

padding:8px 15px;

text-decoration:none;

border-radius:6px;

}

.delete{

background:#e74c3c;

color:white;

padding:8px 15px;

text-decoration:none;

border-radius:6px;

}

</style>

</head>

<body>

<div class="container">

<h2>📂 Category List</h2>

<table>

<tr>

<th>ID</th>
<th>Category Name</th>
<th>Description</th>
<th>Edit</th>
<th>Delete</th>

</tr>

<%

CategoryDAO dao = new CategoryDAO();

List<Category> list = dao.getAllCategories();

for(Category c : list){

%>

<tr>

<td><%=c.getCategoryId()%></td>

<td><%=c.getCategoryName()%></td>

<td><%=c.getDescription()%></td>

<td>

<a class="edit" href="#">
Edit

</a>

</td>

<td>

<a class="delete" href="#">
Delete

</a>

</td>

</tr>

<%

}

%>

</table>

</div>

</body>

</html>