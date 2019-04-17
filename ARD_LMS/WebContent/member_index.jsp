<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home | ARD Library</title>
<link rel="stylesheet" type="text/css" href="Styles/main.css">
</head>
<body>
<div class="slideshow" style="max-width: 100%; max-height: 500px;">
    <img class="mySlides" src="pix/12.jpg">
    <img class="mySlides" src="pix/13.jpg">
    <img class="mySlides" src="pix/15.jpg">
    <img class="mySlides" src="pix/16.jpg">
    <img class="mySlides" src="pix/elepha.jpg">
    <img class="mySlides" src="pix/21.jpg">
    <img class="mySlides" src="pix/a.jpg">
    <img class="mySlides" src="pix/c.jpg">
</div>
<script type="text/javascript">
    var myIndex = 0;
    carousel();

    function carousel() {
        var i;
        var x = document.getElementsByClassName("mySlides");
        for (i = 0; i < x.length; i++){
            x[i].style.display = "none";
        }
        myIndex++;
        if (myIndex > x.length){myIndex = 1}
        x[myIndex-1].style.display = "block";
        setTimeout(carousel,5000);
    }
</script>
<div class="header">
        <a href="" class="right"> LOGOUT </a>
        <a href="" class="right"> MY LIST </a>
        <a href="" class="right"> SEARCH </a>
        <a href="" class="right"> ABOUT US </a>
        <a href="" class="right"> HOME </a>
        <img src="pic/logo.png" width="60%" height="40%">
</div>
<footer>
    <a href="" class="footer"> HOME </a>
    <a href="" class="footer"> ABOUT US </a>
    <a href="" class="footer"> SEARCH </a>
    <a href="" class="footer"> MY LIST </a>
    <a href="" class="footer"> MY LIST </a>
    
    <br><br>
    <hr color="dimgrey" width="100%">
    <table align="center" style="width: 70%; text-align: left; padding: 0px; margin-top:0px ; margin-bottom:0px; border-bottom=">
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
            <td class="footer">Fax &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; +94112456783</td>
            <td class="footer"><a class="footer" href="">Facebook</a></td>
        </tr>
        <tr>
            <td class="footer">Sri Lanka</td>
            <td class="footer">Email &nbsp;&nbsp;&nbsp;&nbsp; inquiry@ardlibrary.com</td>
            <td class="footer"><a class="footer" href="">Instagram</a></td>
        </tr>
    </table>
    <hr color="dimgrey" width="100%"><br>
    <p class="footer">
        <img src="pic/logo.png" width="20%" height="10%"><br>
        Copyright 2019 @ ARDLIBRARY - All Rights Reserved<br><br>
        Website Designed and Developed by IT_WD_19_03
    </p>
</footer>
</body>
</html>