<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	<%@ taglib prefix="c" uri="jakarta.tags.core"%>
    <%@ taglib prefix="fmt" uri="jakarta.tags.fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page import="com.iuh.spring.entity.User"%>
<%@ taglib prefix="fn" uri="jakarta.tags.functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="bg-white rounded-lg shadow-lg p-6 w-1/2 diiii" >
				<h2 class="text-2xl font-bold mb-4">Chi tiết hóa đơn</h2>
				<p>
					Ngày đặt hàng: ${order.orderDate }
				</p>
				<p>
					Khách hàng: ${order.user.firstName }  ${order.user.lastName }
				</p>
				<p>
					Địa chỉ: ${order.user.address.addressInfo } ${order.user.address.dictrict } ${order.user.address.city }
					
				</p>
				<br>
		<div id="invoiceDetails">
					<table class="atble">
						<tr>
							<th>Bánh</th>
							<th>Giá</th>
							<th>Số lượng</th>
						</tr>
						<c:forEach var="orderDetail" items="${listOrderDetail}">
							<tr>
								<td>${orderDetail.product.productName }</td>
								<td>${orderDetail.price } VNĐ</td>
								<td>${orderDetail.quantity }</td>
							</tr>
						</c:forEach>
					</table>
				</div>
			</div>
</body>
<style>
.diiii {
	margin: 0 auto;
	width: 700px;
}

.atble {
	width: 100%;
	border-collapse: collapse;
}

.atble th {
	border: 1px solid #000;
	padding: 8px;
}

.atble td {
	border: 1px solid #000;
	padding: 8px;
}

.atble tr:nth-child(even) {
	background-color: #f2f2f2;
}
</style>
</html>