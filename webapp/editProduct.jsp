<%@page import="com.fashionstore.dao.ProductDAO"%>
<%@page import="com.fashionstore.model.Product"%>

<%
int id = Integer.parseInt(request.getParameter("id"));

ProductDAO dao = new ProductDAO();
Product p = dao.getProductById(id);
%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Edit Product</title>

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:Arial;
}

body{

background:linear-gradient(135deg,#ff758c,#ff7eb3,#8e44ad);

display:flex;
justify-content:center;
align-items:center;

height:100vh;

}

.container{

width:500px;

background:white;

padding:30px;

border-radius:12px;

box-shadow:0px 0px 20px gray;

}

h2{

text-align:center;
margin-bottom:20px;
color:#8e44ad;

}

input,
textarea,
select{

width:100%;

padding:12px;

margin:10px 0;

border-radius:6px;

border:1px solid gray;

}

button{

width:100%;

padding:14px;

background:#8e44ad;

color:white;

border:none;

font-size:18px;

border-radius:6px;

cursor:pointer;

}

button:hover{

background:#6c3483;

}

</style>

</head>

<body>

<div class="container">

<h2>✏️ Update Product</h2>

<form action="UpdateProductServlet" method="post">

<input type="hidden" name="productId"
value="<%=p.getProductId()%>">

<label>Category ID</label>

<input type="number"
name="categoryId"
value="<%=p.getCategoryId()%>">

<label>Product Name</label>

<input type="text"
name="productName"
value="<%=p.getProductName()%>">

<label>Description</label>

<textarea
name="description"><%=p.getDescription()%></textarea>

<label>Brand</label>

<input type="text"
name="brand"
value="<%=p.getBrand()%>">

<label>Price</label>

<input type="number"
step="0.01"
name="price"
value="<%=p.getPrice()%>">

<label>Image</label>

<input type="text"
name="image"
value="<%=p.getImage()%>">

<label>Status</label>

<select name="status">

<option value="ACTIVE"
<%=p.getStatus().equals("ACTIVE")?"selected":""%>>
ACTIVE
</option>

<option value="INACTIVE"
<%=p.getStatus().equals("INACTIVE")?"selected":""%>>
INACTIVE
</option>

</select>

<button type="submit">

Update Product

</button>

</form>

</div>

</body>
</html>