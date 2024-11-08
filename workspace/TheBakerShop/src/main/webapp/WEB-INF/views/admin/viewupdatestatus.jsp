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
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap"
	rel="stylesheet">
</head>
<body>
	<form id="orderStatusForm">
		<div class="mb-4">
			<label for="orderId" class="block text-sm font-medium text-gray-700">Order ID</label> 
			<input type="text" id="orderId" name="orderId" 
				class="mt-1 block w-full py-2 px-3 border border-gray-300 bg-white rounded-md shadow-sm focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm"
				required>
		</div>
		<div class="mb-4">
			<label for="customerName"
				class="block text-sm font-medium text-gray-700">Customer Name</label> 
				<input type="text" id="customerName" name="customerName"
				class="mt-1 block w-full py-2 px-3 border border-gray-300 bg-white rounded-md shadow-sm focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm"
				required>
		</div>
		<div class="mb-4">
			<label for="amount" class="block text-sm font-medium text-gray-700">Amount</label>
			<input type="number" id="amount" name="amount"
				class="mt-1 block w-full py-2 px-3 border border-gray-300 bg-white rounded-md shadow-sm focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm"
				required>
		</div>
		<div class="mb-4">
			<label for="status" class="block text-sm font-medium text-gray-700">Status</label>
			<select id="status" name="status" class="mt-1 block w-full py-2 px-3 border border-gray-300 bg-white rounded-md shadow-sm focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm"
				required>
				<option value="paid"></option>
				<option value="unpaid">Unpaid</option>
				<option value="pending">Pending</option>
				<option value="shipped">Shipped</option>
				<option value="delivered">Delivered</option>
				<option value="cancelled">Cancelled</option>
			</select>
		</div>
		<div class="mb-4">
			<label for="notes" class="block text-sm font-medium text-gray-700">Notes</label>
			<textarea id="notes" name="notes" rows="4"
				class="mt-1 block w-full py-2 px-3 border border-gray-300 bg-white rounded-md shadow-sm focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm"></textarea>
		</div>
		<button type="submit"
			class="bg-blue-500 text-white py-2 px-4 rounded hover:bg-blue-700">Update
			Status</button>
	</form>
</body>
</html>