<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.tailwindcss.com"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"></link>
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap"
	rel="stylesheet">
</head>
<body>
	<form id="userForm" class="mb-6" action="${pageContext.request.contextPath}/admin/addUser" method="post">
		<div class="mb-4">
			<label for="firstname" class="block text-gray-700">First Name</label>
			<input type="text" id="firstname" class="w-full px-3 py-2 border rounded-lg" name="fname" required>
		</div>
		<div class="mb-4">
			<label for="lastname" class="block text-gray-700">Last Name</label> 
			<input type="text" id="lastname" class="w-full px-3 py-2 border rounded-lg" name="lname" required>
		</div>
		<div class="mb-4">
			<label for="email" class="block text-gray-700">Email</label> 
			<input type="email" id="email" class="w-full px-3 py-2 border rounded-lg" name="email" required>
		</div>
		<div class="mb-4">
			<label for="password" class="block text-gray-700">Password</label> 
			<input type="text" id="password" class="w-full px-3 py-2 border rounded-lg" name="pass" required>
		</div>
		<div class="mb-4">
			<label for="role" class="block text-gray-700">Role</label> 
			<select id="role" class="w-full px-3 py-2 border rounded-lg" name="role"
				required>
				<option value="user">User</option>
				<option value="admin">Admin</option>
			</select>
		</div>
		<div class="mb-4">
			<label for="phone" class="block text-gray-700">Phone</label> 
			<input type="text" id="phone" class="w-full px-3 py-2 border rounded-lg" name="phone" required>
		</div>
		<div class="flex justify-end">
			<button type="button" onclick="closeModal()"
				class="bg-gray-500 text-white px-4 py-2 rounded-lg mr-2">Hủy</button>
			<button type="submit" class="bg-blue-500 text-white px-4 py-2 rounded-lg">Thêm</button>
		</div>
	</form>

</body>
</html>