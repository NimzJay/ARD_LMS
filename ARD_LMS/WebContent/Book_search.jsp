<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Books | ARD Library</title>
<link rel="icon" type="image/png" href="pix/favicon.png">
<link rel="stylesheet" type="text/css" href="Styles/admin.css">
<link rel="stylesheet" type="text/css" href="Styles/user.css">
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
				<li><a class="selected" href="Book_search.jsp">Book</a></li>
				<li><a href="User.jsp">User</a></li>
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
							<h1>All Books<h1>
						</td>
						<td><a class="main_button" href="Book_view.jsp">View All Books</a> 
							<a class="main_button" href="Book_update.jsp">Edit Books</a> 
							<a class="main_button" href="Book_add.jsp">Add Books</a>
						</td>
					</tr>
				</table>
			</div>
			<div class="box">
				<br>
				<table width="100%">
					<tr>
						<td>
							<div class="mini">Total Books</div>
						</td>
						<td>
							<div class="mini">Total Users</div>
						</td>
						<td>
							<div class="mini">Issues Today</div>
						</td>
						<td>
							<div class="mini">Total Books Out</div>
						</td>
					</tr>
				</table>
			</div>
			<div class="box2">
				
			</div>
			<div class="box2">
				
			</div>
		</div>
	</div>
</body>
</html>