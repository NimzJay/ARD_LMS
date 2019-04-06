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
<link rel="stylesheet" type="text/css" href="Styles/admin.css">
<link rel="stylesheet" type="text/css" href="Styles/user.css">
<title>View Books | ARD Library</title>
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
							<h1>View all Books<h1>
						</td>
						<td><a class="main_button" href="Book_view.jsp">View All Books</a> 
							<a class="main_button" href="Book_update.jsp">Edit Books</a> 
							<a class="main_button" href="Book_add.jsp">Add Books</a>
						</td>
					</tr>
				</table>
			</div>

			<div class="forms">
				<table width="100%" class="tab">
					<tr>
					</tr>

					<tr bgcolor="lightgray">
						<td><b>Book ID</b></td>
						<td><b>Book Title</b></td>
						<td><b>ISBN</b></td>
						<td><b>Author</b></td>
						<td><b>Category</b></td>
						<td><b>Publisher</b></td>
						<td><b>Edition</b></td>
						<td><b>Language</b></td>
						<td><b>Copies</b></td>
						<td><b>addedDate</b></td>
						<td><b></b></td>
						<td><b></b></td>

					</tr>
					<%
						try {
							con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ard_lms", "root", "");
							st = con.createStatement();
							String sql = ("SELECT * FROM books ");
							rs = st.executeQuery(sql);
							while (rs.next()) {
								String bt= rs.getString("bTitle");
								//Sesh.setbTitle(bt);
					%>
					<tr>

						<td><%=rs.getString("bid")%></td>
						<td><%=rs.getString("bTitle")%></td>
						<td><%=rs.getString("isbn")%></td>
						<td><%=rs.getString("author")%></td>
						<td><%=rs.getString("category")%></td>
						<td><%=rs.getString("publisher")%></td>
						<td><%=rs.getString("edition")%></td>
						<td><%=rs.getString("language")%></td>
						<td><%=rs.getInt("copies")%></td>
						<td><%=rs.getString("addedDate")%></td>
						<td><a class="sub_button" href="Book_update.jsp">Update</a></td>
						<td><a class="sub_button" href="Book_delete.jsp">Delete</a></td>
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