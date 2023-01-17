<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insurance</title>
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
	background-color: gray;
	color: white;
	font-family: "poppins", sans-serif;
	height: 70vh;
	background-repeat: no-repeat;
}

#navbarBlock nav {
	background-color: #fff;
	height: 60px;
	width: 100%;
	position: sticky;
	overflow: hidden;
	top: 0;
	margin: 0 auto;
	border-radius: 30px;
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

aside h1 {
	font-family: "Be Vietnam", sans-serif;
	font-size: 5.0625rem;
	margin-left: 50%;
}

main p {
	margin-left: 5%;
	margin-top: 10%;
	font-size: 24px;
	margin-bottom: 3%;
}
</style>
</head>
<body>
	<section id="navbarBlock">
		<nav>

			<ul>
				<li><a href="#">Home</a></li>
				<li><a href="About">About</a></li>
				<li><a href="login">Login</a></li>
				<li><a href="registration">register</a></li>
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
	<aside>
		<h1>
			Insurance<br>Policy
		</h1>
	</aside>
	</main>
</body>
</html>