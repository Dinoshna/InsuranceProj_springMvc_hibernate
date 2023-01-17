<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insurance Policy</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<style>
#p1 {
	border: 2px solid black;
	margin: 5%;
	background-color: white;
	border-radius: 30px;
	padding: 5%;
}
/* #p1 .p2 p{
 color:darkblue;
 } */
</style>
</head>
<body>

	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: darkblue">
			<div>
				<a href="<%=request.getContextPath()%>/policy/Welcome" class="navbar-brand">Home Insurance Policy</a>

			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/policy/userView"
					class="nav-link">Policies</a></li>
			</ul>
			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/Logout"
					class="nav-link">Logout</a></li>
			</ul>
		</nav>
	</header>
	<form action="calculate" method="post">
		<%-- <%
		int structureValue = 0;
		int contentValue = 0;
		int c = 30;
		%> --%>
		<div id="p1">
			<h1>Premium calculation for Home Insurance Policy</h1>
			<div class="p2">
				<p style="color: darkblue; font-size: 130%">
					<Strong>Structure Value :</strong>
				</p>
				<p>
					Estimated market value of your house or flat. You can derive this
					value by<br> - (built-up area multiplied by construction cost)
				</p>
				<div class="formInput">
					<label class="labelfield" for="field">Enter Structure value</label>
					<input type="text" name="structureValue">
				</div>
			</div>
			<div class="p3">
				<p style="color: darkblue; font-size: 130%">
					<strong>Content Value :</strong>
				</p>
				<p>
					Estimated value of house-hold items like TV, furniture,<br>
					appliances etc. Exclude anything that can be carried outside.
				</p>
				<div class="formInput">
					<label class="labelField" for="field">Enter Content Value</label> <input
						type="text" name="contentValue">
				</div>

			</div>

			<br>
			<div class="p4">
				<select>
					<option name="PolicyTerm">Enter Policy Term</option>
					<option value="1">1 year</option>
					<option value="2">2 year</option>
					<option value="3">3 year</option>
					<option value="4">4 year</option>
					<option value="5">5 year</option>
				</select> '
			</div>
			<div class="p5">
				<p>Which city is your home located in ?</p>
				<div class="inputform">
					<input type="text" name="homeInsuranceCalcCity" 
						placeholder="Enter City Name or Pincode">

				</div>
			</div>
			<br>
			<div class="container text-left">
				<button class="btn btn-success" name="submit" type="submit">
					Calculate Premium</button>
			</div>
			<br>

		</div>
	</form>
</body>
</html>