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
				<li><a href="Issue.jsp">Issue history</a></li>
			</ul>
		</div>
		<div class="content">
			<div class="box">
				<br>
				<table width="100%">
					<tr>
						<td>
							<h1>Delete Books<h1>
						</td>
						<td><a class="main_button" href="Book_view.jsp">View All Books</a> 
							<a class="main_button" href="Book_update.jsp">Edit Books</a> 
							<a class="main_button" href="Book_add.jsp">Add Books</a>
						</td>
					</tr>
				</table>
			</div>
			
			<div class="forms">
				<form class="bookAdd" method="POST" name="admin" action="BookDelete">
					<table class="tab" style="border-color: black; color: black"
						align="center">
						<tr>
							<td>Book Title:</td>
							<td><input id="Text1" type="text" name="btitle" required /></td>
							<td><input type="submit" value="Delete" name="btnAdd"></td>
						</tr>
					</table>
				</form>
			</div>
			
			
		</div>
	</div>
</body>
</html>