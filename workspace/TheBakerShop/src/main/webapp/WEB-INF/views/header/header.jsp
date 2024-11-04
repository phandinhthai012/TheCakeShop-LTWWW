<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="header">
		<p class="logoPage">${pageTitle}</p>
		<div class="header-menu">
			<div class="logo">
				<img src="./resources/images/logo.png" alt="">
			</div>
			<div class="navbar">
				<ul class="menu">
					<li><a href="${pageContext.request.contextPath}/">Home</a></li>
					<li><a href="#">Shop</a></li>
					<li class="dropdown"><a
						href="${pageContext.request.contextPath}/account" class="dropbtn">Pages</a>
						<ul class="dropdown-content">
							<li><a href="#">Page 1</a></li>
							<li><a href="#">Page 1</a></li>
						</ul></li>
					<li><a href="${pageContext.request.contextPath}/contact">Contact</a></li>
				</ul>
			</div>
			<div class="acc">
				<a href=""><img class="acc-search" src="./resources/images/icons8-search-5022.png" alt=""></a>
				<a href="${pageContext.request.contextPath}/accountorder"><img class="acc-cart" src="./resources/images/icons8-cart-64.png" alt=""></a> 
				<a href="login"><img class="acc-user" src="./resources/images/icons8-account-48.png" alt=""></a>
			</div>

		</div>
	</div>
</body>
<style>
body {
	font-family: 'Roboto', sans-serif;
	margin: 0;
	padding: 0;
	/* width: 100%; */
	overflow-x: hidden; /* Ẩn thanh cuộn ngang */
}

.header {
	background-image: url('./resources/images//breadcrumb-bg1.png');
	background-size: cover;
	background-position: center;
	height: 385px;
	position: relative;
	width: 100%;
}

.header-menu {
	display: flex;
	justify-content: space-around;
	align-items: center;
	padding: 10px 0;
}

.header h1 {
	font-size: 50px;
	margin-top: 0;
	padding-top: 120px;
}

.logo {
	margin-top: 20px;
	width: 20%;
	position: relative;
}

.logoPage {
	width: 100%;
	position: absolute;
	color: #ffff;
	font-size: 54px;
	font-weight: 500;
	top: 30%;
	left: 40%;
}

.navbar {
	overflow: hidden;
	width: 60%;
	margin: 0 auto;
}

.menu {
	list-style-type: none;
	overflow: hidden;
	display: flex;
	justify-content: center;
}

.menu li {
	
}

.menu li a, .dropbtn {
	display: inline-block;
	color: white;
	text-align: center;
	padding: 14px 20px;
	text-decoration: none;
	font-size: 16px;
	font-weight: 500;
}

.dropdown {
	display: inline-block;
}

.dropdown-content li {
	list-style-type: none;
}

.dropdown-content {
	display: none;
	padding: 0;
	position: absolute;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content li a {
	color: white;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
	text-align: left;
}

.dropdown:hover .dropdown-content {
	display: block;
}

.dropdown-content a:hover {
	color: #ff7f50;
}

.menu li a:hover, .dropdown:hover .dropbtn {
	color: #ff7f50;
}

.acc-search, .acc-cart, .acc-user {
	width: 25px;
	height: 25px;
	margin-left: 12px;
}

.acc {
	display: flex;
	margin-right: 10px;
}
</style>
</html>