<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="javax.servlet.*"%>
<%@page import="java.io.IOException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import ="java.util.Date"%>
<%@page import ="java.time.LocalDateTime"%>
<%@page import ="java.time.format.DateTimeFormatter"%>





<%
	String bid = request.getParameter("bTitle");
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
<title>Update Books | ARD Library</title>
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
								return Books
							<h1>
						</td>
						<td><a class="main_button" href="Book_view.jsp">View All Books</a> 
							<a class="main_button" href="Book_update.jsp">Edit Books</a> 
							<a class="main_button" href="Book_add.jsp">Add Books</a></td>
					</tr>
				</table>
			</div>
			<div class="forms">
				<form class="bookAdd" method="POST" name="admin">
					<table class="tab" style="border-color: black; color: black"
						align="center">
						<tr>
							<%String b=request.getParameter("ID"); %>
						</tr>
					</table>
				</form>
			</div>
			<div class="forms">
				<%     
				
				LocalDateTime dateTime = LocalDateTime.now(); 
				DateTimeFormatter formatter = DateTimeFormatter.ofPattern("MM/dd/yyyy");
				System.out.println(dateTime.format(formatter));
				
				String dateStart = dateTime.format(formatter);
				 String dateStop =null;
				try {
					
					
					String sql2 = ("SELECT rdate FROM lending WHERE lnedID = '"+b+"'");
					Connection con2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/ard_lms", "root", "");
					PreparedStatement st2 = con2.prepareStatement(sql2);
					ResultSet rs2 = st2.executeQuery(sql2);
					while (rs2.next()) {
					  dateStop = rs2.getString("rdate");
					}
				} catch (Exception ex) {
					System.out.println("Error: " + ex);
					ex.printStackTrace();
				}
										
				//HH converts hour in 24 hours format (0-23), day calculation
				SimpleDateFormat format = new SimpleDateFormat("MM/dd/yyyy");
				 long diffDays = 0;
				 long finecal = 0;
				 int o =2;
				Date d1 = null;
				Date d2 = null;
				 
				d1 = format.parse(dateStart);
				d2 = format.parse(dateStop);
				
				if(d2.compareTo(d1) < 0){
					//in milliseconds
					long diff = d1.getTime() - d2.getTime();

					long diffSeconds = diff / 1000 % 60;
					long diffMinutes = diff / (60 * 1000) % 60;
					long diffHours = diff / (60 * 60 * 1000) % 24;
				    diffDays = diff / (24 * 60 * 60 * 1000);
                    
				     finecal = diffDays *10;
					System.out.print(diffDays + " days, ");
					System.out.print(diffHours + " hours, ");
					System.out.print(diffMinutes + " minutes, ");
					System.out.print(diffSeconds + " seconds.");
				}
		      else{
			diffDays =0;
		     }
				
				
				   
				  			
							System.out.println("Book: " + b);
					try {
						
											
						String sql = ("SELECT * FROM lending WHERE lnedID = '"+b+"'");
						Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ard_lms", "root", "");
						PreparedStatement st = con.prepareStatement(sql);
						ResultSet rs = st.executeQuery(sql);
						while (rs.next()) {
							
							
				%>
				<form class="bookAdd" action="returnBook" method="POST"
					name="return">
					<table class="tab" style="border-color: black; color: black"
						align="center">
							<tr>
							<td>lend ID:</td>
							<td><input id="Text1" type="text" name="id"
								value="<%=rs.getString("lnedID")%>"required /></td>
						</tr>
					    	<tr>
							<td>Book Title:</td>
							<td><input id="Text1" type="text" name="btitl"
								value="<%=rs.getString("bookTitele")%>"required /></td>
						</tr>
						<tr>
							<td>Copies:</td>
							<td><input type="text" name="copies" 
							value="<%=rs.getInt("lendingQty")%>" required></td>
						</tr>
						<tr>
							<td>qty:</td>
							<td><input id="Text1" type="text" value = "<%=rs.getString("lendingQty")%>" name="qty" required /></td>
						</tr>
						<tr>
							<td>nic:</td>
							<td><input id="Text1" type="text" name="nic"
								value="<%=rs.getString("Nic")%>" required /></td>
						</tr>
						<tr>
							<td>name:</td>
							<td><input id="Text1" type="text" name="username"
								value="<%=rs.getString("userName")%>"required /></td>
						</tr>
						<tr>
							<td>date:</td>
							<td><input id="Text1" type="text" name="rrdate"
								value="<%=diffDays%>"/></td>
						</tr>
						<tr>
							<td>fine</td>
							<td><input id="Text1" type="text" name="fine"
								value="<%=finecal%>"/></td>
						</tr>

						<tr>
							<td></td>
							<td><input type="submit" value="return" name="return" /></td>

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