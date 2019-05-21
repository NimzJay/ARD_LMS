<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.IOException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*"%>
<%@page import ="java.io.*" %>
<%@page import ="javax.servlet.*" %>
<%@page import ="javax.servlet.http.*" %>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Books | ARD Library</title>
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
				<li><a class="selected" href="Book_search.jsp">Book</a></li>
				<li><a href="User.jsp">User</a></li>
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
							<h1>All Books<h1>
						</td>
						<td><a class="main_button" href="Book_view.jsp">View All Books</a> 
							<a class="main_button" href="Book_update.jsp">Edit Books</a> 
							<a class="main_button" href="Book_add.jsp">Add Books</a>
						</td>
					</tr>
				</table>
			</div>
			<div class="box">
				<br>
				<%  
				
			     	
				   
				    try {
				    	 int issuetot=0;
				    	 int iussetottodaye = 0;
				    	 int totbooks = 0;
				    	 int totuesr = 0;
				    	// int 
					
					String sql = ("SELECT SUM(lendingQty)AS total  FROM lending");
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ard_lms", "root", "");
					PreparedStatement st = con.prepareStatement(sql);
					ResultSet rs = st.executeQuery(sql);
					while (rs.next()) { 
					
						issuetot = rs.getInt("total");
						System.out.println(issuetot);
						
					}
					
				 	String sql2 = ("SELECT rdate,SUM(lendingQty)AS p FROM lending WHERE DATE(issueDate) = CURDATE()");
				 	
					Connection con2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/ard_lms", "root", "");
					PreparedStatement st2 = con2.prepareStatement(sql2);
					ResultSet rs2 = st2.executeQuery(sql2);
					while (rs2.next()) { 
					
						iussetottodaye = rs2.getInt("p");
						System.out.println(iussetottodaye);
						
					}
                   String sql3 = ("SELECT SUM(copies)AS p3 FROM books");
				 	
					Connection con3 = DriverManager.getConnection("jdbc:mysql://localhost:3306/ard_lms", "root", "");
					PreparedStatement st3 = con3.prepareStatement(sql3);
					ResultSet rs3 = st3.executeQuery(sql3);
					while (rs3.next()) { 
					
						totbooks = rs3.getInt("p3");
						System.out.println(totbooks);
						
					}
					  String sql4 = ("SELECT COUNT(uid)AS p4 FROM user");
					 	
						Connection con4 = DriverManager.getConnection("jdbc:mysql://localhost:3306/ard_lms", "root", "");
						PreparedStatement st4 = con4.prepareStatement(sql4);
						ResultSet rs4 = st4.executeQuery(sql4);
						while (rs4.next()) { 
						
							totuesr = rs4.getInt("p4");
							System.out.println(totuesr);
							
						}
					 
						
					%>
				<table width="100%">
					<tr>
						<td>
							<div class="mini">Total Books</div>
							
						</td>
						<td>
							<div class="mini">Total Users</div>
						</td>
						<td>
							<div class="mini">Issues Today</div>
						</td>
						<td>
							<div class="mini">Total Books Out</div>
							
						</td>
					</tr>
						<tr>
						<td>
							<div class="mini"><%out.print(totbooks);%></div>
							
						</td>
						<td>
							<div class="mini"><%out.print(totuesr);%></div>
						</td>
						<td>
							<div class="mini"><%out.print(iussetottodaye);%></div>
						</td>
						<td>
							<div class="mini"><%out.print(issuetot);%></div>
							
						</td>
					</tr>
				</table>
				
				<%

					
					//System.out.println(tot);
					
					} catch (Exception ex) {
						System.out.println("Error: " + ex);
						ex.printStackTrace();
					}
				
				
				%>
				
				
			</div>
			<div class="box2">
				
			</div>
			<div class="box2">
				
			</div>
		</div>
	</div>
</body>
</html>