<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Library Member | ARD Library</title>
<link rel="stylesheet" type="text/css" href="Styles/AddStudent.css">
<link rel="stylesheet" type="text/css" href="Styles/category.css">
<link rel="stylesheet" type="text/css" href="Styles/admin.css">
<link rel="stylesheet" type="text/css" href="Styles/style.css">


<meta name="viewport" content="width=device-width, initial-scale: 1.0, user-scalable=0" />
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
		<div class="box"><br>
		<table width="100%">
			<tr>
				<td>
					<h1>Add Library Member<h1>
				</td>
				<td>
					<a class="main_button" href="">Edit Member</a>
					<a class="main_button" href="">Delete Member</a>
					<a class="main_button" href="">View All Student</a>
				</td>
			</tr>
		</table>
		</div>
		
		<div class="forms">
			<p align="Left" style="letter-spacing: 4px">Add Library Member Form</p><hr>
			<form name="AdminAdd" action="AddStudent" method="POST">
    		<table class="tab" style="border-color:white; color: dimgray" align="center">
        		<tr>
            		<td>Username: </td>
            		<td><input id="Text1" type="text" name="username" required/></td>
            		<td><button class = "find_button" onsubmit="view">Find</button></td>
        		</tr>
        		<tr>
            		<td>Password: </td>
            		<td><input id="Text1" type="password" name="password" pattern=".{6,}" title="Six or more characters" /></td>
        		</tr>
        		<tr>
            		<td>First Name: </td>
            		<td><input id="Text1" type="text" name="fname" required/></td>
        		</tr>
        		<tr>
            		<td>Last Name: </td>
            		<td><input id="Text1" type="text" name="lname" required/></td>
        		</tr>
        		<tr>
            		<td>Date of Birth: </td>
            		
            		<td><input id="Text1" type="date" name="dob" required/></td>
        		</tr>
        		<tr>
            		<td>NIC: </td>
            		<td><input id="Text1" type="text" name="nic"required/></td>
        		</tr>
        		<tr>
            		<td>Phone: </td>
            		<td><input id="Text1" type="tell" name="phone" required/></td>
        		</tr>
        		<tr>
            		<td>e-mail: </td>
            		<td><input id="Text1" type="email" name="email" required/></td>
        		</tr>
        		<tr>
				<tr>
            		<td>Address: </td>
            		<td><input id="Text1" type="text" name="address" required/></td>
        		</tr>
				<tr>
					<td><input type="submit" value="Add Member" class="button">
					</td>
				</tr>
    		</table>
			</form>
		</div>	
	</div>
</div>
</body>
</html>