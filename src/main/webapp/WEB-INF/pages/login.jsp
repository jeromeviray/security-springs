<!DOCTYPE html>
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
              <form action="/process">
                <p><input type="text" name="username" value="" placeholder="Username or Email"></p>
                <p><input type="password" name="password" value="" placeholder="Password"></p>
                <p class="remember_me">
                  <label>
                    <input type="checkbox" name="remember_me" id="remember_me">
                      Remember me on this computer
                  </label>
                </p>
                <p class="submit"><input type="submit" name="commit" value="Login"></p>
              </form>
          </div>

          <div class="login-help">
              <a href="register">Sign up</a>
          </div>

	</body>
</html>