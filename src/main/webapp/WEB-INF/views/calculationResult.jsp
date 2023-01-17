  <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style>
.main {
	display: flex;
}

.main>div {
	background-color: white;
	width: 270px;
	margin: 10px;
	text-align: left;
	line-height: 80px;
	font-size: 20px; 
}
          
</style>


<meta charset="ISO-8859-1">
<title>CalculationResult</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

</head>
<body>
	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: darkblue">
			<div>
				<a href="Welcome" class="navbar-brand">Home Insurance Policy</a>

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
	<section style="margin-left:20%; margin-top:7%;border-radius:40px;border-style:solid; width:50%;">
		<div style="margin:5%;">
		<div class="main" >
			<div>
				<h3>StructureValue:</h3>
				<c:out value="${structureValue}"></c:out>
			</div>
			<div>
				<h3>ContentValue:</h3>
				<c:out value="${contentValue}"></c:out>
			</div>
			
		</div>
		
		<h2 style=" margin:2%;">Your Premium amount is :</h2>
		<div style=" margin:2%;" class="main">
		<h3 >
			Amount :  <c:out value="${result}"></c:out><h3>/year</h3>
		</h3>
		</div>
		</div>
	</section>
</body>
</html>