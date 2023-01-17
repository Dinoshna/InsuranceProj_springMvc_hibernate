<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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

div p {
	margin-left: 5%;
	margin-top: 5%;
	font-size: 24px;
	margin-bottom: 3%;
}

div img {
	margin-left: 10%;
}
</style>
</head>
<body>
	
	<section id="navbarBlock">
		<nav>
			<ul>
				<li><a href="Home">Home</a></li>
				<li><a href="About">About</a></li>
				
			</ul>
		</nav>
	</section>
	<div>
		<p>
			Back in 2008, insurance customers in India were facing a tough time.
			There was lack of information on products, transparency was missing,
			mis-selling was rampant, there was a high lapse rate of insurance
			policies and consumers a general apathy towards the insurance
			industry. Insurance companies made profits from policy surrender
			charges and the entire industry was mired in murkiness. That is when
			a small bunch of people, with no insurance experience, started
			re-imagining what the insurance space could be. They imagined a place
			where consumers could find completely transparent insurance
			information, and an option to research and compare insurance products
			so they could buy what they really. A place where all
			communications would be recorded so that there would be a clear audit
			trail of who said what in a product complex as insurance. A place
			that provided a common service layer for all consumer services and
			claims. When you buy insurance from us, you get more than just
			financial safety.<br> <br> You also get: our promise of
			simplifying complex insurance terms and<br> conditions, quick
			stress-free claims, instant quotes from top insurers<br> and
			being present for you in the toughest of times.
		</p>

		<img src="https://static.pbcdn.in/cdn/images/career/growing.png"
			alt="image" /> <img
			src="https://static.pbcdn.in/cdn/images/career/map.png" alt="image" />
		<aside>

			<h1>
				Leading insurance distributor<br>
			</h1>
			<p>We are a leading distributor of insurance in India outside of
				banks</p>


		</aside>
	</div>
</body>
</html>