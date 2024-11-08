<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page import="com.iuh.spring.entity.User"%>
<%@ taglib prefix="fn" uri="jakarta.tags.functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<script src="https://cdn.tailwindcss.com">
	
</script>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&amp;display=swap"
	rel="stylesheet" />
<style>
body {
	font-family: 'Roboto', sans-serif;
}
</style>
</head>
<body class="bg-white text-gray-800">
	<!-- Header -->
	<header class="relative bg-cover bg-center h-[500px]"
		style="background-image: url('<c:url value="/resources/images/slider-01.png"/>');">
		<div class="absolute inset-0 bg-black opacity-50"></div>
		<div class="relative z-10 flex justify-between items-center p-6">
			<div class="logo">
				<img src="./resources/images/logo.png" alt="">
			</div>
			<nav class="space-x-6 text-white">
				<a class="hover:text-orange-500"
					href="${pageContext.request.contextPath}/">Home</a> <a
					class="hover:text-orange-500"
					href="${pageContext.request.contextPath}/product/productList">Shop</a>
				<a class="hover:text-orange-500"
					href="${pageContext.request.contextPath}/user/account">Account</a>
				<a class="hover:text-orange-500"
					href="${pageContext.request.contextPath}/contact">Contact</a>
			</nav>
			<div class="text-white space-x-4">
				<c:if test="${not empty sessionScope.user}">
					<c:if test="${ sessionScope.user.role == 'admin'}">
						<a class="fas " href="${pageContext.request.contextPath}/admin/revenue">Admin</a>
					</c:if>
				</c:if>
					<a class="fas fa-search" href="${pageContext.request.contextPath}/product/productList"></a> 
				<a class="fas fa-shopping-cart" href="${pageContext.request.contextPath}/order/showOrderDetail"></a> 
				<a class="fas fa-user" href="${pageContext.request.contextPath}/user/account"></a>
			</div>
		</div>
		<div
			class="absolute inset-0 flex flex-col justify-center items-center text-center text-white">
			<h1 class="text-5xl font-bold mb-4">Bring The Best Experience</h1>
			<a href="${pageContext.request.contextPath}/product/productList"
				class="bg-yellow-500 text-white px-6 py-3 rounded-full font-semibold">ORDER
				NOW</a>
		</div>
	</header>

	<!-- Categories Section -->
	<section class="py-12">
		<div class="container mx-auto grid grid-cols-2 md:grid-cols-4 gap-4">
			<c:forEach items="${categories}" var="category">
				<div class="relative">
					<img alt="" class="w-full h-60 object-cover"
						src="resources/images/${category.img}" /> 
						<a href="${pageContext.request.contextPath}/product/productList/category/${category.categoryId}">
						<div
							class="absolute inset-0 bg-black bg-opacity-50 flex items-center justify-center text-white text-xl font-bold">
							${category.categoryName}</div>
					</a>
				</div>

			</c:forEach>

		</div>
	</section>
	<!-- Products Section -->
	<section class="py-12 bg-gray-100">
		<div class="container mx-auto text-center">
			<h2 class="text-3xl font-bold mb-4">OUR PRODUCTS</h2>
			<p class="text-gray-600 mb-8">Nulla Lorem mollit cupidatat irure.
				Laborum magna nulla duis ullamco cillum dolor. Voluptate
				exercitation incididunt.</p>
			<div class="grid grid-cols-2 md:grid-cols-4 gap-8">
				<c:forEach items="${randomP}" var="p">
					<a
						href="${pageContext.request.contextPath}/product/productDetail/${p.productId}?categoryId=${p.category.categoryId}">
						<div class="bg-white p-4 rounded shadow">
							<img alt="" class="w-full h-40 object-cover mb-4" height="150"
								src="resources/images/Products/${p.image}" width="200" />
							<div class="text-lg font-bold">${p.productName }</div>
							<div class="text-orange-500">${p.price } VNĐ</div>
						</div>
					</a>
				</c:forEach>
			</div>
		</div>
	</section>
	<!-- Footer Section -->
	<jsp:include page="./footer/footer.jsp" />
</body>
</html>