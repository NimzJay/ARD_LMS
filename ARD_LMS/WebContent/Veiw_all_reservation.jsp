<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>

<%
	String btitle = request.getParameter("username");
	String driverName = "com.mysql.jdbc.Driver";

	try {
		Class.forName(driverName);
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	}

	Connection con = null;
	Statement st = null;
	ResultSet rs = null;
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="Styles/admin.css">
<link rel="stylesheet" type="text/css" href="Styles/user.css">
<link rel="icon" type="image/png" href="pix/favicon.png">
<title>View Book Reservation | ARD Library</title>
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
				<li><a href="User.jsp">User</a></li>
				<li><a href="issue_history.jsp">Issue history</a></li>
				<li><a href="pending.jsp">Pending Books</a></li>
				<li><a class="selected" href="Veiw_all_reservation.jsp">Reservations</a></li>
				<li><a href="Emailing.jsp">Email</a></li>
			</ul>
		</div>
		<div class="content">

			<div class="box">
				<br>
				<table width="100%">
					<tr>
						<td>
							<h1>View all Book Reservations<h1>
						</td>
						<td><a class="main_button" href="Veiw_all_reservation.jsp">View All Book Reservations</a> 
							<a class="main_button" href="BookReservationUpdate.jsp">Edit Book Reservations</a> 
							<a class="main_button" href="Book_Reservation.jsp">Add Book Reservations</a>
						</td>
					</tr>
				</table>
			</div>

			<div class="forms">
				<table width="100%" class="tab">
					<tr>
					</tr>

					<tr bgcolor="lightgray">
						<td><b>User Name</b></td>
						<td><b>Book ID</b></td>
						<td><b>Book Title</b></td>
						<td><b>ISBN</b></td>
						<td><b>Reservation Date</b></td>
						<td><b>Expiration Date</b></td>
						<td><b></b></td>
						<td><b></b></td>

					</tr>
					<%
						try {
							con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ard_lms", "root", "");
							st = con.createStatement();
							String sql = ("SELECT * FROM book_reservation ");
							rs = st.executeQuery(sql);
							while (rs.next()) {
								String bt= rs.getString("username");
								//Sesh.setbTitle(bt);
					%>
					<tr>

						<td><%=rs.getString("username")%></td>
						<td><%=rs.getString("bid")%></td>
						<td><%=rs.getString("bTitle")%></td>
						<td><%=rs.getString("isbn")%></td>
						<td><%=rs.getString("reservationDate")%></td>
						<td><%=rs.getString("expirationDate")%></td>
						<td><a class="sub_button" href="Book_reservation_update.jsp">Update</a></td>
						<td><a class="sub_button" href="Book_Reservation_delete.jsp">Delete</a></td>
					</tr>
					<%
						}
						} catch (Exception e) {
							e.printStackTrace();
						}
					%>
				</table>
			</div>
		</div>
	</div>
</body>
</html>