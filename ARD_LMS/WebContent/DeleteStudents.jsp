<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="javax.servlet.*"%>
<%@page import="java.io.IOException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Student | ARD Library</title>
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
				<li><a class="selected" href="User.jsp">User</a></li>
				<li><a href="issue_history.jsp">Issue history</a></li>
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
							<h1>Delete Student<h1>
						</td>
						<td><a class="main_button" href="UpdateStudent.jsp">View All Members</a> 
							<a class="main_button" href="UpdateStudent.jsp">Update Student</a> 
							<a class="main_button" href="AddStudent.jsp">Add Student</a>
						</td>
					</tr>
				</table>
			</div>
			
			<div class="forms">
				<%
				try {
					String id = request.getParameter("ID");

					System.out.println("UID: " + id);

					Class.forName("com.mysql.jdbc.Driver");
		            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ard_lms","root","");
					String sql = ("Delete from user WHERE uid='"+id+"'"); 
				    PreparedStatement st = con.prepareStatement(sql);
				    st.executeUpdate(sql);
				    System.out.println("Successfully Deleted ");
				    request.getRequestDispatcher("UpdateStudent.jsp").forward(request, response);
					    
				%>
				<form class="bookAdd" method="POST" name="admin" action="BookDelete">
	
					<%

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