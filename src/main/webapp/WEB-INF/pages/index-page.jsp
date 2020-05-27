<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title> Shop Mall </title>
		<meta charset="utf-8" name="viewport" content="width=device-width, initial-scale=1.0">
			<link rel="stylesheet" type="text/css" href="static/css/index/style.css">
			<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" >
</head>
<body style="background-color: #eeeeee;">
	<div class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" role="navigation">
		<div class="search-bar">
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#div-items">
				<span class="navbar-toggler-icon"></span>
			</button>
		</div>
		<div class="brand">
			<a class="navbar-brand nav-link" href="/index">Shop</a>
		</div>
		<div class="collapse navbar-collapse" id="div-items">
			<div class="container">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active" ><a class="nav-link" href="/index"> Home <span class="sr-only">(current)</span> </a></li>
					<li class="nav-item "><a class="nav-link" href="#"> Category </a></li>
					<li class="nav-item"><a class="nav-link" href="/login"> Login </a></li>
					<li class="nav-item"><a class="nav-link" href="/register"> Sign up </a></li>
					<li class="nav-item"><a class="nav-link" href="#"> Support </a></li>
				</ul>
			</div>
		</div>
		<div class="search-bar">
			<form class="form-inline">
				<input class="form-control mr-sm-2" type="search" placeholder="Search">
			</form>
		</div>

	</div>
	<main class="main-content container-fluid">
		<div class="content">
			<div class="row">
			    <c:forEach items="${allItems}" var="itemsList">
                    <div class="col-5 col-xl-2 col-lg-2 col-md-3 col-sm-5 p-0 prod-items">
                        <div class="container image-content" style="padding: 0">
                            <a href="#">
                                <img src="static/images/items/${itemsList.image}" alt="iphone-4">
                            </a>
                        </div>

                        <div class="container title">

                            <div class="name-product">
                                <span> <a href="#"> ${itemsList.name}  </a> </span>
                            </div>

                            <div class="price-product">
                                <span class="text-muted"> Price: ${itemsList.price} </span>
                            </div>

                        </div>
                    </div>
                </c:forEach>
			</div>
		</div>
	</main>
	<footer class="bg-dark">
		<div class="footer-brand">
			<a class="footer-link" href="index.html">Shop</a>
		</div>
		<ul class="item-link">
			<li><a href="#"> Help </a></li>
			<li><a href="#"> Contact </a></li>
			<li><a href="#"> About </a></li>
		</ul>
		<h5 style="margin-top:30px;">Social Media</h5>
		<div class="footer-sm">
			<a href="#">
				<img src="static/images/facebook.png" alt="Facebook icon" title="facebook">
			</a>
			<a href="#">
				<img src="static/images/twitter.png" alt="Twitter icon" title="twitter">
			</a>
			<a href="#">
				<img src="static/images/gmail.png" alt="Gmail icon" title="gmail">
			</a>
		</div>
	</footer>
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>
</html>