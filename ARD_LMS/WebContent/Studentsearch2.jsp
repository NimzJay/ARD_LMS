<!DOCTYPE html>
<html lang="en">
<head>
<title>Search Member | ARD Library</title>
<link rel="icon" type="image/png" href="pix/favicon.png">
<link rel="stylesheet" type="text/css" href="Styles/admin.css">
<link rel="stylesheet" type="text/css" href="Styles/user.css">
<meta name="viewport"
	content="width=device-width, initial-scale: 1.0, user-scalable=0" />
<style>
* {
	box-sizing: border-box;
}

body {
	font-family: Arial, Helvetica, sans-serif;
}

/* Style the header */
header {
	background-color: #666;
	padding: 30px;
	text-align: center;
	font-size: 35px;
	color: white;
}

/* Create two columns/boxes that floats next to each other */
nav {
	float: left;
	width: 30%;
	height: 300px; /* only for demonstration, should be removed */
	background: #ccc;
	padding: 20px;
}

/* Style the list inside the menu */
nav ul {
	list-style-type: none;
	padding: 0;
}

article {
	float: left;
	padding: 20px;
	width: 70%;
	background-color: #f1f1f1;
	height: 300px; /* only for demonstration, should be removed */
}

/* Clear floats after the columns */
section:after {
	content: "";
	display: table;
	clear: both;
}

/* Style the footer */
footer {
	background-color: #777;
	padding: 10px;
	text-align: center;
	color: white;
}

/* Responsive layout - makes the two columns/boxes stack on top of each other instead of next to each other, on small screens */
@media ( max-width : 600px) {
	nav, article {
		width: 100%;
		height: auto;
	}
}
</style>
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
				<li><a href="issue_history.jsp">Issue history</a></li>
				<li><a href="Emailing.jsp">Email</a></li>
			</ul>
		</div>
		<div class="content">
			<h2>Student Search</h2>

			<header>
				<h2>Search Category</h2>
			</header>

			<section>
				<nav>
					<ul>
						<button type="submit" class="searchButton">
							<p>STUDENT:</p>

							<input type="text" name="search" placeholder=" Student Search">
							<br>

							<button type="button"
								onclick="document.getElementById('demo').innerHTML = Date()">
								Search student.</button>
					</ul>

					<div class="wrap"></div>
					<i class="fa fa-search"></i>
				</nav>


				<article>
					<a class="main_button" href="UpdateStudent.jsp">Edit Member</a> <a
							class="main_button" href="DeleteStudents.jsp">Delete Member</a> <a
							class="main_button" href="View.jsp">View Member</a>

					<a class="main_button" href="View.jsp">View Member</a> <a
						class="main_button" href="">Search Member</a> <a
						class="main_button" href="AddStudent.jsp">Add Member</a> <br>
					<br>
					<div class="box">
						<br>
						<table width="100%">
							<tr>
								<td>
									<div class="mini">Total Books</div>
								</td>
								<td>
									<div class="mini">Total issues today</div>
								</td>
								<td>
									<div class="mini">Issues Books out</div>
								</td>
								<td>
									<div class="mini">Total students</div>
								</td>
							</tr>
						</table>
					</div>
		</div>
		</article>
		</section>
	</div>
	</div>







</body>
</html>
