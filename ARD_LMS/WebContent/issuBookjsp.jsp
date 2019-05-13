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


<html>
<head>
<meta charset="ISO-8859-1">
<title>issue Books | ARD Library</title>
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
				<li><a href="admin_index.jsp">Dakhboard</a></li>
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
							<h1>
								issue Books
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
						<td>member:</td>
							<td><input id="Text2" type="text" name="btitle2"  /></td>
							<td><input type="submit" value="Search2" name="btnAdd2"></td>
							
						</tr>
					</table>
				</form>
			</div>
			<div class="forms">
				<%
				
				int iussetottodaye = 0;
					try {
						
						String b=request.getParameter("BookID");
						String bti2 = null;
						bti2= request.getParameter("btitle2");
					
						
						
						//String b =null;
							String name=null;
							String nic=null;
							String c = null;
							String t=null; 
							int c2 =0;
							
							
						
						
						
						if(!bti2.isEmpty()){
						
							
							
							String sql = ("SELECT * FROM books WHERE bid = '"+b+"'");
							Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ard_lms", "root", "");
							PreparedStatement st = con.prepareStatement(sql);
							ResultSet rs = st.executeQuery(sql); 
							
							
							System.out.println("ID inner if oc..22: "+bti2);
							String sql2 = ("SELECT * FROM user WHERE nic ='"+bti2+"'");
							Connection con2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/ard_lms", "root", "");
							PreparedStatement st2 = con.prepareStatement(sql2);
							ResultSet rs2 = st2.executeQuery(sql2);
							
						
							
							while (rs2.next()) {
								nic=rs2.getString("nic");
								//System.out.println(nic);
								name=rs2.getString("username");
								
								
								//System.out.println(nic);
								//System.out.println(name);
								//System.out.println(t);
								//System.out.println(c);
								
							}
							
							while(rs.next()){
								t=rs.getString("bTitle");
								c=rs.getString("copies");
								c2 = Integer.parseInt(c);
							}
							
							System.out.println(nic);
	                        String sql3 = ("SELECT SUM(lendingQty)AS p FROM lending WHERE Nic = '"+nic+"'");
						 	
							Connection con3 = DriverManager.getConnection("jdbc:mysql://localhost:3306/ard_lms", "root", "");
							PreparedStatement st3 = con3.prepareStatement(sql3);
							ResultSet rs3= st3.executeQuery(sql3);
							while (rs3.next()) { 
							     
								iussetottodaye = rs3.getInt("p");
								System.out.println(iussetottodaye);
								
							}
						
						}
											
				%>
					
	   <script type="text/javascript">			
	 function checkqty(theForm) {
		var text = theForm.copies.value;
		var text2 = theForm.qty.value;
		var text3 = theForm.userbrrqty.value;
		var t = 3;
		
		var integer = parseInt(text,10);
		var integer2 = parseInt(text2,10);
		var integer3 =parseInt(text3,10);
		var integer4 =parseInt(t,10);
		
		var int5 = integer2+integer3
		var integer5 =parseInt(int5,10);
		
		 
    if (integer3>=integer4)
    {
        alert('over load ');
        return false;
    }
    else if((integer2>integer4)){
    	alert('more than three .... ');
        return false;
    }
    else if((integer2 > integer)){
    	alert('low qty or .... ');
        return false;
    }
    else if((integer5 >integer4)){
    	alert('more than three .... ');
        return false;
    }
    else {
    	alert('ok');
        return true;
    }
}
	 </script>
       <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script>
            $(function () {
                $("#datepicker").datepicker({ dateFormat: "yy-mm-dd" });
            });
        </script>
           <script>
            $(function () {
                $("#datepicker2").datepicker({ dateFormat: "yy-mm-dd" });
            });
        </script>
				
				
          
				<form class="bookAdd" action="issu_book" onsubmit="return checkqty(this);" method="POST"
					name="theForm" >
					
					<table class="tab" style="border-color: black; color: black"
						align="center">
					    	<tr>
							<td>Book Title:</td>
							<td><input id="Text1" type="text" name="btitl"
								value="<%=t%>" required /></td>
						</tr>
						<tr>
							<td>Available Copies:</td>
							<td><input type="text" name="copies" 
							value="<%=c2%>" required></td>
						</tr>
						<tr>
							<td>qty:</td>
							<td><input id="Text1" type="text" name="qty" required /></td>
						</tr>
						<tr>
							<td>nic:</td>
							<td><input id="Text1" type="text" name="nic"
								value="<%=nic%>" required /></td>
						</tr>
						<tr>
							<td>name:</td>
							<td><input id="Text1" type="text" name="username"
								value="<%=name%>" required /></td>
						</tr>
							<tr>
							<td>return date:</td>
							<td><input id="datepicker" type="date" name="date"
								required /></td>
						</tr>
						<tr>
							<td>issue date:</td>
							<td><input id="datepicker2" type="date" name="date2"
								required /></td>
						</tr>
							<tr>
							<td>Currently Borrowed QuantityS:</td>
							<td><input id="Text1" type="text" name="userbrrqty"
								value="<%=iussetottodaye%>"required /></td>
						</tr>
 				     <tr></tr>
						<tr>
							<td></td>
							<td><input type="submit" value="issue" name="issu" /></td>
                             
						</tr>                    			 				  				   				    
					</table>
					
					<%  
						//}
						
					
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