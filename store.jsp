<%@page import="com.pennant.shoppingcart.models.ProductModel"%>
<%@page import="com.pennant.shoppingcart.models.ProductListModel"%>
<%@page import="com.pennant.shoppingcart.DAL.ProductsDAL"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.io.IOException"%>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Pennantshopping</title>
<script type="text/javascript" src="jqueryscript.js"></script>
<script src="https://code.jquery.com/jquery-3.7.1.js"
	integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4="
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'
	crossorigin='anonymous'></script>
<link rel="stylesheet" href="homepagestyle.css">
</head>
<body>
	<header>
		<div id="logo-div">
			<img src="/shoppingcartmvc/src/main/webapp/Pennantlogo.png" id="logo" alt="pennant logo">
		</div>
		<div>
			<h1>pennkart</h1>
		</div>
		<div id="customer">
			<div id="login">
				<a href="">login<i class="fa fa-sign-in"></i></a>
			</div>
			<div id="signup">
				<a href="">signup<i class="fa fa-user-plus" aria-hidden="true"></i></a>
			</div>
			<div id="cart">
				<p class="itemcounter"></p>
				<a href="">cart<i class="fa fa-shopping-cart"></i></a>
			</div>
		</div>
	</header>
	<div id="home" class="homescreen">
		<%
		
			ProductListModel products=new ProductsDAL().getProducts();
    		for(ProductModel product:products)
    		{
    %>
		<div class="product" id="<%= product.getProd_Id()%>">
			<p><%=product.getProd_Name() %></p>
			<img src=<%=product.getProd_Image() %>
				alt="<%=product.getProd_Name()%> image" />
			<p>price: <%=product.getProd_Price() %>$</p>
			<input type="button" onclick="addtocart(<%=product.getProd_Id() %>)" value="add to cart">
		</div>
		<%		
    	};
    %>
	</div>
</body>
</html>