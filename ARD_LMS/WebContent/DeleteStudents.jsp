<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Student | ARD Library</title>
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
				<li><a href="Book_search.jsp">Book</a></li>
				<li><a class="selected" href="User.jsp">User</a></li>
				<li><a href="Issue.jsp">Issue history</a></li>
			</ul>
		</div>
		<div class="content">
			<div class="box">
				<br>
				<table width="100%">
					<tr>
						<td>
							<h1>Delete Student<h1>
						</td>
						<td><a class="main_button" href="AdminView.jsp">View All Users</a> 
							<a class="main_button" href="AdminUpdate.jsp">Update Student</a> 
							<a class="main_button" href="AddAdmin.jsp">Add Student</a>
						</td>
					</tr>
				</table>
			</div>
			
			<div class="forms">
				<form class="DeleteStudents" method="POST" name="admin" action="StudentDelete">
					<table class="tab" style="border-color: black; color: black"
						align="center">
						<tr>
							<td>Student NIC:</td>
							<td><input id="Text1" type="text" name="nic" required /></td>
							<td><input type="submit" value="Delete" name="btnAdd"></td>
						</tr>
					</table>
				</form>
			</div>
			
			
		</div>
	</div>
</body>
</html>