<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
				<a class="hover:text-orange-500" href="${pageContext.request.contextPath}/">Home</a> 
				<a class="hover:text-orange-500" href="">Shop</a> 
				<a class="hover:text-orange-500" href="${pageContext.request.contextPath}/account">Account</a> 
				<a class="hover:text-orange-500" href="${pageContext.request.contextPath}/contact">Contact</a>
			</nav>
			<div class="text-white space-x-4">
				<a class="fas fa-search" href="#"></a> 
				<a class="fas fa-shopping-cart" href="${pageContext.request.contextPath}/accountorder"></a> 
				<a class="fas fa-user" href="login"></a>
			</div>
		</div>
		<div
			class="absolute inset-0 flex flex-col justify-center items-center text-center text-white">
			<h1 class="text-5xl font-bold mb-4">Bring The Best Experience</h1>
			<button
				class="bg-yellow-500 text-white px-6 py-3 rounded-full font-semibold">ORDER
				NOW</button>
		</div>
	</header>

	<!-- Categories Section -->
	<section class="py-12">
		<div class="container mx-auto grid grid-cols-2 md:grid-cols-4 gap-4">
		<c:forEach items="${categories}" var="category">
			<div class="relative">
				<img alt="Cupcake" class="w-full h-full object-cover" height="300"
					src="https://storage.googleapis.com/a1aa/image/pQvHoOEePvyeIEjdKQPWd3MjEnVUUWCWHZ8fPcrSeFbtb91OB.jpg"
					width="400" /> <a href="#">
					<div class="absolute inset-0 bg-black bg-opacity-50 flex items-center justify-center text-white text-xl font-bold">
					${category.categoryName}</div>
				</a>
			</div>
		
		</c:forEach>
			
			<div class="relative">
				<img alt="Pastry" class="w-full h-full object-cover" height="300"
					src="https://storage.googleapis.com/a1aa/image/Pf1vXU59Ub2CYaqlXrucqNqhBuBdJA8i7u4NlVFeu0r5WfanA.jpg"
					width="400" /> <a href="#">
					<div
						class="absolute inset-0 bg-black bg-opacity-50 flex items-center justify-center text-white text-xl font-bold">
						Pastry</div>
				</a>
			</div>
			<div class="relative">
				<img alt="Muffin" class="w-full h-full object-cover" height="300"
					src="https://storage.googleapis.com/a1aa/image/NepWOwCZbqX1DKqpGDvBiqAheud2uLYVSJfDc73g6JRwte1OB.jpg"
					width="400" /> <a href="#">
					<div
						class="absolute inset-0 bg-black bg-opacity-50 flex items-center justify-center text-white text-xl font-bold">
						Muffin</div>
				</a>
			</div>
			<div class="relative">
				<img alt="Waffle" class="w-full h-full object-cover" height="300"
					src="https://storage.googleapis.com/a1aa/image/0eV9j1kmvqwJRSu7HehCzDxQFWRQ5Htyfo2eslW6DK88b91OB.jpg"
					width="400" /> <a href="#">
					<div
						class="absolute inset-0 bg-black bg-opacity-50 flex items-center justify-center text-white text-xl font-bold">
						Waffle</div>
				</a>
			</div>
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
				<a href="#">
					<div class="bg-white p-4 rounded shadow">
						<img alt="Italian Loaf" class="w-full h-40 object-cover mb-4"
							height="150"
							src="https://storage.googleapis.com/a1aa/image/6lD9v9jw4o71LtNK4Kvuo9EGXYptt4dnQE6Cz0f12qdfWfanA.jpg"
							width="200" />
						<div class="text-lg font-bold">Italian Loaf</div>
						<div class="text-orange-500">$4.99</div>
					</div>
				</a> <a href="#">
					<div class="bg-white p-4 rounded shadow">
						<img alt="Italian Loaf" class="w-full h-40 object-cover mb-4"
							height="150"
							src="https://storage.googleapis.com/a1aa/image/6lD9v9jw4o71LtNK4Kvuo9EGXYptt4dnQE6Cz0f12qdfWfanA.jpg"
							width="200" />
						<div class="text-lg font-bold">Italian Loaf</div>
						<div class="text-orange-500">$4.99</div>
					</div>
				</a> <a href="#">
					<div class="bg-white p-4 rounded shadow">
						<img alt="Italian Loaf" class="w-full h-40 object-cover mb-4"
							height="150"
							src="https://storage.googleapis.com/a1aa/image/6lD9v9jw4o71LtNK4Kvuo9EGXYptt4dnQE6Cz0f12qdfWfanA.jpg"
							width="200" />
						<div class="text-lg font-bold">Italian Loaf</div>
						<div class="text-orange-500">$4.99</div>
					</div>
				</a> <a href="#">
					<div class="bg-white p-4 rounded shadow">
						<img alt="Italian Loaf" class="w-full h-40 object-cover mb-4"
							height="150"
							src="https://storage.googleapis.com/a1aa/image/6lD9v9jw4o71LtNK4Kvuo9EGXYptt4dnQE6Cz0f12qdfWfanA.jpg"
							width="200" />
						<div class="text-lg font-bold">Italian Loaf</div>
						<div class="text-orange-500">$4.99</div>
					</div>
				</a> <a href="#">
					<div class="bg-white p-4 rounded shadow">
						<img alt="Italian Loaf" class="w-full h-40 object-cover mb-4"
							height="150"
							src="https://storage.googleapis.com/a1aa/image/6lD9v9jw4o71LtNK4Kvuo9EGXYptt4dnQE6Cz0f12qdfWfanA.jpg"
							width="200" />
						<div class="text-lg font-bold">Italian Loaf</div>
						<div class="text-orange-500">$4.99</div>
					</div>
				</a> <a href="#">
					<div class="bg-white p-4 rounded shadow">
						<img alt="Italian Loaf" class="w-full h-40 object-cover mb-4"
							height="150"
							src="https://storage.googleapis.com/a1aa/image/6lD9v9jw4o71LtNK4Kvuo9EGXYptt4dnQE6Cz0f12qdfWfanA.jpg"
							width="200" />
						<div class="text-lg font-bold">Italian Loaf</div>
						<div class="text-orange-500">$4.99</div>
					</div>
				</a> <a href="#">
					<div class="bg-white p-4 rounded shadow">
						<img alt="Italian Loaf" class="w-full h-40 object-cover mb-4"
							height="150"
							src="https://storage.googleapis.com/a1aa/image/6lD9v9jw4o71LtNK4Kvuo9EGXYptt4dnQE6Cz0f12qdfWfanA.jpg"
							width="200" />
						<div class="text-lg font-bold">Italian Loaf</div>
						<div class="text-orange-500">$4.99</div>
					</div>
				</a> <a href="#">
					<div class="bg-white p-4 rounded shadow">
						<img alt="Italian Loaf" class="w-full h-40 object-cover mb-4"
							height="150"
							src="https://storage.googleapis.com/a1aa/image/6lD9v9jw4o71LtNK4Kvuo9EGXYptt4dnQE6Cz0f12qdfWfanA.jpg"
							width="200" />
						<div class="text-lg font-bold">Italian Loaf</div>
						<div class="text-orange-500">$4.99</div>
					</div>
				</a>
			</div>
		</div>
	</section>
	<!-- Footer Section -->
	<jsp:include page="./footer/footer.jsp" />
</body>
</html>