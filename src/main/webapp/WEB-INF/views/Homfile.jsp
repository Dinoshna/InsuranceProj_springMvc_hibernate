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
aside h1 {
	font-family: "Be Vietnam", sans-serif;
	font-size: 5.0625rem;
	margin-left: 50%;
	margin-top:10%;
}
.policy{
margin:10%;
}
.policy div{
background-color:white;
border:2px solid black;
width:60%;
height:10vh;
margin-left:5%;
margin:5%;
text-align:center;
border-radius:30%;
}
.policy h2{
margin-left:5%;
}
.policy div a{

font-size:190%;
margin-left:5%;
}
#m1 {
  width: 100%;
  height: 45vh;
  background-color: rgb(10, 10, 26);
}
#m1 h1 {
  color: white;
}
#m1 a {
  text-decoration: none;
}
#m1 div img {
  border-radius: 25px;
  float: left;
  padding: 11px;
  width: 15%;
  margin-left: 20px;
  height: 35vh auto;
}
#m1 {
  transition: transform 0.2s;
  margin: 0 auto;
}
#m1 img:hover {
  transform: scale(1.3);
}
</style>
</head>
<body>
	<section id="navbarBlock">
		<nav>
			<ul>
				<li><a href="">Home</a></li>
				<li><a href="">About</a></li>
				<li><a href="">Insurances</a>
					<ul>
						<li><a href="">Home Insurance</a></li>
						<li><a href="">Health Insurance</a></li>
						<li><a href="">Life Insurance</a></li>
						<li><a href="">Vehicle Insurance</a></li>
						<li><a href="">Other Insurance</a></li>

					</ul></li>
				<li><a href="">Services</a></li>
				<li><a href="">Profile</a>
					<ul>
						<li><a href="">change password</a></li>
						<li><a href="">forgot password</a></li>
					</ul></li>
					<li><a href="">Logout</a></li>
			</ul>
		</nav>
	</section>
	
	<!-- <div id="m1">
      <a href="">
        <h1>List Of Policies:</h1>
      </a>
      <div><img src="" alt=""></div>
      <div><img src="./images/m2-3.jpg" alt=""></div>
      <div><img src="./images/m2-4.jpg" alt=""></div>
      <div><img src="./images/m2-5.jpg" alt=""></div>
      <div><img src="./images/m2-6.jpg" alt=""></div>
      <div><img src="./images/m2-7.jpg" alt=""></div>
    </div> -->
<!--     <aside>
		<h1>
			Insurance<br>Policy
		</h1>
		</aside> -->
		<main class="policy">
		<h2>List of  Policies:</h2>
		<div><a href="">Home Insurance Policy</a></div>
		<div><a href="">Life Insurance Policy</a></div>
		<div><a href="">Health Insurance Policy</a></div>
		<div><a href="">Vehicle Insurance Policy</a></div>
		<div><a href="">Other Insurance Policies</a></div>
		</main> 
</body>
</html>