<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewpoint" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" type="text/css" href="registration/style.css">
		<title></title>
	</head>

	<body>
		<form:form action="/register" method="POST" modelAttribute="user">
		  <div class="container">
		    <h1>Register</h1>
		    	<p>Please fill in this form to create an account.</p>
		    <hr>
		    		<form:hidden path="id"/>

		    		<label for="name"><b>Name</b></label>
		    			<form:input type="text" placeholder="Enter Name"  path="name" value=""/>

		    		<label for="email"><b>Email</b></label>
		    			<form:input type="text" placeholder="Enter Email" path="email" value=""/>
		    		<label for="username"><b>Username</b></label>
		    			<form:input type="text" placeholder="Enter Username" path="username" value=""/>

		    		<label for="password"><b>Password</b></label>
		    			<form:input type="password" placeholder="Enter Password" path="password" value=""/>
		    <hr>
		    	<p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>

		    		<button type="submit" class="registerbtn">Register</button>
		  </div>

		  <div class="container signin">
		    <p>Already have an account? <a href="login">Sign in</a>.</p>
		  </div>
		</form:form>

	</body>
</html>