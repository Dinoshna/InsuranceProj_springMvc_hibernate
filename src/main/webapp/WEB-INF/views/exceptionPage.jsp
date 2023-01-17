<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ExceptionPage</title>
</head>
<body>
<div style="border-radius:10%;border:2px solid black;width:50%; margin-left:20%;margin-top:6%;padding:50px;">
	<h2 style="color: red; margin-left:10%;">Something went wrong!! Please, TryAgain
		After sometime!</h2>
	<h3 style="color: red;margin-left:10%;">${name}</h3>
	<br>
	<h3 style="color: red; margin-left:10%;">${message}</h3>

<img style="width:30%;margin-left:40%;"
		src="https://www.clipartkey.com/mpngs/m/96-963596_something-went-wrong-png.png"
		alt="image" />
	<ul>
		<li><a href="Home">Return to HomePage</a></li>
	</ul>

</div>

</body>
</html>