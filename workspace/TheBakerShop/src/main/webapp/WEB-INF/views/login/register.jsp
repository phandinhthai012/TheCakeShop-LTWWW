<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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
<body>
	<jsp:include page="../header/header.jsp" />
	<section class="py-12">
		<div class="max-w-4xl mx-auto bg-white p-8 shadow-md">
			<h2 class="text-2xl font-bold text-center mb-4">ĐĂNG KÝ</h2>
			<p class="text-center mb-8">
				Bạn có tài khoản? <a class="text-blue-500 hover:underline" href="${pageContext.request.contextPath}/user/account">
					Đăng nhập </a>
			</p>
			<form>
				<div class="grid grid-cols-2 gap-4 mb-4">
					<div>
						<label class="block mb-2" for="first-name"> Họ </label> <input
							class="border p-2 w-full" id="first-name" placeholder="Họ"
							type="text" />
					</div>
					<div>
						<label class="block mb-2" for="last-name"> Tên </label> <input
							class="border p-2 w-full" id="last-name" placeholder="Tên"
							type="text" />
					</div>
				</div>
				<div class="mb-4">
					<label class="block mb-2" for="phone"> Điện thoại </label> <input
						class="border p-2 w-full" id="phone" placeholder="Điện thoại"
						type="text" />
				</div>
				<div class="mb-4">
					<label class="block mb-2" for="email"> Email </label> <input
						class="border p-2 w-full" id="email" placeholder="Email"
						type="email" />
				</div>
				<div class="mb-4">
					<label class="block mb-2" for="password"> Mật khẩu </label> <input
						class="border p-2 w-full" id="password" placeholder="Mật khẩu"
						type="password" />
				</div>
				<div class="mb-4">
					<label class="block mb-2" for="confirm-password"> Xác nhận
						mật khẩu </label> <input class="border p-2 w-full" id="confirm-password"
						placeholder="Xác nhận mật khẩu" type="password" />
				</div>
				<button class="bg-gray-800 text-white py-2 px-4 w-full"
					type="submit">Đăng kí</button>
			</form>
		</div>
	</section>

	<jsp:include page="../footer/footer.jsp" />
</body>

<style>
body {
	font-family: 'Roboto', sans-serif;
}
</style>
</html>