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
</head>
<body>
	<div class="content">
		<jsp:include page="../admin/siderbar.jsp" />
		<div class="w-3/4 p-8">
			<h1 class="text-3xl font-bold mb-4">Quản lí đơn hàng</h1>
			<div class="bg-white shadow-md rounded-lg p-6">
				<table class="min-w-full bg-white">
					<thead>
						<tr>
							<th class="py-2 px-4 border-b">ID Hóa Đơn</th>
							<th class="py-2 px-4 border-b">Khách Hàng</th>
							<th class="py-2 px-4 border-b">Tổng Tiền</th>
							<th class="py-2 px-4 border-b">Ngày Đặt</th>
							<th class="py-2 px-4 border-b">Trạng thái</th>
							<th class="py-2 px-4 border-b">Xử lí</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="order" items="${listOrder}">
							<tr>
								<td class="py-2 px-4 border-b">${order.orderId }</td>
								<td class="py-2 px-4 border-b">${order.user.firstName }
									${order.user.lastName }</td>
								<td class="py-2 px-4 border-b">${order.totalOrder }</td>
								<td class="py-2 px-4 border-b">${order.orderDate }</td>
								<td class="py-2 px-4 border-b"><span
									class="bg-green-200 text-green-800 py-1 px-3 rounded-full text-xs">${order.status }</span>
								</td>
								<c:set var="id" value="${order.orderId}" />
								<td class="py-2 px-4 border-b">
									<button
										class="bg-blue-500 text-white py-1 px-3 rounded hover:bg-blue-700"
										onclick="viewInvoice('${order.orderId}')">View</button>
									<button
										class="bg-yellow-500 text-white py-1 px-3 rounded hover:bg-yellow-700"
										onclick="editStatus('${order.orderId}')">Edit</button>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>

		<!-- Modal for viewing invoice details -->
		<div id="viewInvoiceModal"
			class="fixed inset-0 bg-gray-600 bg-opacity-50 flex items-center justify-center hidden">
			<div class="bg-white rounded-lg shadow-lg p-6 w-1/2">
			 <div id="invoiceDetails">
                <!-- Invoice details will be populated here -->
            </div>
				<button
					class="bg-red-500 text-white py-2 px-4 rounded hover:bg-red-700 mt-4"
					onclick="closeModal('viewInvoiceModal')">Close</button>
			</div>
		</div>

		<!-- Modal for editing invoice status -->
		<div id="editStatusModal"
			class="fixed inset-0 bg-gray-600 bg-opacity-50 flex items-center justify-center hidden">
			<div class="bg-white rounded-lg shadow-lg p-6 w-1/2">
				<h2 class="text-2xl font-bold mb-4">Edit Invoice Status</h2>
				<div id="editStatusForm">
					<!-- Edit status form will be populated here -->
				</div>
				<button
					class="bg-red-500 text-white py-2 px-4 rounded hover:bg-red-700 mt-4"
					onclick="closeModal('editStatusModal')">Close</button>
			</div>
		</div>


	</div>
</body>

<script>
		function viewInvoice(invoiceId) {
			const orderId = invoiceId;
			const url = "/TheBakerShop/admin/viewInvoice?orderId=" + orderId;
			console.log(url);
		    fetch(url)
		        .then(response => response.text())
		        .then(data => {
		            const invoiceDetails = document.getElementById('invoiceDetails');
		            invoiceDetails.innerHTML = data;
		            document.getElementById('viewInvoiceModal').classList.remove('hidden');
		        });
		}

        function closeModal(modalId) {
            document.getElementById(modalId).classList.add('hidden');
        }
		
        function editStatus(invoiceId) {
        	const orderId = invoiceId;
			const url = "/TheBakerShop/admin/editStatus?orderId=" + orderId;
			console.log(url);
            fetch(url)
                .then(response => response.text())
                .then(data => {
                    const editStatusForm = document.getElementById('editStatusForm');
                    editStatusForm.innerHTML = data;
                    document.getElementById('editStatusModal').classList.remove('hidden');
                });
        }
        
    </script>
<style>
.content {
	display: flex;
}
</style>
</html>