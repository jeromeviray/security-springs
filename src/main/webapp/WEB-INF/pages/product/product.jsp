<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
	<title> Shop Mall </title>
		<meta charset="utf-8" name="viewport" content="width=device-width, initial-scale=1.0">
			<link rel="stylesheet" type="text/css" href="static/css/product/style.css">
			<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
			<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body style="background-color: #eeeeee;">
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
          		<img src="static/images/avatar.jpg" width="40" height="40" class="rounded-circle">
          		<span>jeromeviray</span>
        	</a>
        	<div class="dropdown-menu">
        		<a class="dropdown-item" href="#">Dashboard</a>
	         	<a class="dropdown-item" href="#">Edit Profile</a>
	         	<a class="dropdown-item" href="logout">Log out</a>
        	</div>
		</div>
		<div class="navbar-nav">
			<a class="nav-link" href="/cart"><i style="font-size:36px" class="fa">&#xf07a;</i></a>
		</div>
	</div>

	<main class="main-content container">
		<div class="content container">

			<form:form action="/product" modelAttribute="product" class="row" method="POST" enctype="multipart/form-data">
				<div class="col-3">
					<div class="container-image" id="image-view">
						<img src="" alt="Image" class="image-preview">
						<span class="preview-text text-muted" id="text-preview">Image Preview</span>
					</div>
					<div class="btn-upload">
						<label for="file" class="input-label">
							<i class="fas fa-file-upload"></i>
							<span id="span-label"></span>Select File
						</label>
						<input type="file" name="file" id="file" multiple="true">
					</div>
				</div>
				<div class="col-9">
					<div class="row">
						<div class="col-12 form-group">
							<div class="input-group" style="margin-top:20px">
								<form:input type="text" path="name" placeholder="Product Name" class="form-control"/>
							</div>
						</div>
						<div class="col-12 form-group">
							<div class="input-group" style="margin-top:20px">
								<form:input type="text" path="price" placeholder="Product Price" class="form-control"/>
							</div>
						</div>
						<div class="col-12 form-group">
							<div class="input-group" style="margin-top:20px">
								<form:input type="text" path="stock" placeholder="Product Stock" class="form-control"/>
							</div>
						</div>
						<div class="col-12">
							<div class="submit-button">
								<button type="submit" class="btn btn-outline-info btn-lg btn-block" style="width: 120px;"> Create </button>
							</div>
						</div>
					</div>
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
	<script src="static/js/image.js"></script>
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>
</html>