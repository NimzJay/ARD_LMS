<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="Styles/admin.css">
<link rel="stylesheet" type="text/css" href="Styles/category.css">
<title>Student_Update | ARD_Library</title>
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
			<li><a href="Book_search.jsp">Book</a></li>
			<li><a class="selected" href="User.jsp">User</a></li>
			<li><a href="Issue.jsp">Issue History</a></li>
			<li><a href="Emailing.jsp">Email</a></li>
		</ul>
	</div>

<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.DriverManager" %>
   
<%
String uid = request.getParameter("uid");
String driverName = "com.mysql.jdbc.Driver";

//Connection con = null;

try{
	Class.forName(driverName);
}catch(ClassNotFoundException ex){
	System.out.println("Error" + ex);
	ex.printStackTrace();
	
}

Connection con = null;
Statement st = null;
ResultSet rs = null;
%>

<h2 align = "center"><font><strong>Student Edit</strong></font></h2>
<form action="UpdateStudent" method="post">
<table align = "center" cellpadding="0.1" cellspacing="0.1" border = "1" action = "dt">
<tr>
</tr>




<tr bgcolor = "dimgray">

<td><b>Username</b></td>
<td><b>Password</b></td>
<td><b>FirstName</b></td>
<td><b>LastName</b></td>
<td><b>dob</b></td>
<td><b>NIC</b></td>
<td><b>phone</b></td>
<td><b>Email</b></td>


</tr>
<%
try{String sql= ("SELECT *FROM user WHERE uid = (SELECT MAX(uid)FROM user)");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ard_lms","root","");
	st=con.createStatement();
	
	
	rs=st.executeQuery(sql);
	while(rs.next()){
	
%>

<tr bgcolor = "dimgray">


<td><input type="text" name="username" value="<%=rs.getString("Username") %>"></td>
<td><input type="text" name="password" value="<%=rs.getString("Password") %>"></td>
<td><input type="text" name="fname" value="<%=rs.getString("fname") %>"></td>
<td><input type="text" name="lname" value="<%=rs.getString("lname") %>"></td>
<td><input type="text" name="dob" value="<%=rs.getString("dob") %>"></td>
<td><input type="text" name="nic" value="<%=rs.getString("nic") %>"></td>
<td><input type="text" name="phone" value="<%=rs.getString("phone") %>"></td>
<td><input type="text" name="email" value="<%=rs.getString("email") %>"></td>
<td><input type="text" name="address" value="<%=rs.getString("address") %>"></td>

<td><a href = "admin_index.jsp?ID=<%=rs.getString("uid")%>"><button type="button" class="Delete">Delete</button></a></td>
<td><input type="submit" value="Update" name="Update"></td>
</tr>
<%
	}
	
	
}catch (Exception ex){
	System.out.println("Error" + ex);
	ex.printStackTrace();

}

%>

</table>
</form>


</body>
</html>