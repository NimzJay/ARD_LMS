<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.time.LocalDate"%>


<%
	String btitle = request.getParameter("bTitle");
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
					<%
						LocalDate today = LocalDate.now(); // Create a date object
						System.out.println(today); // Display the current date

						try {
							con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ard_lms", "root", "");
							st = con.createStatement();
							String sql = ("SELECT * FROM books where addedDate = '"+today+"' ");
							rs = st.executeQuery(sql);
							while (rs.next()) {
								String bt = rs.getString("bTitle");
								String auth = rs.getString("author");
								//Sesh.setbTitle(bt);
					%>
					<table border="0" width="35%" align="center">
						<tr>
							<td width="50%">Recipient address</td>
							<td><input type="text" name="recipient" size="50" /></td>
						</tr>
						<tr>
							<td>Subject</td>
							<td><input type="text" name="subject" size="50" value="New Arrivals"/></td>
						</tr>
						<tr>
							<td>Content</td>
							<td>
								<textarea rows="10" cols="39" name="content" >
								<%out.print(bt);%><%out.print(" by " + auth);%>
									
								</textarea>
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
		<%
						}
						} catch (Exception e) {
							e.printStackTrace();
						}
					%>
</body>
</html>