<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insurance Policy</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
<script src="<c:url value="/resources/js/jquery-1.11.1.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
</head>

<body>

	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: darkblue">
			<div>
				<a href="<%=request.getContextPath()%>/policy/Welcome"
					class="navbar-brand">Home Insurance Policy </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/policy/userlist"
					class="nav-link">Policies</a></li>
			</ul>
			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/Logout"
					class="nav-link">Logout</a></li>
			</ul>
		</nav>
	</header>
	<br>

	<div class="container">
		<div class="col-md-offset-1 col-md-10">
			<h2>Home Insurance Policy</h2>
			<hr />
			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="panel-title">List Policies and Plans</div>
				</div>
				<div class="panel-body">
					<table class="table table-striped table-bordered">
						<tr>

							<th>Policies</th>
							<th>Plan</th>
							<th>Action</th>
						</tr>

						<!-- loop over and print our policy -->
						<c:forEach var="policy" items="${policylists}">

							<c:url var="premiumlink" value="/policy/PremiumPage">
								<c:param name="Id" value="${policy.getId()}" />
							</c:url>

							<tr>
								<td>${policy.getPolicies()}</td>
								<td>${policy.getPlan()}</td>
								<td><a href="${premiumlink}">PremiumCalculate</a></td>

							</tr>

						</c:forEach>

					</table>

				</div>
			</div>
		</div>

	</div>
</body>
</html>
