<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration | ARD Library</title>
<link rel="icon" type="image/png" href="pix/favicon.png">
<link rel="stylesheet" type="text/css" href="Styles/admin.css">
<link rel="Stylesheet" type="text/css" href="Styles/user.css">
<meta name="viewport"
	content="width=device-width, initial-scale: 1.0, user-scalable=0" />
</head>
<body>
	<div class="header">
		<div class="logo">
			<a href="admin_index.jsp"> &nbsp &nbsp ARD &nbsp<span>Library</span></a>
		</div>
	</div>
	<div id="container">
		<div class="sidebar">
			<ul id="nav">
				<li><a href="admin_index.jsp">Dashboard</a></li>
				<li><a href="Book_search.jsp">Book</a></li>
				<li><a class="selected" href="User.jsp">User</a></li>
				<li><a href="issue_history.jsp">Issue history</a></li>
				<li><a href="Emailing.jsp">Email</a></li>
			</ul>
		</div>
		<div class="content">
			<div class="box">
				<br>
				<table width="100%">
					<tr>
						<td>
							<h1>
								User Registrsation
								<h1>
						</td>
						<td><a class="main_button" href="AddAdmin.jsp">Admin</a> <a
							class="main_button" href="Studentsearch2.jsp">Member</a></td>
					</tr>
				</table>
			</div>
			<div class="box">
				<br>
				<table width="100%">
					<tr>
						<td>
							<div class="mini">Total Users</div>
						</td>
						<td>
							<div class="mini">Members joined Today</div>
						</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</body>
</html>