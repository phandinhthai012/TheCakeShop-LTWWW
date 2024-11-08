<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    </style>
<body>
	<div class="w-1/4 p-4">
        <div class="border border-gray-300">
            <a href="${pageContext.request.contextPath}/" class="block bg-brown-500 text-white p-4 hover-bg-custom">Home</a>
            <a href="#" class="block border-t border-gray-300 p-4 hover-bg-custom">Quản lí sản phẩm</a>
            <a href="#" class="block border-t border-gray-300 p-4 hover-bg-custom">Quản lí loại sản phẩm</a>
            <a href="#" class="block border-t border-gray-300 p-4 hover-bg-custom">Quản lí khách hàng</a>
            <a href="#" class="block border-t border-gray-300 p-4 hover-bg-custom">Doanh thu</a>
            <a href="#" class="block border-t border-gray-300 p-4 hover-bg-custom">Đăng xuất</a>
        </div>
    </div>
</body>
</html>