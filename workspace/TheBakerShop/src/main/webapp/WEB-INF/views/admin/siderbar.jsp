<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="https://cdn.tailwindcss.com"></script>
 <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet"/>
    <style>
.bg-brown-500 {
	background-color: #b07c50;
}

.hover-bg-custom:hover {
	background-color: #b07c50;
	color: white;
}

.active {
	background-color: #b07c50;
	color: white;
}
</style>
<body>
	<div class="flex flex-no-wrap">
        <!-- Sidebar -->
        <c:set var="account" value="${sessionScope.user}" />
        <div class="w-64 bg-blue-600 shadow-lg h-screen">
            <div class="p-4">
                <div class="text-white text-2xl font-bold">${account.lastName } ${account.firstName }</div>
            </div>
            <ul class="mt-6" id="sidebar">
                <li class="text-white py-2 px-4 cursor-pointer"> <a href="${pageContext.request.contextPath}/" class="">Home</a></li>
                <li class="text-white py-2 px-4 cursor-pointer"> <a href="${pageContext.request.contextPath}/admin/product" class="">Quản lí sản phẩm</a></li>
                <li class="text-white py-2 px-4 cursor-pointer"> <a href="${pageContext.request.contextPath}/admin/category" class="">Quản lí loại sản phẩm</a></li>
                <li class="text-white py-2 px-4 cursor-pointer"><a href="${pageContext.request.contextPath}/admin/invoice" class="">Quản li hóa đơn</a></li>
                <li class="text-white py-2 px-4 cursor-pointer"><a href="${pageContext.request.contextPath}/admin/ShowUsers" class="">Quản lí người dùng</a></li>
                <li class="text-white py-2 px-4 cursor-pointer"> <a href="${pageContext.request.contextPath}/admin/revenue" class="">Doanh thu</a></li>
                <li class="text-white py-2 px-4 cursor-pointer"><a href="${pageContext.request.contextPath}/user/logout" class="block border-t border-gray-300 p-4 ">Đăng xuất</a></li>
            </ul>
        </div>
        </div>
</body>

 <script>
        document.querySelectorAll('#sidebar li').forEach(item => {
            item.addEventListener('click', () => {
                document.querySelectorAll('#sidebar li').forEach(li => li.classList.remove('active'));
                item.classList.add('active');
            });
        });
    </script>
</html>