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
<title>Pending Books | ARD Library</title>
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
				<li><a class="selected" href="pending.jsp">Pending Books</a></li>
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
							<h1>
								Pending Books

								<h1>
						</td>
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
						<td><b>Status</b></td>
						

					</tr>
					<%
						try {
							con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ard_lms", "root", "");
							st = con.createStatement();
							String sql = ("SELECT * FROM lending where rdate < CURDATE()");
							rs = st.executeQuery(sql);
							while (rs.next()) {
								String alert = "PENDING";
								request.setAttribute("alert",alert);
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
						<td><%= request.getAttribute("alert")%></td>
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