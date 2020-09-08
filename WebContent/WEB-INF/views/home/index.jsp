<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<base href="${pageContext.servletContext.contextPath}/">
<meta charset="UTF-8">
<title>MinhCompany</title>
<link rel="stylesheet" href="resource/homepage/assets/css/main.css" />
<link rel="stylesheet" href="resource/homepage/assets/css/bootstrap.min.css" />
</head>
<body >
	<!-- Header -->
	<header id="header">
		<div class="inner">
			<a href="home/index.htm" style="width: 100px;height: 100px;" class="logo"><img alt="load" style="width: 100px;height: 100px;" src="resource/homepage/images/logo.png"></a>
			<nav id="nav">
				<a href="#" data-lang="vi" style="font-size: 30px;color: black;">Tiếng Việt</a> <a href="#" style="font-size: 30px;color: black;" data-lang="en">Tiếng
					Anh</a> <a href="login/submit.htm" style="font-size: 30px; color: black;">Login</a>
			</nav>
			<a href="#navPanel" class="navPanelToggle"><span
				class="fa fa-bars"></span></a>
		</div>
	</header>

	<!-- Banner -->
	<section id="banner"style="background-image: url('resource/homepage/images/bg.jpg');">
		<h1>Welcome to Hoang Minh</h1>
	</section>
	<!-- Two -->
	<section style="background-image: url('resource/homepage/images/bg1.jpg');" id="two" class="wrapper style1 special">
		<div class="inner">
			<header>
				<h2 style="font-family: monospace;">Top Nhân Viên</h2>
		
			</header>
			
		
			<div class="card col-3">
				<c:forEach var="staff" items="${topStaff}">
					<div class="box person">
						<div class="image round">
							<img width="100px" src="resource/avatar/${staff.photo}"
								alt="Person" />
						</div>
						<h3>${staff.name}</h3>
						<p>${staff.depart.name}</p>
					</div>
					
				</c:forEach>
				
			</div>
			
		</div>
	</section>
	<!-- Footer -->
	<footer id="footer" style="background-color: black;">
		<div class="inner">
			<div class="flex">
				<div class="copyright">
				Copyright	&copy; Nguyen Hoang Minh
				</div>
				
			</div>
		</div>
	</footer>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script>
		$(function() {
			$("a[data-lang]").click(function() {
				var lang = $(this).attr("data-lang");
				$.get("home/index.htm?language=" + lang, function() {
					location.reload();
				});
				return false;
			});
		});
	</script>
	<script src="resource/homepage/assets/css/jquery-3.3.1.min.js"> </script>
<script src="resource/homepage/assets/css/popper.min.js"> </script>
<script src="resource/homepage/assets/css/bootstrap.min.js"> </script>
</body>
</html>