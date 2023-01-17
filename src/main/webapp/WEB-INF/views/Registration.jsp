<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration page</title>
<style>
* {
	box-sizing: border-box;
	padding: 0;
	margin: 0;
}

body {
	background:
		url("https://st2.depositphotos.com/1152339/9582/i/950/depositphotos_95822222-stock-photo-insurance-concept-family-and-palm.jpg");
	background-repeat: no-repeat;
	background-size: cover;
	background-color: white;
	color: white;
	font-family: "poppins", sans-serif;
}

.Register {
	background-color: white;
	margin-top: 10%;
	width: 30%;
	padding: 5%;
	margin-left: 15%;
	border-radius: 30px;
}
</style>
</head>
<body>
	<section class="Register">
		<div align="right">
			<h1 style="color: black">Registration Form</h1>
			<form action="registerProcess" method="post">
				<table>
					<tr>
						<td style="color: black">First Name</td>
						<td><input type="text" name="FirstName" required /></td>
					</tr>
					<tr>
						<td style="color: black">Last Name</td>
						<td><input type="text" name="LastName" required /></td>
					</tr>
					<tr>
						<td style="color: black">UserName</td>
						<td><input type="text" name="UserName" pattern="[a-zA-Z0-9]+" minlength="4" maxlength="20" required /></td>
					</tr>
					<tr>
						<td style="color: black">Password</td>
						<td><input type="password" name="Password" required/></td>
					</tr>
					<tr>
						<td style="color: black">Address</td>
						<td><input type="text" name="Address" required /></td>
					</tr>
					<tr>
						<td style="color: black">Contact No</td>
						<td><input type="text" name="Contact"  pattern="[0-9]{12}" required/></td>
					</tr>
					<tr>
						<td style="color: black">Login-Type:</td>
						<td><select name="LoginType" >
								<option value="Admin">Admin</option>
								<option value="User">User</option>
						</select></td>
					</tr>
					<tr>
				<td>
					<ul>
						<li style=" margin-top:15%;"><a href="Home">Go to Home</a></li>
					</ul>
				</td>
			</tr> 
				</table>
				<input type="submit" value="Submit" />
			</form>
		</div>
	</section>


</body>
</html>