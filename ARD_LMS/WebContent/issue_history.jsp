<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>

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
<link rel="icon" type="image/png" href="pix/favicon.png">
<link rel="stylesheet" type="text/css" href="Styles/admin.css">
<link rel="stylesheet" type="text/css" href="Styles/user.css">
<title>View Books | ARD Library</title>
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
				<li><a class="selected" href="issue_history.jsp">Issue history</a></li>
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
								Issue History

								<h1>
						</td>
						<td><a class="main_button" href="Book_view.jsp">View All
								Books</a> <a class="main_button" href="Book_update.jsp">Edit
								Books</a> <a class="main_button" href="Book_add.jsp">Add Books</a></td>
					</tr>
				</table>
			</div>

			<div class="forms">
				<table width="100%" class="tab">
					<tr>
					</tr>

					<tr bgcolor="lightgray">
						<td><b>issue ID</b></td>
						<td><b>nic</b></td>
						<td><b>book titele</b></td>
						<td><b>user name</b></td>						
						<td><b>Copies</b></td>
						<td><b>lendingQty</b></td>						
						<td><b>status</b></td>
					    <td><b>return date</b></td>
						<td><b></b></td>
						<td><b></b></td>

					</tr>
					<%
						try {
							con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ard_lms", "root", "");
							st = con.createStatement();
							String sql = ("SELECT * FROM lending ");
							rs = st.executeQuery(sql);
							while (rs.next()) {
								//String bt = rs.getString("bTitle");
								//Sesh.setbTitle(bt);
					%>
					<tr>
						<td><%=rs.getString("lnedID")%></td>
						<td><%=rs.getString("Nic")%></td>
						<td><%=rs.getString("bookTitele")%></td>
						<td><%=rs.getString("userName")%></td>
						<td><%=rs.getString("copies")%></td>
						<td><%=rs.getString("lendingQty")%></td>
						<td><%=rs.getString("status")%></td>
						<td><%=rs.getString("rdate")%></td>
						<% int id = Integer.parseInt(rs.getString("lnedID")); %>						
						<td><a class="sub_button" href="Book_update.jsp">Update</a></td>						
			            <td><a class="sub_button" href=<%="return_book.jsp?ID="+id+""%>>return</a></td>
			           
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