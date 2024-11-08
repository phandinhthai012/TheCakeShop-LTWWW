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
			<h1 class="text-2xl font-bold mb-4">Doanh thu</h1>
			<div class="mb-4">
				<label class="block mb-2">Chọn tháng</label> <select
					class="border border-gray-300 w-full p-2">
					<option>Tháng 1</option>
					<option>Tháng 2</option>
					<option>Tháng 3</option>
					<option>Tháng 4</option>
					<option>Tháng 5</option>
					<option>Tháng 6</option>
					<option>Tháng 7</option>
					<option>Tháng 8</option>
					<option>Tháng 9</option>
					<option>Tháng 10</option>
					<option>Tháng 11</option>
					<option>Tháng 12</option>
				</select>
			</div>
			<div class="mb-4">
				<label class="block mb-2">Chọn năm</label> <select
					class="border border-gray-300 w-full p-2">
					<option>2021</option>
					<option>2022</option>
					<option>2023</option>
					<option>2024</option>
				</select>
			</div>
			<div class="flex space-x-4 mb-4">
				<button class="bg-brown-500 text-white px-4 py-2 hover-bg-custom">Xem
					báo cáo</button>
			</div>
			<table class="w-full border-collapse border border-gray-300">
				<thead>
					<tr>
						<th class="border border-gray-300 p-2">Ngày</th>
						<th class="border border-gray-300 p-2">Doanh thu</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="border border-gray-300 p-2">01/01/2023</td>
						<td class="border border-gray-300 p-2">$1000</td>
					</tr>
					<tr>
						<td class="border border-gray-300 p-2">02/01/2023</td>
						<td class="border border-gray-300 p-2">$1500</td>
					</tr>
					<tr>
						<td class="border border-gray-300 p-2">03/01/2023</td>
						<td class="border border-gray-300 p-2">$2000</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>