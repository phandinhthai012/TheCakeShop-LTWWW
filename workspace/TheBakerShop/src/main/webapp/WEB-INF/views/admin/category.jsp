<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="content">
		<jsp:include page="../admin/siderbar.jsp" />
		<div class="w-3/4 p-4">
			<form class="">
				<div class="mb-4">
					<label class="block mb-2">Tên loại sản phẩm</label> <input
						type="text" class="border border-gray-300 w-full p-2">
				</div>
				<div class="mb-4">
					<label class="block mb-2">Mô tả</label> <input type="text"
						class="border border-gray-300 w-full p-2">
				</div>
				<div class="flex space-x-4 mb-4">
					<button class="bg-brown-500 text-white px-4 py-2 hover-bg-custom">Thêm</button>
					<button class="bg-brown-500 text-white px-4 py-2 hover-bg-custom">Xóa</button>
					<button class="bg-brown-500 text-white px-4 py-2 hover-bg-custom">Sửa</button>
					<button class="bg-brown-500 text-white px-4 py-2 hover-bg-custom">Làm
						mới</button>
				</div>
			</form>
			<table class="w-full border-collapse border border-gray-300">
				<thead>
					<tr>
						<th class="border border-gray-300 p-2">Tên loại sản phẩm</th>
						<th class="border border-gray-300 p-2">Mô tả</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="border border-gray-300 p-2">Chocolate Muffin</td>
						<td class="border border-gray-300 p-2">Chocolate Muffin</td>
					</tr>
					<tr>
						<td class="border border-gray-300 p-2">Chocolate Muffin</td>
						<td class="border border-gray-300 p-2">Chocolate Muffin</td>
					</tr>
					<tr>
						<td class="border border-gray-300 p-2">Chocolate Muffin</td>
						<td class="border border-gray-300 p-2">Chocolate Muffin</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</body>
<style>
.content {
	display: flex;
	margin-top: 50px;
}
</style>
</html>