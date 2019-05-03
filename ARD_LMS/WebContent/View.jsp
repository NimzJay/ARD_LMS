<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin | ARD Library</title>
<link rel="stylesheet" type="text/css" href="Styles/admin.css">
<link rel="stylesheet" type="text/css" href="Styles/view.css">
<meta name="viewport" content="width=device-width, initial-scale: 1.0, user-scalable=0" />
</head>
<body>
<body>







<div class="header">
	<div class="logo">
		<a href="admin_index.jsp"> &nbsp &nbsp ARD &nbsp<span>Library</span></a>
	</div>
</div>
<div id="container">


<a class="main_button" href="">View All Member</a>
<a class="main_button" href="">Edit Member</a>

<a class="main_button" href="">Search Member</a>




	<div class="sidebar">
		<ul id="nav">
			<li><a class="selected" href="admin_index.jsp">Dashboard</a></li>
			<li><a href="Book_search.jsp">Book</a></li>
			<li><a href="User.jsp">User</a></li>
			<li><a href="Issue.jsp">Issue history</a></li>
		</ul>
	</div>
	
	<div class="content">
	<style>
table, td, th {
  border: 1px solid black;
}

table {
  border-collapse: collapse;
  width: 100%;
}

td {
  height: 70px;
  vertical-align: bottom;
}
</style>

	
	<br><br><br>
	
	
	<table>
  <tr>
  <table bgcolor="cccccc">
  <br><br><br>
    <th>Addmission No</th>
    
    <th>Name</th>
    
    <th>Grade</th>
    <th>Section</th>
    <th>Status</th>
  </tr>
  <br><br><br>
  <tr>
    <td>      </td>
    <td>     </td>
    <td>    </td>
    <td>    </td>
    <td>    </td>
  </tr>
  <tr>
    <td>      </td>
    <td>      </td>
    <td>     </td>
    <td>     </td>
    <td>    </td>
  </tr>
  <tr>
    <td>      </td>
    <td>     </td>
    <td>    </td>
    <td>    </td>
    <td>    </td>
  </tr>
  <tr>
    <td>    </td>
    <td>    </td>
    <td>    </td>
    <td>    </td>
    <td>     </td>
  </tr>
</table>

</body>
</html>
	
	
	<style>
* {
  box-sizing: border-box;
}

body {
  font-family: Arial, Helvetica, sans-serif;
}

/* Style the header */
header {
  background-color: #666;
  padding: 10px;
  text-align: center;
  font-size: 25px;
  color: white;
}

/* Create two columns/boxes that floats next to each other */
nav {
  float: left;
  width: 30%;
  height: 300px; /* only for demonstration, should be removed */
  background: #ccc;
  padding: 20px;
}

/* Style the list inside the menu */
nav ul {
  list-style-type: none;
  padding: 0;
}

article {
  float: left;
  padding: 20px;
  width: 70%;
  background-color: #f1f1f1;
  height: 300px; /* only for demonstration, should be removed */
}

/* Clear floats after the columns */
section:after {
  content: "";
  display: table;
  clear: both;
}

/* Style the footer */
footer {
  background-color: #777;
  padding: 10px;
  text-align: center;
  color: white;
}

/* Responsive layout - makes the two columns/boxes stack on top of each other instead of next to each other, on small screens */
@media (max-width: 600px) {
  nav, article {
    width: 100%;
    height: auto;
  }
}


