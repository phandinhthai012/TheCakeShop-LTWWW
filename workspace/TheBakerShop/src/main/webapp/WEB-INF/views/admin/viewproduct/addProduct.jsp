<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="">
		<form>
			<div class="mb-2">
				<label class="block text-gray-700">Tên Sản Phẩm</label> <input
					type="text" class="w-full p-2 border border-gray-300 rounded mt-1">
			</div>
			<div class="mb-2">
				<label class="block text-gray-700">Số Lượng</label> <input
					type="number"
					class="w-full p-2 border border-gray-300 rounded mt-1"
					name="quantity">
			</div>
			<div class="mb-2">
				<label class="block text-gray-700">Giá</label> <input type="number"
					name="price" class="w-full p-2 border border-gray-300 rounded mt-1">
			</div>
			<div class="mb-2">
				<label class="block text-gray-700">Mô tả</label>
				<textarea name="description"
					class="w-full p-2 border border-gray-300 rounded mt-1"></textarea>
			</div>
			<div class="mb-2">
				<label class="block text-gray-700">Ảnh</label> <input type="file"
					class="w-full p-2 border border-gray-300 rounded mt-1" name="image">
			</div>
			<div class="mb-2">
				<label class="block text-gray-700">Phân loại sản phẩm</label> <select
					class="w-full p-2 border border-gray-300 rounded mt-1"
					name="category">
					<option value="1">Bánh kem</option>
					<option value="2">Bánh mỳ</option>
				</select>
			</div>
			<div class="flex justify-end">
				<button type="button"
					class="bg-gray-500 text-white py-2 px-4 rounded mr-2"
					onclick="closeModal('addProductModal')">Hủy</button>
				<button type="submit"
					class="bg-blue-500 text-white py-2 px-4 rounded">Thêm</button>
			</div>
		</form>
	</div>
</body>
</html>