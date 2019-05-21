<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About Us | ARD Library</title>
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
		<a href="c_AboutUs.jsp"> ABOUT US </a>
	</div>
	<br>
	<br>
	<br>
	<div class="container">
		<p id="heading">OUR SERVICES</p><br>
		<table class="container" align="center">
			<tr>
				<th>Ask a Librarian</th>
				<th>Meeting Rooms</th>
				<th>Study Rooms</th>
			</tr>
			<tr>
				<td>Feel free to ask our librarians<br>
					about any book located at our <br>
					library storage.
				</td>
				<td>Our library provides well-<br>
					equipped meeting rooms <br>
					ranging in size from 12 to 300.
				</td>
				<td>Our study rooms located in <br>
					library spaces can be reserved <br>
					up to two weeks in advance.
				</td>
			</tr>
			<tr>
				<th>Research</th>
				<th>Exhibitions</th>
				<th>Computer classes</th>
			</tr>
			<tr>
				<td>ARD library offers <br>
					various set of resources for <br>
					researchers and scholars.
				</td>
				<td>Feel free to visit any of our <br>
					regular book exhibitions <br>
					featuring popular authors.
				</td>
				<td>Gain access to the immense <br>
					eBook database using our <br>
					computer classes.
				</td>
			</tr>
		</table>
	</div>
	
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