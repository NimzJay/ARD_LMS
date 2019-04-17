<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home | ARD Library</title>
<link rel="stylesheet" type="text/css" href="Styles/style.css">
<meta name="viewport"
	content="width=device-width, initial-scale: 1.0, user-scalable=0" />
</head>
<body background="pix/h.JPG" width=100%>
	<div class="login">
		<h2 align="center">User Login</h2>
		<form class="login" action="login" method="POST" name="login">
			<br>
			<br>
			<br>
			<br>
			<p>Username:</p>
			<input type="text" name="user" id="" required>
			<p>Password:</p>
			<input type="password" name="pass" id="" required><br>
			<br>
			<br> <input type="submit" value="Log in">
			<p>Contact Librarian to Register.</p>
		</form>
	</div>
</body>
</html>