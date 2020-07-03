<!DOCTYPE html>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>
<head>
	<title> Shop Mall </title>
		<meta charset="utf-8" name="viewport" content="width=device-width, initial-scale=1.0">
			<link rel="stylesheet" type="text/css" href="/static/css/cart/style.css">
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
<main class="content">
    <div class="container header-cart">
        <h2>Cart</h2>
    </div>
    <div class="container inner-content justify-content-between">
        <div class="list-item-content">
            <div class="head-group" >
                <ul class="row">
                    <li class="col-5">
                        <span>Items</span>
                    </li>
                    <li class="col-3">
                        <span>Quantity</span>
                    </li>
                    <li class="col-1">
                        <span>Price</span>
                    </li>
                    <li class="btn-remove">
                        <span>All</span>
                        <a href = "/cart/remove/all">
                            <button class="btn" type="submit">
                                <i class="fa fa-trash"></i>
                                <input type="hidden" value="1">
                            </button>
                        </a>
                    </li>
                </ul>
            </div>
            <table class="container">
                <c:if test="${not empty error}">
                    <div class="font-italic text-center" style="margin-top: 20px;">
                        <c:out value="${error}"></c:out>
                    </div>
                </c:if>
                    <c:forEach items="${order}" var="order">
                        <tr class="row" style="margin-bottom: 20px;">

                            <td class="col-5" style="margin-top: 20px;">
                                <div class="content-product">
                                    <div class="product-img">
                                        <img src="static/images/items/${order.product.image}">
                                    </div>
                                    <div>
                                        <a href="#">${order.product.name} </a>
                                    </div>
                                </div>
                            </td>
                            <td class="col-3 align-self-center">${order.quantity}</td>
                            <td class="col-2 align-self-center">${order.product.price}</td>
                            <td class="col-2">
                                <div class="form-group" style="margin: 50px 20px;">
                                    <a href = "/cart/remove/${order.product.id}">
                                        <button class="btn" type="submit">
                                            <i class="fa fa-trash"></i>
                                        </button>
                                    </a>
                                </div>
                            </td>
                        </tr>
                    </c:forEach>
            </table>
        </div>

        <div class="summary-content-contianer">
            <div class="container">
                <div class="summary">
                    <span>Payment</span>
                </div>
                <div class="summary-header">
                    <ul class="row">
                        <li class="col-2">Qty</li>
                        <li class="col-5">Product</li>
                        <li class="col-3">Price</li>
                        <li class="col-2">Amt</li>
                    </ul>
                </div>
                <div class="receipt-container row">
                    <div class="list-container col-9" style="padding-right: 0;">
                        <c:forEach items="${order}" var="order">
                            <ul class="row items-contianer">
                                <li class="col-2">${order.quantity}</li>
                                <li class="col-7"><p class="product-name">${order.product.name}</p></li>
                                <li class="col-3">${order.product.price}</li>
                            </ul>
                        </c:forEach>
                    </div>
                    <div class="col-3 items-contianer" style="margin-top:0;">
                        <c:forEach items="${amount}" var="amount">
                            <ul class="items-contianer">
                                <li>${amount}</li>
                            </ul>
                        </c:forEach>
                    </div>
                </div>
                <div class="flex-container">
                    <div class="sub-payment-container">
                        <div class="sub-container">
                            <div class="subtotal-container">
                                <h6 style="font-family: catamaran; font-size: 16px;">SubTotal:</h6>
                            </div>
                            <div class="total-container">
                                    <h6 style="font-family: catamaran;	font-size: 16px;"><span class="text-muted" style="font-size: 12px">&#x20B1;</span>${payment}</h6>
                            </div>
                        </div>
                        <div class="sub-container">
                            <div class="fee-container">
                                    <h6 style="font-family: catamaran;	font-size: 16px;">Shipping Fee:</h6>
                            </div>
                            <div class="total-container">
                                    <h6 style="font-family: catamaran;	font-size: 16px;"><span class="text-muted" style="font-size: 12px;">&#x20B1;</span>400</h6>
                            </div>
                        </div>
                    </div>
                    <div class="sub-container" style="margin-top: 10px;">
                        <div class="total-div">
                            <h6 style="font-family: catamaran;	font-size: 16px;">Total:</h6>
                        </div>
                        <div class="total-container">
                            <h6 style="font-family: catamaran;	font-size: 16px;"><span class="text-muted" style="font-size: 12px">&#x20B1;</span>${payment} </h6>
                        </div>
                    </div>
                </div>

                <div class="button-container">
                    <button type="submit" class="btn btn-primary btn-lg btn-block">Check Out</button>
                </div>
            </div>
        </div>
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