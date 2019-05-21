<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="javax.servlet.*"%>
<%@page import="java.io.IOException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="util.DBConnection" %>

<%
	//String btitle = request.getParameter("bTitle");
	String driverName = "com.mysql.jdbc.Driver";

	try {
		Class.forName(driverName);
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	}

	Connection con, con2 = null;
	Statement st,st2 = null;
	ResultSet rs,rs2 = null;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Catalog | ARD Library</title>
<link rel="stylesheet" type="text/css" href="Styles/main.css">
<link rel="icon" type="image/png" href="pix/favicon.png">
<meta name="viewport"
	content="width=device-width, initial-scale: 1.0, user-scalable=0" />
</head>
<body>
	<div class="slideshow" style="max-width: 100%; max-height: 500px;">
		<img class="mySlides" src="pix/m.jpg"> 
	</div>
	<script type="text/javascript">
		var myIndex = 0;
		carousel();

		function carousel() {
			var i;
			var x = document.getElementsByClassName("mySlides");
			for (i = 0; i < x.length; i++) {
				x[i].style.display = "none";
			}
			myIndex++;
			if (myIndex > x.length) {
				myIndex = 1
			}
			x[myIndex - 1].style.display = "block";
			setTimeout(carousel, 5000);
		}
	</script>
	<div class="header">
		<a href="index.jsp" class="right"> LOGOUT </a>
		<a href="c_MyProfile.jsp" class="right"> MY PROFILE </a>  
		<a href="c_Catalog.jsp" class="right"> CATALOG </a> 
		<a href="c_AboutUs.jsp" class="right"> ABOUT US </a> 
		<a href="clientUI.jsp" class="right"> HOME </a> 
	</div>
	<div class="nav">
		<a href="clientUI.jsp"> HOME </a> 
		<a>&nbsp>  </a>
		<a href="c_Catalog.jsp"> CATALOG </a>
	</div>
	<br>
	<br>
	<br>
	<div class="container">
		<p id="heading">CATALOG</p>
		<br>
		<div class="forms">
			<table class="tab" align="center">
				<tr>
					<td>
						<form action="" method="POST" name="admin">
							<table class="tab" align="center">
								<tr>
									<td><input id="Text1" type="text" name="tit" required /></td>
									<td><input type="submit" value="Search By Title"
										name="titleSearch"></td>
									<%
										String tit = request.getParameter("tit");
									%>
								</tr>
							</table>
						</form>
					</td>
					<td>
						<form action="" method="POST" name="admin">
							<table class="tab" align="center">
								<tr>
									<td><input id="Text1" type="text" name="author" required /></td>
									<td><input type="submit" value="Search By Author"
										name="authorSearch"></td>
									<%
										String auth = request.getParameter("author");
									%>
								</tr>
							</table>
						</form>
					</td>
				</tr>
			</table>
			<br><br>
		</div>
		<div class="forms">
			<table width="100%" class="tab">
				<tr>
				</tr>
				<tr bgcolor="lightgray">
					<td><b>Book Title</b></td>
					<td><b>ISBN</b></td>
					<td><b>Author</b></td>
					<td><b>Category</b></td>
					<td><b>Publisher</b></td>
					<td><b>Edition</b></td>
					<td><b>Language</b></td>
					<td><b>Copies</b></td>
					<td><b>addedDate</b></td>
				</tr>
				<%
					System.out.println("Book ID: " + tit);
					try {
						con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ard_lms", "root", "");
						st = con.createStatement();
						String sql = ("SELECT * FROM books where bTitle = '"+tit+"'");
						rs = st.executeQuery(sql);
						while (rs.next()) {
							//String bt = rs.getString("bTitle");
							//Sesh.setbTitle(bt);
				%>
				<tr>
					<td><%=rs.getString("bTitle")%></td>
					<td><%=rs.getString("isbn")%></td>
					<td><%=rs.getString("author")%></td>
					<td><%=rs.getString("category")%></td>
					<td><%=rs.getString("publisher")%></td>
					<td><%=rs.getString("edition")%></td>
					<td><%=rs.getString("language")%></td>
					<td><%=rs.getInt("copies")%></td>
					<td><%=rs.getString("addedDate")%></td>
				</tr>
				<%
					}
					} catch (Exception e) {
						e.printStackTrace();
					}
				%>
			</table>
		</div>
		<div class="forms">
			<table width="100%" class="tab">
				<tr>
				</tr>
				<tr bgcolor="lightgray">
					<td><b>Book Title</b></td>
					<td><b>ISBN</b></td>
					<td><b>Author</b></td>
					<td><b>Category</b></td>
					<td><b>Publisher</b></td>
					<td><b>Edition</b></td>
					<td><b>Language</b></td>
					<td><b>Copies</b></td>
					<td><b>addedDate</b></td>
				</tr>
				<%
					try {
						System.out.println("Book ID: " + auth);
						con2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/ard_lms", "root", "");
						st2 = con2.createStatement();
						String sql2 = ("SELECT * FROM books where author = '"+auth+"'");
						rs2 = st2.executeQuery(sql2);
						while (rs2.next()) {
							//String bt = rs.getString("bTitle");
							//Sesh.setbTitle(bt);
				%>
				<tr>
					<td><%=rs2.getString("bTitle")%></td>
					<td><%=rs2.getString("isbn")%></td>
					<td><%=rs2.getString("author")%></td>
					<td><%=rs2.getString("category")%></td>
					<td><%=rs2.getString("publisher")%></td>
					<td><%=rs2.getString("edition")%></td>
					<td><%=rs2.getString("language")%></td>
					<td><%=rs2.getInt("copies")%></td>
					<td><%=rs2.getString("addedDate")%></td>
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
	<br><br><br>
	<footer>
		<a href="clientUI.jsp" class="footer"> HOME </a> 
		<a href="c_AboutUs.jsp" class="footer"> ABOUT US </a> 
		<a href="c_Catalog.jsp" class="footer"> CATALOG </a> 
		<a href="c_MyProfile.jsp" class="footer"> MY PROFILE </a>
		<div class="logout" float="right">
			<form class="logout" name="logout" action="logout" method="POST">
				<input type="submit" value="LOGOUT" name="logout">
			</form>
		</div>
		<br> <br>
		<hr color="dimgrey" width="100%" height="0.1px">
		<table align="center"
			style="width: 70%; text-align: left; padding: 0px; margin-top: 0px; margin-bottom: 0px;">
			<tr>
				<td class="footer" style="color: white">ARD LIBRARY PVT.LTD.</td>
				<td class="footer">Phone &nbsp;&nbsp; +94112999999</td>
				<td class="footer" style="color: white">FIND US ON SOCIAL MEDIA</td>
			</tr>
			<tr>
				<td class="footer">#225, Torrington Avenue,</td>
				<td class="footer">Phone &nbsp;&nbsp; +94767999999</td>
				<td class="footer"><a class="footer" href="">Google+</a></td>
			</tr>
			<tr>
				<td class="footer">Colombo 05.</td>
				<td class="footer">Fax
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; +94112456783</td>
				<td class="footer"><a class="footer" href="">Facebook</a></td>
			</tr>
			<tr>
				<td class="footer">Sri Lanka</td>
				<td class="footer">Email &nbsp;&nbsp;&nbsp;&nbsp;
					inquiry@ardlibrary.com</td>
				<td class="footer"><a class="footer" href="">Instagram</a></td>
			</tr>
		</table>
		<hr color="dimgrey" width="100%" height="0.1px">
		<br>
		<p class="footer">
			<img src="pix/logo.png" width="10%" height="5%"><br>
			Copyright 2019 @ ARDLIBRARY - All Rights Reserved<br> <br>
			Website Designed and Developed by IT_WD_19_03
		</p>
	</footer>
</body>
</html>