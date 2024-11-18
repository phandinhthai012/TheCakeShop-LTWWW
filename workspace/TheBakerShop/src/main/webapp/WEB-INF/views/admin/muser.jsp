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
<title>quản lí người dùng</title>
<script src="https://cdn.tailwindcss.com"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"></link>
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap"
	rel="stylesheet">
<style>
.content {
	display: flex;
	margin-top: 50px;
}
a:{
	cursor: pointer;
}
</style>
</head>
<body>
	<div class="content">
		<jsp:include page="../admin/siderbar.jsp" />
		<div class="w-3/4 p-8 ax">
			<div class="container mx-auto p-4">
				<h1 class="text-3xl font-bold mb-4">Quản lí người dùng</h1>
				<div class="bg-white p-6 rounded-lg shadow-lg">
					<button onclick="openFormAdd()"
						class="bg-blue-500 text-white px-4 py-2 rounded-lg mb-4">Thêm người dùng</button>
					<h2 class="text-2xl font-semibold mb-4">Danh sách người dùng</h2>
					<ul id="userList" class="space-y-4">
						<c:forEach var="user" items="${listUser}">
							<li
								class="flex justify-between items-center bg-gray-100 p-4 rounded-lg shadow">
								<div>
									<p class="font-medium">${user.firstName}${user.lastName}</p>
									<p class="text-gray-600">${user.email}</p>
									<p class="text-gray-600">Role: ${user.role}</p>
									<p class="text-gray-600">Phone: ${user.phone}</p>
								</div>
								<a class="text-red-500 hover:text-red-700" href="${pageContext.request.contextPath}/admin/removeUser?userId=${user.userId}">
									<i class="fas fa-trash-alt"></i>
								</a>
							</li>
						</c:forEach>
					</ul>
				</div>
			</div>

			<!-- Modal -->
			<div id="userModal"
				class="fixed inset-0 bg-gray-800 bg-opacity-50 flex items-center justify-center hidden">
				<div class="bg-white p-6 rounded-lg shadow-lg w-1/3">
					<h2 class="text-2xl font-semibold mb-4">Add New User</h2>
					<div id="addUserForm" class ="mb-4">
						<!-- <form action="${pageContext.request.contextPath}/admin/addUser" method="post"> -->
					</div>

				</div>
			</div>

		</div>
	</div>
</body>


<script type="text/javascript">

function openFormAdd() {
   	const url = "${pageContext.request.contextPath}/admin/formAddUser";
   	fetch(url).then(res => res.text()).then(res => {
   		document.getElementById('addUserForm').innerHTML = res;
   	});
   	
	document.getElementById('userModal').classList.remove('hidden');
	}
function closeModal() {
    document.getElementById('userModal').classList.add('hidden');
}
</script>
</html>