<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

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
				<a href="<%=request.getContextPath()%>/policy/Adimpage"
					class="navbar-brand">Home Insurance Policy</a>

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
		<div class="col-md-offset-2 col-md-7">
			<h2 class="text-center">Insurance Policy</h2>
			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="panel-title">Add Policy</div>
				</div>
				<div class="panel-body">
					<form:form action="savePolicyDetails" cssClass="form-horizontal"
						method="post" modelAttribute="policy">

						<!-- need to associate this data with Employee id -->
						<form:hidden path="Id" />

						<div class="form-group">
							<label for="Policies" class="col-md-3 control-label">Policies
							</label>
							<div class="col-md-9">
								<form:input path="Policies" cssClass="form-control" />
							</div>
						</div>
						<div class="form-group">
							<label for="Plan" class="col-md-3 control-label">Plan </label>
							<div class="col-md-9">
								<form:input path="Plan" cssClass="form-control" />
							</div>
						</div>

						<div class="form-group">
							<!-- Button -->
							<div class="col-md-offset-3 col-md-9">
								<form:button cssClass="btn btn-primary">Submit</form:button>
							</div>
						</div>

					</form:form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
