<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Insurance Policy</title>
<style>
* {
	box-sizing: border-box;
	padding: 0;
	margin: 0;
}

body {
	background:
		url("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4APHTaTh22NvsdDLoB0iBP133PQVV7cG5iw&usqp=CAU");
	background-repeat: no-repeat;
	background-size: cover;
	background-color: white;
	color: white;
	font-family: "poppins", sans-serif;
}

#navbarBlock nav {
	background-color: #fff;
	height: 60px;
	width: 80%;
	margin: 0 auto;
}

#navbarBlock nav>ul {
	list-style: none;
	display: flex;
	align-items: center;
	justify-content: center;
	height: 60px;
}

#navbarBlock nav ul li a {
	text-decoration: none;
	color: black;
	font-size: 17px;
	font-weight: bold;
	text-transform: uppercase;
	padding: 18px 20px;
	/*by increasing padding we will full box hover effect*/
}

#navbarBlock nav ul ul {
	background: white;
	list-style: none;
	width: 200px;
	position: absolute;
	top: 60px;
	border-top: 1px solid white;
	display: none;
}

#navbarBlock nav ul ul li a {
	display: block;
	padding: 10px;
	border-bottom: 1px solid white;
}

#navbarBlock nav ul li a:hover {
	background: darkblue;
	color: #fff;
}

#navbarBlock nav ul li:hover>ul {
	display: block;
}

.policy {
	margin: 10%;
}

.policy div {
	background-color: white;
	border: 2px solid black;
	width: 60%;
	height: 10vh;
	margin-left: 5%;
	margin: 5%;
	text-align: center;
	border-radius: 30%;
}

.policy h2 {
	margin-left: 5%;
}

.policy div a {
	font-size: 190%;
	margin-left: 5%;
}

#s1 {
	border: 2px solid black;
	height: 70vh;
}

aside h1 {
	font-family: "Be Vietnam", sans-serif;
	font-size: 45px;
	margin-left: 50%;
}

main p {
	margin-left: 5%;
	margin-top: 10%;
	font-size: 24px;
	margin-bottom: 3%;
}

main img {
	margin-left: 10%;
	
}
</style>
</head>
<body>


	<section id="navbarBlock">
		<nav>
			<ul>
				<li><a href="<%=request.getContextPath()%>/policy/Adminpage">Home</a></li>
				<li><a href="<%=request.getContextPath()%>/policy/adminView">list of Policies</a>
					<ul>
						<li><a href="<%=request.getContextPath()%>/policy/adminView">Home Insurance</a></li>
						<%-- <li><a href="<%=request.getContextPath()%>/policy/adminView">Life Insurance</a></li> --%>
						<li><a href="">Other Insurance</a></li>

					</ul></li>
				<!-- <li><a href="">Profile</a>
					<ul>
						<li><a href="">change password</a></li>
						<li><a href="">forgot password</a></li>
					</ul></li> -->
				<li><a href="<%=request.getContextPath()%>/Logout">Logout</a></li>
			</ul>
		</nav>
	</section>
	<main>
	<p>
		When you buy insurance from us, you get more than just financial
		safety.<br> <br> You also get: our promise of simplifying
		complex insurance terms and<br> conditions, quick stress-free
		claims, instant quotes from top insurers<br> and being present
		for you in the toughest of times.
	</p>

	<img
		src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQa7GRSWHQbg3YSMOPxN3-j29S5c0EY9HIOyQ&usqp=CAU"
		alt="image" />
	<aside>
		<h1>
			Let's find the Best<br>Insurance Policy
		</h1>
	</aside>
	</main>
</body>
</html>
