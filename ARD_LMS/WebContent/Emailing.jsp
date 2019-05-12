<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Emailing | ARD Library</title>
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
		<div class="logout" align="right">
			<form class="logout" name="logout" action="logout" method="POST">
				<input type="submit" value="LOGOUT" name="logout">
			</form>
		</div>
		
	</div>
	<div id="container">
		<div class="sidebar">
			<ul id="nav">
				<li><a href="admin_index.jsp">Dashboard</a></li>
				<li><a href="Book_search.jsp">Book</a></li>
				<li><a href="User.jsp">User</a></li>
				<li><a href="issue_history.jsp">Issue history</a></li>
				<li><a href="pending.jsp">Pending Books</a></li>
				<li><a href="Veiw_all_reservation.jsp">Reservations</a></li>
				<li><a class="selected" href="Emailing.jsp">Emailing</a></li>
			</ul>
		</div>
		<div class="content">
			<div class="box">
				<br>
				<table width="100%">
					<tr>
						<td>
							<h1>Notify Clients<h1>
						</td>
						<td>
						<a class="main_button" href="............."><b>Add Recently Added Books</b></a> 
						</td>
					</tr>
				</table>
			</div>
			<div class="forms">
				<p align="Left" style="letter-spacing: 4px">Email Form</p>
				<hr>
				<form class="bookAdd" name="bookAdd" action="BookAdd" method="POST">
					<table class="tab" style="border-color: white; color: dimgray"
						align="center">
						<tr>
							<td>To:</td>
							<td><input id="Text1" type="text" name="btitle" required /></td>
						</tr>
						<tr>
							<td>Subject:</td>
							<td><input id="Text1" type="text" name="isbn" required /></td>
						</tr>
						<tr>
							<td>Message:</td>
							<td><textarea name="message" cols="60" rows="7"></textarea></td>
						</tr>
						<tr>
							<td><input type="reset" value="Reset" name="reset"></td>
							<td><input type="submit" value="Submit">
							</td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</div>
</body>
</html>