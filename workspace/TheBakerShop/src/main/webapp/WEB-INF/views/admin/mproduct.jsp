<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page import="com.iuh.spring.entity.User"%>
<%@ taglib prefix="fn" uri="jakarta.tags.functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.tailwindcss.com"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"></link>
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap"
	rel="stylesheet">
</head>
<style>
.content {
	display: flex;
	margin-top: 50px;
}
</style>
<body>
	<div class="content">
		<jsp:include page="../admin/siderbar.jsp" />
		<div class="w-3/4 p-8">
			<h1 class="text-3xl font-bold mb-6">Quản lí sản phẩm</h1>
			<button class="bg-blue-500 text-white py-2 px-4 rounded mb-4"
				onclick="openViewAddNew()">Thêm sản phẩm</button>
			<div class="bg-white shadow-md rounded-lg overflow-hidden">
				<table class="min-w-full bg-white">
					<thead class="bg-gray-100 text-gray-600">
						<tr>
							<th class="py-3 px-4 text-left">ID Sản Phẩm</th>
							<th class="py-3 px-4 text-left">Tên Sản Phẩm</th>
							<th class="py-3 px-4 text-left">Số Lượng</th>
							<th class="py-3 px-4 text-left">Giá</th>
							<th class="py-3 px-4 text-left">Mô Tả</th>
							<th class="py-3 px-4 text-left">Size</th>
							<th class="py-3 px-4 text-left">Danh Mục</th>
							<th class="py-3 px-4 text-left">Xử lí</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="product" items="${listProduct}">
							<tr class="border-t">
								<td class="py-3 px-4">${product.productId}</td>
								<td class="py-3 px-4">${product.productName}</td>
								<td class="py-3 px-4">${product.stockQuantity}</td>
								<td class="py-3 px-4">${product.price}</td>
								<td class="py-3 px-4">${product.description}</td>
								<td class="py-3 px-4">${product.size}</td>
								<td class="py-3 px-4">${product.category.categoryName}</td>
								<td class="py-3 px-4">
								
									<button class="bg-yellow-500 text-white py-1 px-3 rounded"  
										onClick="openViewDetail(12)">View</button>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>

	<!-- Add Product Modal -->
	<div id="addProductModal"
		class="fixed inset-0 bg-gray-600 bg-opacity-50 flex items-center justify-center hidden">
		<div class="bg-white p-8 rounded-lg shadow-lg w-1/3">
			<h2 class="text-2xl font-bold mb-4">Thêm sản phẩm</h2>
			<div id="addProductForm" class="mb-4">
				<!-- Add product form will be populated here -->

			</div>
		</div>
	</div>

	<!-- View Product Modal -->
	<div id="viewProductModal"
		class="fixed inset-0 bg-gray-600 bg-opacity-50 flex items-center justify-center hidden">
		<div class="bg-white p-8 rounded-lg shadow-lg w-1/3">
			<h2 class="text-2xl font-bold mb-4">Chi tiết sản phẩm</h2>
			<div id="viewProductDetail" class="mb-4">
				<!-- Product details will be populated here -->
			</div>
		</div>
	</div>

</body>


<script type="text/javascript">
        function openViewAddNew() {
            fetch(`${pageContext.request.contextPath}/admin/viewAddProduct`)
                .then(response => response.text())
                .then(data => {
                    const addProductForm = document.getElementById('addProductForm');
                    addProductForm.innerHTML = data;
                    document.getElementById('addProductModal').classList.remove('hidden');
                });
        }
		function openViewDetail(productId) {
			let id = productId;
			console.log(`Viewing product ${id}`);
			fetch(`${pageContext.request.contextPath}/admin/viewProductDetail?productId=${id}`)
                .then(response => response.text())
                .then(data => {
                    const productDetails = document.getElementById('viewProductDetail');
                    productDetails.innerHTML = data;
                    document.getElementById('viewProductModal').classList.remove('hidden');
                });
		}
        function closeModal(modalId) {
            document.getElementById(modalId).classList.add('hidden');
        }
    </script>
</html>