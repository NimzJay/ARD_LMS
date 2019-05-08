<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Email Client</title>
<link rel="icon" type="image/png" href="pix/favicon.png">
</head>
<body>
<h1>Contact Us</h1>
<form method="POST" action="MailDispatcherServlet">
	<table>
		<tr>
			<td align="right"><b>To:</b></td>
			<td>
				<input type="text" name="email" size="75">
			</td>
		</tr>
		 
		 <tr>
			<td align="right"><b>Subject:</b></td>
			<td>
				<input type="text" name="subject" size="75">
			</td>
		</tr>
		
		<tr>
			<td align="right"><b>Message:</b></td>
			<td>
				<textarea name="message" cols="70" rows="6"></textarea>
			</td>
		</tr>
	
		 <tr>
			<td></td>
			<td>
				<input type="submit" value="Send" >
			</td>
		</tr>
		
	</table>

</form>


</body>
</html>