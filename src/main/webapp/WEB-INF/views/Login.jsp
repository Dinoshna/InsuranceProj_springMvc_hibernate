<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.insurance.policy.repository.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<style>
body {
	background-image:
		url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYqIc6wWpsbawIQjenybDxqwU9ioP-kGMIdQ&usqp=CAU');
	background-repeat: no-repeat;
	background-size: cover;
}

h1 a {
	color: black;
}

table tr td {
	color: black;
}

form {
	background-color: white;
	width: 35%;
	height: 37vh;
	margin-left: 30%;
	margin-top: 10%;
	border-radius: 40px;
}
</style>
</head>
<body>
	<form action="LoginProcess" align="center" method="post">
		<table align="center">
			<br>
			<h2 align="center">Login</h2>
			<tr>
				<td>UserName</td>
				<td><input type="text" name="UserName" required/></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="password" name="Password" required /></td>
			</tr>
			<tr>
				<td style="color: black">Login-Type:</td>
				<td><select style="width: 100%" name="LoginType">
						<option value="Admin">Admin</option>
						<option value="User">User</option>
				</select></td>
			</tr>
			<tr>
				<td><input
					style="margin-left: 150%; margin-top: 20%; width: 120%;"
					type="submit" value="Login"/></td>
			</tr>
			
			  <tr>
				<td>
					<ul>
						<li style="margin-left:250%;"><a href="Home">Home</a></li>
					</ul>
				</td>
			</tr> 
	</form>
</body>
</html>

