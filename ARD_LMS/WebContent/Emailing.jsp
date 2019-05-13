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
							<h1>
								Notify Clients
								<h1>
						</td>
						<td><a class="main_button" href="#"><b>Add
									Recently Added Books</b></a></td>
					</tr>
				</table>
			</div>
			<div class="forms">
				<p align="Left" style="letter-spacing: 4px">Email Form</p>
				<hr>
				<br>
				<form action="EmailSendingServlet" method="post">
					<table border="0" width="35%" align="center">
						<tr>
							<td width="50%">Recipient address</td>
							<td><input type="text" name="recipient" size="50" /></td>
						</tr>
						<tr>
							<td>Subject</td>
							<td><input type="text" name="subject" size="50" /></td>
						</tr>
						<tr>
							<td>Content</td>
							<td><textarea rows="10" cols="39" name="content"></textarea>
							</td>
						</tr>
						<tr>
							<td colspan="2" align="center">
								<input type="submit"
								value="Send" />
							</td>
						</tr>
					</table>

				</form>
			</div>
		</div>
	</div>
</body>
</html>