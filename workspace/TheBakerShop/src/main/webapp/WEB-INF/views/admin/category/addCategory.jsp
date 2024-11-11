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

	<form id="addCategoryForm" action="${pageContext.request.contextPath}/admin/addNewCategory" method="post">
		<div class="mb-4">
			<label for="categoryName" class="block text-gray-700">Tên</label> 
			<input type="text" id="categoryName" class="w-full px-3 py-2 border rounded" required name="categoryName">
		</div>
		<div class="mb-4">
			<label for="description" class="block text-gray-700">Mô Tả</label> 
			<input type="text" id="description" class="w-full px-3 py-2 border rounded" required name="description">
		</div>
		<div class="mb-4">
			<label for="img" class="block text-gray-700">Hình</label> 
			<input type="file" id="img" class="w-full px-3 py-2 border rounded" required name="img">
		</div>
		<div class="flex justify-end">
			<button type="button" id="closeAddModal"
				onclick="closeModal('addCategoryModal')"
				class="bg-gray-500 text-white px-4 py-2 rounded mr-2">Hủy</button>
			<button type="submit"
				class="bg-blue-500 text-white px-4 py-2 rounded">Thêm</button>
		</div>
	</form>

</body>
</html>