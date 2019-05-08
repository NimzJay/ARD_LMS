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
	String nic = request.getParameter("nic");
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
<title>Update Admin | ARD Library</title>
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
				<li><a  href="Book_search.jsp">Book</a></li>
				<li><a class="selected" href="User.jsp">User</a></li>
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
							<h1>
								Update Admin
							<h1>
						</td>
						<td><a class="main_button" href="AdminView.jsp">View All Users</a> 
							<a class="main_button" href="AdminDelete.jsp">Delete Admin</a> 
							<a class="main_button" href="AddAdmin.jsp">Add Admin</a></td>
					</tr>
				</table>
			</div>
			<div class="forms">
				<form class="AdminAdd" method="POST" name="admin">
					<table class="tab" style="border-color: black; color: black"
						align="center">
						<tr>
							<td>Admin NIC:</td>
							<td><input id="Text1" type="text" name="nic" required /></td>
							<td><input type="submit" value="Search" name="btnAdd"></td>
							<%
								String nicc = request.getParameter("nic");
							%>
						</tr>
					</table>
				</form>
			</div>
			<div class="forms">
				<%
					System.out.println("Admin: " + nicc);
					try {
						String sql = ("SELECT * FROM user WHERE nic = '"+nicc+"'");
						Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ard_lms", "root", "");
						PreparedStatement st = con.prepareStatement(sql);
						ResultSet rs = st.executeQuery(sql);
						while (rs.next()) {
				%>
				<form class="AddAdmin" action="AdminUpdate" method="POST"
					name="admin">
					<table class="tab" style="border-color: black; color: black"
						align="center">
						<tr>
							<td>Username:</td>
							<td><input id="Text1" type="text" name="username"
								value="<%=rs.getString("Username")%>" required /></td>
						</tr>
						<tr>
							<td>Password:</td>
							<td><input id="Text1" type="text" name="password"
								value="<%=rs.getString("Password")%>" required /></td>
						</tr>
						<tr>
							<td>First Name:</td>
							<td><input id="Text1" type="text" name="fname"
								value="<%=rs.getString("fname")%>" required /></td>
						</tr>
						<tr>
							<td>Last Name:</td>
							<td><input id="Text1" type="text" name="lname"
								value="<%=rs.getString("lname")%>" required /></td>
						</tr>
						<tr>
							<td>Date of Birth:</td>
							<td><input id="Text1" type="text" name="dob"
								value="<%=rs.getString("dob")%>" required /></td>
						</tr>
						<tr>
							<td>NIC:</td>
							<td><input type="text" name="nic" 
							value="<%=rs.getString("nic")%>" required /></td>

						</tr>
						<tr>
							<td>Phone:</td>
							<td><input type="text" name="phone" 
							value="<%=rs.getString("phone")%>" required></td>
						</tr>
						<tr>
							<td>e-mail:</td>
							<td><input type="text" name="email" 
							value="<%=rs.getString("email")%>" required></td>
						</tr>
						<tr>
							<td>Address:</td>
							<td><input id="Text1" type="text" name="address"
								value="<%=rs.getString("address")%>" required /></td>
						</tr> 
						<tr>
					<td><input type="submit" value="Update Admin"class="button">
					</td>
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