<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	  <div class="w-3/4 p-4">
            <form class="grid grid-cols-2 gap-4 mb-4">
                <div>
                    <label for="productName" class="block">Tên sản phẩm</label>
                    <input type="text" id="productName" class="border border-gray-300 w-full p-2">
                </div>
                <div>
                    <label for="productType" class="block">Tên loại sản phẩm</label>
                    <input type="text" id="productType" class="border border-gray-300 w-full p-2">
                </div>
                <div>
                    <label for="description" class="block">Mô tả</label>
                    <input type="text" id="description" class="border border-gray-300 w-full p-2">
                </div>
                <div>
                    <label for="price" class="block">Giá</label>
                    <input type="text" id="price" class="border border-gray-300 w-full p-2">
                </div>
                <div>
                    <label for="size" class="block">Kích thước</label>
                    <input type="text" id="size" class="border border-gray-300 w-full p-2">
                </div>
                <div>
                    <label for="quantity" class="block">Số lượng</label>
                    <input type="text" id="quantity" class="border border-gray-300 w-full p-2">
                </div>
                <div class="col-span-2">
                    <label for="image" class="block">Hình ảnh</label>
                    <input type="file" id="image" class="border border-gray-300 w-full p-2">
                </div>
            </form>
            <div class="flex space-x-4 mb-4">
                <button class="bg-[#b07c5b] text-white px-4 py-2">Thêm</button>
                <button class="bg-[#b07c5b] text-white px-4 py-2">Xóa</button>
                <button class="bg-[#b07c5b] text-white px-4 py-2">Sửa</button>
                <button class="bg-[#b07c5b] text-white px-4 py-2">Làm mới</button>
            </div>
            <table class="w-full border-collapse border border-gray-300">
                <thead>
                    <tr>
                        <th class="border border-gray-300 p-2">Tên sản phẩm</th>
                        <th class="border border-gray-300 p-2">Mô tả</th>
                        <th class="border border-gray-300 p-2">Giá</th>
                        <th class="border border-gray-300 p-2">Số lượng</th>
                        <th class="border border-gray-300 p-2">Loại sản phẩm</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="border border-gray-300 p-2">Chocolate Muffin</td>
                        <td class="border border-gray-300 p-2">Chocolate Muffin</td>
                        <td class="border border-gray-300 p-2">200.000đ</td>
                        <td class="border border-gray-300 p-2">4</td>
                        <td class="border border-gray-300 p-2">Chocolate Muff</td>
                    </tr>
                    <tr>
                        <td class="border border-gray-300 p-2">Chocolate Muffin</td>
                        <td class="border border-gray-300 p-2">Chocolate Muffin</td>
                        <td class="border border-gray-300 p-2">200.000đ</td>
                        <td class="border border-gray-300 p-2">4</td>
                        <td class="border border-gray-300 p-2">Chocolate Muff</td>
                    </tr>
                    <tr>
                        <td class="border border-gray-300 p-2">Chocolate Muffin</td>
                        <td class="border border-gray-300 p-2">Chocolate Muffin</td>
                        <td class="border border-gray-300 p-2">200.000đ</td>
                        <td class="border border-gray-300 p-2">4</td>
                        <td class="border border-gray-300 p-2">Chocolate Muff</td>
                    </tr>
                    <tr>
                        <td class="border border-gray-300 p-2">Chocolate Muffin</td>
                        <td class="border border-gray-300 p-2">Chocolate Muffin</td>
                        <td class="border border-gray-300 p-2">200.000đ</td>
                        <td class="border border-gray-300 p-2">4</td>
                        <td class="border border-gray-300 p-2">Chocolate Muff</td>
                    </tr>
                </tbody>
            </table>
        </div>
        </div>
</body>
</html>