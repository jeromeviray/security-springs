<!DOCTYPE html>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
	<title> Shop Mall </title>
		<meta charset="utf-8" name="viewport" content="width=device-width, initial-scale=1.0">
			<link rel="stylesheet" type="text/css" href="/static/css/checkout/style.css">
			<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
			<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body style="background-color: #EEEEEE;">
	<div class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" role="navigation">
        <div class="toggle">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#div-items">
                <span class="navbar-toggler-icon"></span>
            </button>
        </div>
        <div class="brand">
            <a class="navbar-brand nav-link" href="home">Shop</a>
        </div>
        <div class="collapse navbar-collapse" id="div-items">
            <div class="container">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active" ><a class="nav-link" href="home"> Home </a></li>
                    <li class="nav-item "><a class="nav-link" href="#"> Category </a></li>
                    <li class="nav-item"><a class="nav-link" href="#"> Support </a></li>
                </ul>
            </div>
        </div>
        <div class="dropdown navbar-nav">
            <a class="nav-link active dropdown-toggle" href="#" role="button" data-toggle="dropdown">
                <img src="static/images/product/iphone-4.jpeg" width="40" height="40" class="rounded-circle">
                <span>jeromeviray</span>
            </a>
            <div class="dropdown-menu">
                <a class="dropdown-item" href="#">Dashboard</a>
                <a class="dropdown-item" href="#">Edit Profile</a>
                <a class="dropdown-item" href="logout">Log out</a>
            </div>
        </div>
        <div class="navbar-nav">
            <a class="nav-link" href="cart"><i style="font-size:36px" class="fa">&#xf07a;</i></a>
        </div>
    </div>
    <main class="main-container" style="margin-top:100px;">

    		<div class="container">
    			<div class="cus-container">
    				<span>Customer Info</span>
    			</div>
    			<form:form action="/customer" modelAttribute="customers" method="POST">
    			    <div class="form-group">
                        <form:input type="text" path="name" placeholder="Name" class="form-control"/>
                    </div>
                    <div class="form-group">
                        <form:input type="text" path="number" placeholder="Number" class="form-control"/>
                    </div>
                    <div class="form-group">
                        <form:input type="text" path="email" placeholder="Email" class="form-control"/>
                    </div>
                    <div class="row">
                        <div class="form-group col-6">
                            <form:input type="text" path="city" placeholder="City" class="form-control"/>
                        </div>
                        <div class="form-group col-6">
                            <form:input type="text" path="province" placeholder="Province" class="form-control"/>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-4">
                            <form:input type="text" path="house" placeholder="House Number" class="form-control"/>
                        </div>
                        <div class="form-group col-4">
                            <form:input type="text" path="street" placeholder="Street" class="form-control"/>
                        </div>
                        <div class="form-group col-4">
                            <form:input type="text" path="postal" placeholder="Postal Code" class="form-control"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <form:input type="text" path="brgy" placeholder="Barangay" class="form-control"/>
                    </div>
                    <div class="btn-container">
                        <button class="btn btn-primary btn-lg btn-block" type="submit">Save</button>
                    </div>
    			</form:form>
    		</div>

    	</main>
	<footer class="bg-dark">
		<div class="footer-brand">
			<a class="footer-link" href="home">Shop</a>
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
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>
</body>
</html>