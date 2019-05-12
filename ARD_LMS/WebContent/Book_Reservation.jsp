<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Books | ARD Library</title>
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
				<li><a href="pending.jsp">Pending Books</a></li>
				<li><a href="Veiw_all_reservation.jsp">Reservations</a></li>
				<li><a href="Emailing.jsp">Email</a></li>
			</ul>
		</div>
		<div class="content">
			<div class="box">
				<br>
				<table width="100%">
					<tr>
						<td>
							<h1>Book Reservation<h1>
						</td>
						<td>
							<a class="main_button" href="Veiw_all_reservation.jsp">View All Book Reservations</a>
							<a class="main_button" href="Book_update.jsp">Edit Book Reservations</a>
							<a class="main_button" href="Book_Reservation.jsp">Add Book Reservations</a>
						</td>
					</tr>
				</table>
			</div>
			<div class="forms">
				<p align="Left" style="letter-spacing: 4px">Book Reservation Form</p>
				<hr>
				<form class="Book_resevation_add" name="Book_resevation_add" action="Book_resevation_add" method="POST">
					<table class="tab" style="border-color: white; color: dimgray"
						align="center">
						<tr>
							<td>User Name:</td>
							<td><input id="Text1" type="text" name="username" required /></td>
						</tr>
						<tr>
							<td>Book ID:</td>
							<td><input id="Text1" type="text" name="bid" required /></td>
						</tr>
						<tr>
							<td>Book Title:</td>
							<td><input id="Text1" type="text" name="bTitle" required /></td>
						</tr>
						<tr>
							<td>ISBN:</td>
							<td><input id="Text1" type="text" name="isbn" required /></td>
						</tr>
						<tr>
							<td>Reservation Date:</td>
							<td><input id="Text1" type="date" name="reseveration_date" required /></td>
						</tr>
						<tr>
							<td>Expiration Date:</td>
							<td><input id="Text1" type="date" name="expiration_date" required /></td>
						</tr>
						<tr>
							<td><input type="reset" value="Reset" name="reset"></td>
							<td><input type="submit" value="Book Reservation" name="Book_resevation_add">

							</td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</div>
</body>
</html>