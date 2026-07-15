<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ page import="java.util.*"%>
<%@ page import="com.fashionstore.dao.ProductDAO"%>
<%@ page import="com.fashionstore.model.Product"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>View Products</title>

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

background:#f5f5f5;

}

img{

width:70px;

height:70px;

border-radius:8px;

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

<h2>📦 Product List</h2>

<table>

<tr>

<th>ID</th>
<th>Image</th>
<th>Name</th>
<th>Brand</th>
<th>Category ID</th>
<th>Price</th>
<th>Stock</th>
<th>Status</th>
<th>Edit</th>
<th>Delete</th>

</tr>

<%

ProductDAO dao = new ProductDAO();

List<Product> list = dao.getAllProducts();

for(Product p : list){

%>

<tr>

<td><%=p.getProductId()%></td>

<td>

<img src="images/<%=p.getImage()%>" width="80" height="80">

</td>



<td><%=p.getProductName()%></td>

<td><%=p.getBrand()%></td>

<td><%=p.getCategoryId()%></td>

<td>₹ <%=p.getPrice()%></td>

<td><%=p.getStock()%></td>

<td><%=p.getStatus()%></td>



<td>



<td>

<a href="editProduct.jsp?id=<%=p.getProductId()%>"
style="background:#3498db;
color:white;
padding:8px 12px;
border-radius:5px;
text-decoration:none;">

✏️ Edit

</a>
</td>


<td>

<a href="DeleteProductServlet?id=<%=p.getProductId()%>"
onclick="return confirm('Are you sure you want to delete this product?')"
style="background:#e74c3c;
color:white;
padding:8px 12px;
border-radius:5px;
text-decoration:none;">

🗑 Delete

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