<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewpoint" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" type="text/css" href="login/style.css">
		<title></title>
	</head>

	<body>
		<div class="login">
            <h1>Login to Web App</h1>
              <form:form action="/login" method = "POST" modelAttribute="users">
                <p><form:input type="text" path="username" value="" placeholder="Username or Email"/></p>
                <p><form:input type="password" path="password" value="" placeholder="Password"/></p>
                <span style=color:red;> ${error} </span>
                <p class="remember_me">
                  <label>
                    <input type="checkbox" name="remember_me" id="remember_me">
                      Remember me on this computer
                  </label>
                </p>
                <p class="submit"><input type="submit" name="commit" value="Login"></p>
              </form:form>
          </div>

          <div class="login-help">
              <a href="register">Sign up</a>
          </div>

	</body>
</html>