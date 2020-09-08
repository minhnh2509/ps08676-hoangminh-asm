<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<base href="${pageContext.servletContext.contextPath}/">
<meta charset="UTF-8">
<title>ADMIN PAGE</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
        crossorigin="anonymous">
    <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script
	src="https://reactiveraven.github.io/jqBootstrapValidation/js/jqBootstrapValidation.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
<style>
.scroll-table {
	display: block;
	height: 600px;
	overflow-y: scroll;
}
</style>
</head>
<body  style="background-image: url('resource/homepage/images/bg1.jpg');">
	<div class="container-fluid">
		<nav class="navbar navbar-expand-lg bg-dark navbar-dark m-0"
			style="background-color: black;">
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarTogglerDemo01"
				aria-controls="navbarTogglerDemo01" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarTogglerDemo01">
				<h4 style="color:white;" oncopy="return false" oncut="return false" onpaste="return false">
				
				Hoàng Minh</h4>
			</div>
			<button class="btn btn-danger" onclick="window.location.href='login/logout.htm'">
				<i class="fa fa-sign-out" aria-hidden="true"></i> <s:message code="global.logout"/>
			</button>
		</nav>

		<div class="row mt-3">
			<div class="col-3">
				<ul class="list-group">
					<li onclick="window.location.href = '#'" class="list-group-item"><s:message code="global.home"/></li>
					<li onclick="window.location.href = 'admin/user/show-user.htm'" class="list-group-item"><s:message code="global.usermanager"/></li>
					<li onclick="window.location.href = 'admin/depart/show-depart.htm'" class="list-group-item"><s:message code="global.departsmanager"/></li>
					<li onclick="window.location.href = 'admin/staff/show-staff.htm'" class="list-group-item"><s:message code="global.staffmanager"/></li>
					<li onclick="window.location.href = 'admin/record/show-record.htm'" class="list-group-item"><s:message code="global.prise-decipline"/></li>
				</ul>
			</div>
			<jsp:include page="../${param.view}"></jsp:include>
		</div>
	</div>
</body>
</html>