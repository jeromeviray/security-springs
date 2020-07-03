<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
	<title> Shop Mall </title>
		<meta charset="utf-8" name="viewport" content="width=device-width, initial-scale=1.0">
			<link rel="stylesheet" type="text/css" href="static/css/login/style.css">
			<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
			<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

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
					<li class="nav-item"><a class="nav-link" href="login"> Login </a></li>
					<li class="nav-item"><a class="nav-link" href="register"> Sign up </a></li>
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
	<main class="content">
		<div class="container">
			<div class="login-content">
				<div class="login-header">
					<span>Login</span>
				</div>
				<form:form action="/login" modelAttribute="users" class="form-content" method="POST">
				    <span style=color:red;> ${error} </span>
				    <span style=color:green;> ${logout} </span>
                        <div class="form-group username">
                            <form:input type="text" path="username" id="username" placeholder="Username" class="form-control"/>
                        </div>

                        <div class="form-group">
                            <form:input type="password" path="password" id="password" placeholder="Password" class="form-control" data-toggle="password"/>
                        </div>
                        <div class="form-check">
                            <input type="checkbox" class="form-check-input" id="remember-me">
                            <label for="remember-me" class="form-check-label">Remember Me</label>
                        </div>
                        <div class="submit-button">
                            <button type="submit" class="btn btn-outline-success btn-lg btn-block"> Login </button>
                        </div>
				</form:form>
				<div class="create-content">
					<div class="link-create">
						<span><a href="register"> Create </a></span>
					</div>
				</div>
			</div>
		</div>

	</main>

	<footer class="bg-dark">
		<div class="footer-brand">
			<a class="footer-link" href="/index">Shop</a>
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