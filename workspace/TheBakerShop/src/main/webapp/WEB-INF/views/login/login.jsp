<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<script src="https://cdn.tailwindcss.com">
	
</script>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&amp;display=swap"
	rel="stylesheet" />
</head>
<body class="bg-gray-100">
	<!-- Header -->
	<jsp:include page="../header/header.jsp" />
	<!-- Login Form -->
	<main class="flex justify-center py-12">
		<div class="bg-white p-8 shadow-md w-full max-w-md">
			<h2 class="text-2xl font-bold text-center mb-4">ĐĂNG NHẬP</h2>
			<p class="text-center mb-6">Bạn chưa có tài khoản? Đăng kí?</p>
			<form action="${pageContext.request.contextPath}/user/login" method="post">
				<div class="mb-4">
					<label class="block text-gray-700" for="email"> Email </label> 
					<input class="w-full px-3 py-2 border border-gray-300 rounded" id="email" type="email" name="username" />
				</div>
				<div class="mb-4">
					<label class="block text-gray-700" for="password"> Mật khẩu </label> 
					<input class="w-full px-3 py-2 border border-gray-300 rounded" id="password" type="password"  name ="password"/>
				</div>
				<div class="mb-4 text-right">
					<a class="text-blue-500" href="#"> Quên mật khẩu? Nhấn vào đây
					</a>
				</div>
				<button class="w-full bg-gray-800 text-white py-2 rounded"
					type="submit">Đăng nhập</button>
			</form>
		</div>
	</main>
	<!-- Footer -->
	<jsp:include page="../footer/footer.jsp" />
</body>
<style>
body {
	font-family: 'Roboto', sans-serif;
	margin: 0;
	padding: 0;
	/* width: 100%; */
	overflow-x: hidden; /* Ẩn thanh cuộn ngang */
}
</style>
</html>