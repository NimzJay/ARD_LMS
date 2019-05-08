<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="javax.servlet.*"%>
<%@page import="java.io.IOException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>

<%
	String bid = request.getParameter("bid");
	String driverName = "com.mysql.jdbc.Driver";

	//Connection con = null;
	try {
		Class.forName("com.mysql.jdbc.Driver");
	} catch (Exception ex) {
		ex.printStackTrace();
	}
%>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Book Reservation | ARD Library</title>
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
							<h1>
								Update Book Reservation
							<h1>
						</td>
						<td><a class="main_button" href="Veiw_all_reservation.jsp">View All Book Reservations</a> 
							<a class="main_button" href="Book_update.jsp">Edit Book Reservation</a> 
							<a class="main_button" href="Book_add.jsp">Add Book Reservation</a></td>
					</tr>
				</table>
			</div>
			<div class="forms">
				<form class="BookReservationUpdate" method="POST" name="admin">
					<table class="tab" style="border-color: black; color: black"
						align="center">
						<tr>
							<td>Book ID:</td>
							<td><input id="Text1" type="text" name="bid" required /></td>
							<td><input type="submit" value="Search" name="BookReservationUpdate"></td>
							<%
								String bti = request.getParameter("bid");
							%>
						</tr>
					</table>
				</form>
			</div>
			<div class="forms">
				<%
					System.out.println("Book ID: " + bti);
					try {
						String sql = ("SELECT * FROM book_reservation WHERE bid = '"+bti+"'");
						Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ard_lms", "root", "");
						PreparedStatement st = con.prepareStatement(sql);
						ResultSet rs = st.executeQuery(sql);
						while (rs.next()) {
				%>
				<form class="BookReservationUpdate" action="BookReservationUpdate" method="POST"
					name="admin">
					<table class="tab" style="border-color: black; color: black"
						align="center">
						<tr>
							<td>Book ID:</td>
							<td><input id="Text1" type="text" name="bid"
								value="<%=rs.getString("bid")%>" required /></td>
						</tr>
						<tr>
							<td>Book Title:</td>
							<td><input id="Text1" type="text" name="bTitle"
								value="<%=rs.getString("bTitle")%>" required /></td>
						</tr>
						<tr>
							<td>ISBN:</td>
							<td><input id="pass" type="text" name="isbn"
								value="<%=rs.getString("isbn")%>" required /></td>
						</tr>
						<tr>
							<td>Reservation Date:</td>
							<td><input id="pass" type="date" name="reservationDate"
								value="<%=rs.getString("reservationDate")%>" required /></td>
						</tr>
						<tr>
							<td>Expiration Date:</td>
							<td><input type="date" name="expirationDate" 
							value="<%=rs.getString("expirationDate")%>" required /></td>

						</tr>
						<tr></tr>

						<tr>
							<td></td>
							<td><input type="submit" value="Update" name="insert" /></td>

						</tr>

					</table>
					<%
						}
						} catch (Exception ex) {
							System.out.println("Error: " + ex);
							ex.printStackTrace();
						}
					%>
				</form>
			</div>
		</div>
	</div>
</body>
</html>