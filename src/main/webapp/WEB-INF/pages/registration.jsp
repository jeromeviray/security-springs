<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewpoint" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" type="text/css" href="registration/style.css">
		<title></title>
	</head>

	<body>
		<form action="/registration/add/user">
		  <div class="container">
		    <h1>Register</h1>
		    	<p>Please fill in this form to create an account.</p>
		    <hr>
		    		<input type="hidden" name="Id" value={$user.Id} required>

		    		<label for="name"><b>Name</b></label>
		    			<input type="text" placeholder="Enter Name" name="name" required>

		    		<label for="email"><b>Email</b></label>
		    			<input type="text" placeholder="Enter Email" name="email" required>
		    		<label for="username"><b>Username</b></label>
		    			<input type="text" placeholder="Enter Username" name="usernmae" required>

		    		<label for="password"><b>Password</b></label>
		    			<input type="password" placeholder="Enter Password" name="password" required>
		    <hr>
		    	<p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>

		    		<button type="submit" class="registerbtn">Register</button>
		  </div>

		  <div class="container signin">
		    <p>Already have an account? <a href="#">Sign in</a>.</p>
		  </div>
		</form>

	</body>
</html>