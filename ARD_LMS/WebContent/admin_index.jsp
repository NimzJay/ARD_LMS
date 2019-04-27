<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin | ARD Library</title>
<link rel="icon" type="image/png" href="pix/favicon.png">
<link rel="stylesheet" type="text/css" href="Styles/admin.css">
<link rel="stylesheet" type="text/css" href="Styles/user.css">
<meta name="viewport" content="width=device-width, initial-scale: 1.0, user-scalable=0" />
</head>
<body>
	<div class="header">
		<div class="logo">
			<a href="admin_index.jsp"> &nbsp &nbsp ARD &nbsp<span>Library</span></a>
		</div>
		<div class="logout" align="right">
			<form class="logout" name="logout" action="logout" method="POST">
				<input type="submit" value="LOGOUT" name="logout">
			</form>
		</div>
	</div>
	<div id="container">
		<div class="sidebar">
			<ul id="nav">
				<li><a class="selected" href="admin_index.jsp">Dashboard</a></li>
				<li><a href="Book_search.jsp">Book</a></li>
				<li><a href="User.jsp">User</a></li>
				<li><a href="Issue.jsp">Issue history</a></li>
				<li><a href="Emailing.jsp">Emailing</a></li>
			</ul>
		</div>
		<div class="content">
			<h1>Dashboard</h1>
			<p>Here you can do stuff.</p>

			<div id="box">
				<div class="box-top">News</div>
				<div class="box-panel">This is some simple new
					shalalalalalaaaaaa~</div>
			</div>
		</div>
	</div>
</body>
</html>