<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
	<title> Shop Mall </title>
		<meta charset="utf-8" name="viewport" content="width=device-width, initial-scale=1.0">

			<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
			<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- <style>
    *{
    	margin: 0;
    	padding: 0;
    	font-family: arial;
    	text-decoration-line: none;
    	list-style-type: none;
    }
    .brand {
    	border-right: 2px solid #F5F2F2;
    }
    .dropdown .nav-link{
    	color: white;
    }
    .dropdown span {
    	padding-left: 10px;
    }

    @media only screen and (max-width: 768px){
    	.brand {
    	border-right: none;

    	}

    	.content {
    		margin-top: 100px;
    	}
    	.form-control{
    		max-width: 50%;
    		margin: 0px;
    		margin-right: 5px;
    		margin-left: 10px;
    	}
    	.btn{
    		margin-right: 15px;
    	}
    }
    @media only screen and (min-width: 768px){
    	.brand {
    		margin: 0;

    	}
    	.content {
    		margin-top: 90px;
    	}

    	.form-control{
    		max-width: 50%;
    		margin: 0px;
    		margin-right: 5px;
    		margin-left: 10px;
    	}
    	.btn{
    		margin-right: 15px;
    	}

    }

    /*@media only screen and (min-width: 1000px){
    	.content{
    		margin-top: 100px;
    	}

    }*/

    	/* main */

    .login-content {
    	background-color: white;
    	max-width: 500px;
    	margin:100px auto;
    }
    .form-content {
    	display: flex;
    	flex-flow: column nowrap;
    	max-width: 500px;
    	margin: 0 auto;
    	border-radius: 23px;
    	padding: 10px 20px 0px 30px;
    }
    .login-header {
    	text-align: center;
    	margin-bottom: 10px;
    	padding: 20px;
    }
    .login-header span {
    	font-family: catamaran;
    	font-size:38px;
    	font-weight: 600;
    }
    .form-group label {
    	margin-left: 12px;
    	font-family: catamaran;
    	font-size: 20px;
    	font-weight: 500;
    }
    .form-group input{
    	margin: 0 auto;
    	max-width: 80%;
    	cursor: pointer;
    }
    .input-group input{
    	margin-left: 45px;
    	margin-right: 0;
    	max-width: 71%;
    	cursor: pointer;
    }

    .form-check {
    	margin-left: 45px;
    }
    .form-check-input{
    	cursor: pointer;
    }
    .submit-button {
    	margin: 10px auto;
    	width: 90%;
    }
    .create-content {
    	text-align: center;
    	padding: 10px;
    }

    .link-create span{
    	font-family: catamaran;
    	font-size: 20px;
    }
    .link-create a:hover {
    	text-decoration-line: none;
    }
    .error {
        font-style:italic;
        color:red;
    }


    	/*footer mobile device*/

    footer {
    	max-width: 100%;
    	padding: 30px 30px;
    	margin-top: 30px;
    	color: #f2f2f2;
    	overflow: hidden;
    }
    footer .footer-brand .footer-link:hover {
    	color:#D0E2DB;
    	text-decoration-line: none;
    }

    footer .footer-brand {
    	border-bottom: 2px solid #F5F2F2;
    	text-align: center;
    }
    footer .footer-brand a {
    	font-size: 40px;
    	color: #F5F2F2;
    }
    footer ul {
    	text-align: center;
    	margin:20px 0;
    }
    footer ul li{
    	display:block;
    	list-style: none;
    }
    footer ul li a {
    	font-family: catamaran;
    	font-family: 14px;
    	color: #fff;
    }
    .item-link a:hover {
    	color: #D0E2DB;
    	text-decoration-line: none;
    }
    h5 {
    	text-align: center;
    }

    .footer-sm {
    	width: 150px;
    	margin: 0 auto;
    	display: flex;
    }
    .footer-sm img {
    	width: 100%;
    }
    .footer-sm a {
    	margin-left: 10px;
    }

    	/*footer desktop device*/
    @media only screen and (min-width: 1000px){

    	footer .footer-brand {
    		border-bottom:hidden;
    		border-right: 2px solid #F5F2F2;
    		float: left;
    		margin-left: 10px;
    		margin-top: 30px;
    	}
    	footer .footer-brand a {
    		margin-right: 20px;
    	}
    	footer ul {
    		text-align: left;
    		float: left;
    	}
    	footer ul li{
    		margin-top: 5px;
    	}
    	footer ul li a{
    		margin-left: 20px;
    	}
    	h5{
    		text-align: right;
    		margin-right: 16px;
    	}
    	.footer-sm {
    		width: 150px;
    		float: right;
    		margin-top: 20px;
    	}
    	.footer-sm img {
    		width: 100%;
    	}
    }
</style> -->
</head>
<body style="background-color: #eeeeee;">
	<div class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" role="navigation">
		<div class="toggle">
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#div-items">
				<span class="navbar-toggler-icon"></span>
			</button>
		</div>
		<div class="brand">
			<a class="navbar-brand nav-link" href="home.html">Shop</a>
		</div>
		<div class="collapse navbar-collapse" id="div-items">
			<div class="container">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active" ><a class="nav-link" href="/home"> Home </a></li>
					<li class="nav-item "><a class="nav-link" href="#"> Category </a></li>
					<li class="nav-item"><a class="nav-link" href="#"> Support </a></li>
				</ul>
			</div>
		</div>
		<div class="dropdown navbar-nav">
			<a class="nav-link active dropdown-toggle" href="#" role="button" data-toggle="dropdown">
          		<img src="../img/product/iphone-4.jpeg" width="40" height="40" class="rounded-circle">
        	</a>
        	<div class="dropdown-menu">
        		<a class="dropdown-item" href="#">Dashboard</a>
	         	<a class="dropdown-item" href="#">Edit Profile</a>
	         	<a class="dropdown-item" href="#">Log Out</a>
        	</div>
		</div>
		<div class="navbar-nav">
			<a class="nav-link" href="/cart"><i style="font-size:36px" class="fa">&#xf07a;</i></a>
		</div>
	</div>

	<main class="content">
		<div class="container">
			<div class="change-content">
				<div class="change-header">
					<span>Change Password</span>
				</div>
				<form:form action="/user/change/password" modelAttribute="changePassword" class="form-content" method="POST">
					<div class="form-group username">
						<form:input type="password" path="current" id="password" placeholder="Current Password" class="form-control" data-toggle="password"/>
						<small class="error">${matching}</small>
					</div>

					<div class="form-group">
						<form:input type="password" path="password" id="password" placeholder="New Password" class="form-control" data-toggle="password"/>
				    </div>
					<div class="form-group">
                        <form:input type="password" path="confirmation" id="password" placeholder="Confirmation Password" class="form-control" data-toggle="password"/>
                        <small class="error">${invalid}</small>
                    </div>
					<div class="submit-button">
						<button type="submit" class="btn btn-outline-info btn-lg btn-block"> Save </button>
					</div>
				</form:form>
			</div>
		</div>

	</main>

	<footer class="bg-dark">
		<div class="footer-brand">
			<a class="footer-link" href="/home">Shop</a>
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
    <script src="https://unpkg.com/bootstrap-show-password@1.2.1/dist/bootstrap-show-password.min.js"></script>
</body>
</html>