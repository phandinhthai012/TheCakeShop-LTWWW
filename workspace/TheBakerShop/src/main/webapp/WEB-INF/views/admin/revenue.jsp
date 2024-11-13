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
</head>
<script src="https://cdn.tailwindcss.com"></script>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&amp;display=swap"
	rel="stylesheet" />
<style>
.bg-brown-500 {
	background-color: #b07c50;
}

.hover-bg-custom:hover {
	background-color: #b07c50;
	color: white;
}

.content {
	display: flex;
	margin-top: 50px;
}
</style>
<body>
	<div class="content">
		<jsp:include page="../admin/siderbar.jsp" />
		<div class="w-3/4 p-4">
			<main class="flex-grow container mx-auto px-4 py-6">
				<div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6">
					<!-- Card 1 -->
					<div class="bg-white p-6 rounded-lg shadow">
						<div class="flex items-center">
							<div
								class="w-12 h-12 bg-blue-100 text-blue-500 rounded-full flex items-center justify-center">
								<i class="fas fa-dollar-sign text-2xl"> </i>
							</div>
							<div class="ml-4">
								<h2 class="text-lg font-semibold text-gray-800">Tổng doanh thu</h2>
								<p class="text-gray-600">${totalRevenue}VNĐ</p>
							</div>
						</div>
					</div>
					<!-- Card 2 -->
					<div class="bg-white p-6 rounded-lg shadow">
						<div class="flex items-center">
							<div
								class="w-12 h-12 bg-green-100 text-green-500 rounded-full flex items-center justify-center">
								<i class="fas fa-chart-line text-2xl"> </i>
							</div>
							<div class="ml-4">
								<h2 class="text-lg font-semibold text-gray-800">Đoanh thu tháng </h2>
								<p class="text-gray-600">${totalRevenueMonth}</p>
							</div>
						</div>
					</div>
					<!-- Card 3 -->
					<div class="bg-white p-6 rounded-lg shadow">
						<div class="flex items-center">
							<div
								class="w-12 h-12 bg-yellow-100 text-yellow-500 rounded-full flex items-center justify-center">
								<i class="fas fa-users text-2xl"> </i>
							</div>
							<div class="ml-4">
								<h2 class="text-lg font-semibold text-gray-800">Khách hàng</h2>
								<p class="text-gray-600">${numberCustomer}</p>
							</div>
						</div>
					</div>
					<!-- Card 4 -->
					<div class="bg-white p-6 rounded-lg shadow">
						<div class="flex items-center">
							<div
								class="w-12 h-12 bg-red-100 text-red-500 rounded-full flex items-center justify-center">
								<i class="fas fa-shopping-cart text-2xl"> </i>
							</div>
							<div class="ml-4">
								<h2 class="text-lg font-semibold text-gray-800">Tổng hóa đơn</h2>
								<p class="text-gray-600">${totalOrder}</p>
							</div>
						</div>
					</div>
				</div>
				<!-- Recent Transactions -->
				<div class="bg-white p-6 rounded-lg shadow mt-6">
					<h2 class="text-lg font-semibold text-gray-800 mb-4">Recent
						Transactions</h2>
					<div class="overflow-x-auto">
						<table class="min-w-full bg-white">
							<thead>
								<tr>
									<th
										class="py-2 px-4 border-b border-gray-200 text-left text-sm font-semibold text-gray-800">
										Ngày</th>
									<th
										class="py-2 px-4 border-b border-gray-200 text-left text-sm font-semibold text-gray-800">
										Khách hàng</th>
									<th
										class="py-2 px-4 border-b border-gray-200 text-left text-sm font-semibold text-gray-800">
										Tổng hóa đơn</th>
									<th
										class="py-2 px-4 border-b border-gray-200 text-left text-sm font-semibold text-gray-800">
										Trạng thái</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="order" items="${listOrder}">
									<tr>
										<td
											class="py-2 px-4 border-b border-gray-200 text-sm text-gray-600">
											${order.orderDate} </td>
										<td
											class="py-2 px-4 border-b border-gray-200 text-sm text-gray-600">
											${order.user.lastName } ${order.user.firstName }</td>
										<td
											class="py-2 px-4 border-b border-gray-200 text-sm text-gray-600">
											${order.totalOrder}</td>
										<td
											class="py-2 px-4 border-b border-gray-200 text-sm text-gray-600">
											${order.status}</td>
									</tr>
									
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</main>
		</div>
	</div>
</body>
</html>