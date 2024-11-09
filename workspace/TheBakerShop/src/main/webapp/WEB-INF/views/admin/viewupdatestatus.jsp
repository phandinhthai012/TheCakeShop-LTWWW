<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
<body>
	<form id="orderStatusForm"
		action="${pageContext.request.contextPath}/admin/updateStatusOrder"
		method="post">
		<div class="mb-4">
			<label for="orderId" class="block text-sm font-medium text-gray-700">Order
				ID</label> <input type="text" id="orderId" name="orderId"
				value="${order.orderId }"
				class="mt-1 block w-full py-2 px-3 border border-gray-300 bg-white rounded-md shadow-sm focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm">
		</div>
		<div class="mb-4">
			<label for="customerName"
				class="block text-sm font-medium text-gray-700">Khách hàng</label> <input
				type="text" id="customerName" name="customerName"
				value="${order.user.firstName } ${order.user.lastName }"
				class="mt-1 block w-full py-2 px-3 border border-gray-300 bg-white rounded-md shadow-sm focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm">
		</div>
		<div class="mb-4">
			<label for="status" class="block text-sm font-medium text-gray-700">Trang
				thái đơn hàng</label> <select id="status" name="status"
				class="mt-1 block w-full py-2 px-3 border border-gray-300 bg-white rounded-md shadow-sm focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm"
				required>
				<option value="Chờ xác nhận"
					<c:if test="${order.status == 'Chờ xác nhận'}">selected</c:if>>Chờ
					xác nhận</option>
				<option value="Xác nhận"
					<c:if test="${order.status == 'Xác nhận'}">selected</c:if>>Xác
					nhận</option>
				<option value="Đang giao"
					<c:if test="${order.status == 'Đang giao'}">selected</c:if>>Đang
					giao</option>
				<option value="Giao hàng thành công"
					<c:if test="${order.status == 'Giao hàng thành công'}">selected</c:if>>Giao
					hàng thành công</option>
				<option value="Đã hủy"
					<c:if test="${order.status == 'Đã hủy'}">selected</c:if>>Đã
					hủy</option>
			</select>
		</div>
		<button type="submit"
			class="bg-blue-500 text-white py-2 px-4 rounded hover:bg-blue-700">Cập
			nhập</button>
	</form>
</body>
</html>