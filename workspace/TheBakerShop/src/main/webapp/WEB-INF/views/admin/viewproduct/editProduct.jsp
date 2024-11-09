<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
	<div class="viewEdut">
		<form action="" method="post">
			<input type="text"
				class="w-full p-2 border border-gray-300 rounded mt-1"
				value="${product.productId }" name="prodcutId" hidden="true">
			<div class="mb-2">
				<label class="block text-gray-700">Tên Sản Phẩm</label> <input
					type="text" class="w-full p-2 border border-gray-300 rounded mt-1"
					value="${product.productName }">
			</div>
			<div class="mb-2">
				<label class="block text-gray-700">Số Lượng</label> <input
					type="number"
					class="w-full p-2 border border-gray-300 rounded mt-1"
					value="${product.stockQuantity }" name="quantity">
			</div>
			<div class="mb-2">
				<label class="block text-gray-700">Giá</label> <input type="number"
					name="price" class="w-full p-2 border border-gray-300 rounded mt-1"
					value="${product.price }">
			</div>
			<div class="mb-2">
				<label class="block text-gray-700">Mô tả</label>
				<textarea name="description"
					class="w-full p-2 border border-gray-300 rounded mt-1">${product.description }</textarea>
			</div>
			<div class="mb-2">
				<label class="block text-gray-700">Ảnh</label> <input type="file"
					value="${pageContext.request.contextPath}/resources/images/${product.image }"
					class="w-full p-2 border border-gray-300 rounded mt-1" name="image">
			</div>
			<div class="mb-2">
				<label class="block text-gray-700">Phân loại sản phẩm</label> <select
					class="w-full p-2 border border-gray-300 rounded mt-1"
					name="category">
					<c:forEach var="category" items="${listCategory}">
						<option value="${category.categoryId }"
							<c:if test="${category.categoryId == product.category.categoryId}">selected</c:if>>
							${category.categoryName}
						</option>
					</c:forEach>
				</select>
			</div>
			<div class="flex justify-end">
				<button type="button"
					class="bg-gray-500 text-white py-2 px-4 rounded mr-2"
					onclick="closeModal('viewProductModal')">Đóng</button>
				<button type="submit"
					class="bg-blue-500 text-white py-2 px-4 rounded">Lưu</button>
			</div>
		</form>
	</div>
</body>
<style>
</style>
</html>