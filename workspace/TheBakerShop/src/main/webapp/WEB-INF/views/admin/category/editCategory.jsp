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
	<form id="editCategoryForm" method="POST" action="${pageContext.request.contextPath}/admin/aditCategory">
		<div class="mb-4">
			<input type="hidden" name="categoryId" value="${category.categoryId}"/>
			<label for="categoryName" class="block text-gray-700">Tên</label> 
			<input type="text" id="categoryName" class="w-full px-3 py-2 border rounded" value="${category.categoryName}" name="categoryName">
		</div>
		<div class="mb-4">
			<label for="description" class="block text-gray-700">Mô Tả</label> 
			<textarea name="description" class="w-full px-3 py-2 border rounded"  name="description">${category.description }
			</textarea>
		</div>
		<div class="flex justify-end">
			<button type="button" id="closeEditModal"
				onclick="closeModal('editCategoryModal')"
				class="bg-gray-500 text-white px-4 py-2 rounded mr-2">Hủy</button>
			<button type="submit"
				class="bg-blue-500 text-white px-4 py-2 rounded">Lưu</button>
		</div>
	</form>
</body>
</html>