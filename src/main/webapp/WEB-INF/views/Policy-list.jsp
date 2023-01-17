<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"  isELIgnored="false" %>
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
				<a href="<%=request.getContextPath()%>/policy/Adminpage"
					class="navbar-brand">Home Insurance Policy </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/policy/list"
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

			<input type="button" value="Add PolicyDetails"
				onclick="window.location.href='showForm'; return false;"
				class="btn btn-primary" /> <br /> <br />
			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="panel-title">Policy List</div>
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

							<!-- construct an "update" link with policy id -->
							<c:url var="updateLink" value="/policy/updateForm">
								<c:param name="Id" value="${policy.getId()}" />
							</c:url>

							<!-- construct an "delete" link with policy id -->
							<c:url var="deleteLink" value="/policy/delete">
								<c:param name="Id" value="${policy.getId()}" />
							</c:url>

							<tr>
								<td>${policy.getPolicies()}</td>
								<td>${policy.getPlan()}</td>
								<td>
									<!-- display the update link --> <a href="${updateLink}">Update</a>
									| <a href="${deleteLink}"
									onclick="if (!(confirm('Are you sure you want to delete this policy?'))) return false">Delete</a>
								</td>

							</tr>

						</c:forEach>

					</table>

				</div>
			</div>
		</div>

	</div>
</body>
</html>
