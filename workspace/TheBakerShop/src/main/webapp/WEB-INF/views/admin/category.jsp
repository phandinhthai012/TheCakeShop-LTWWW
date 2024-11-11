<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt"%>
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
	<div class="content">
		<jsp:include page="../admin/siderbar.jsp" />
		<div class="w-3/4 p-8 ax">
			<h1 class="text-2xl font-bold mb-4">Product Category Management</h1>
			<button id="addCategoryBtn" 
					class="bg-blue-500 text-white px-4 py-2 rounded mb-4"
					onclick="openAddCategory()">
				Thêm danh mục
			</button>
			<div class="bg-white shadow-md rounded p-4">
				<table class="min-w-full bg-white">
					<thead>
						<tr>
							<th class="py-2 px-4 border-b">ID</th>
							<th class="py-2 px-4 border-b">Tên</th>
							<th class="py-2 px-4 border-b">Mô tả</th>
							<th class="py-2 px-4 border-b">chỉnh sửa</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach var="category" items="${listCategory}">
						<tr>
							<td class="py-2 px-4 border-b">${category.categoryId }</td>
							<td class="py-2 px-4 border-b">${category.categoryName }</td>
							<td class="py-2 px-4 border-b">${category.description }</td>
							<td class="py-2 px-4 border-b">
								<button
									onclick="openEditCategory('${category.categoryId }')"
									class="bg-yellow-500 text-white px-2 py-1 rounded editCategoryBtn">
									chỉnh sửa
								</button>
							</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<div id="addCategoryModal"
		class="fixed inset-0 bg-gray-600 bg-opacity-50 flex items-center justify-center hidden">
		<div class="bg-white rounded-lg shadow-lg p-6 w-1/3">
			<h2 class="text-xl font-bold mb-4">Thêm mới</h2>
			<div id="addCategoryForm">
			</div>
		</div>
	</div>
		<!-- Edit Category Modal -->
		<div id="editCategoryModal"
			class="fixed inset-0 bg-gray-600 bg-opacity-50 flex items-center justify-center hidden">
			<div class="bg-white rounded-lg shadow-lg p-6 w-1/3">
				<h2 class="text-xl font-bold mb-4">Edit Category</h2>
				<div id="editCategoryForm">
				</div>
			</div>
		</div>
</body>

<script type="text/javascript">
	function openAddCategory() {
		
		const url = "/TheBakerShop/admin/viewAddCategory";
		fetch(url)
        .then(response => response.text())
        .then(data => {
        	 const addCategoryForm = document.getElementById('addCategoryForm');
        	 addCategoryForm.innerHTML = data;
           document.getElementById('addCategoryModal').classList.remove('hidden');
         });
      }
	function openEditCategory(categoryId) {
		
		const url = "/TheBakerShop/admin/viewEditCategory?categoryId="+ categoryId;
		console.log(url);
		fetch(url)
        .then(response => response.text())
        .then(data => {
        	 const editCategoryForm = document.getElementById('editCategoryForm');
        	 editCategoryForm.innerHTML = data;
           document.getElementById('editCategoryModal').classList.remove('hidden');
         });
	}
	function closeModal(modalId) {
	    document.getElementById(modalId).classList.add('hidden');
	}
</script>

<style>
.content {
	display: flex;
	margin-top: 50px;
}
</style>
</html>