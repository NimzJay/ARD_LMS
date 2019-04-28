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
	</div>
	<div id="container">
		<div class="sidebar">
			<ul id="nav">
				<li><a href="admin_index.jsp">Dashboard</a></li>
				<li><a class="selected" href="Book_search.jsp">Book</a></li>
				<li><a href="User.jsp">User</a></li>
				<li><a href="issuehistory.jsp">Issue history</a></li>
			</ul>
		</div>
		<div class="content">
			<div class="box">
				<br>
				<table width="100%">
					<tr>
						<td>
							<h1>
								Update Books
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
							<td>Book Title:</td>
							<td><input id="Text1" type="text" name="btitle" required /></td>
							<td><input type="submit" value="Search" name="btnAdd"></td>
							<%
								String bti = request.getParameter("btitle");
							%>
						</tr>
					</table>
				</form>
			</div>
			<div class="forms">
				<%
					System.out.println("Book: " + bti);
					try {
						String sql = ("SELECT * FROM books WHERE bTitle = '"+bti+"'");
						Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ard_lms", "root", "");
						PreparedStatement st = con.prepareStatement(sql);
						ResultSet rs = st.executeQuery(sql);
						while (rs.next()) {
				%>
				<form class="bookAdd" action="BookUpdate" method="POST"
					name="admin">
					<table class="tab" style="border-color: black; color: black"
						align="center">
						<tr>
							<td>Book Title:</td>
							<td><input id="Text1" type="text" name="btitle"
								value="<%=rs.getString("bTitle")%>" required /></td>
						</tr>
						<tr>
							<td>ISBN:</td>
							<td><input id="Text1" type="text" name="isbn"
								value="<%=rs.getString("isbn")%>" required /></td>
						</tr>
						<tr>
							<td>Author:</td>
							<td><input id="Text1" type="text" name="author"
								value="<%=rs.getString("author")%>" required /></td>
						</tr>
						<tr>
							<td>category:</td>
							<td><input id="pass" type="text" name="category"
								value="<%=rs.getString("category")%>" required /></td>
						</tr>
						<tr>
							<td>Publisher:</td>
							<td><input id="pass" type="text" name="publisher"
								value="<%=rs.getString("publisher")%>" required /></td>
						</tr>
						<tr>
							<td>Edition:</td>
							<td><input type="text" name="edition" 
							value="<%=rs.getString("edition")%>" required /></td>

						</tr>
						<tr>
							<td>Language:</td>
							<td><input type="text" name="lang" 
							value="<%=rs.getString("language")%>" required></td>
						</tr>
						<tr>
							<td>Copies:</td>
							<td><input type="text" name="copies" 
							value="<%=rs.getInt("copies")%>" required></td>
						</tr>
						<tr>
							<td>Added Date:</td>
							<td><input id="Text1" type="date" name="addedon"
								value="<%=rs.getString("addedDate")%>" required /></td>
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