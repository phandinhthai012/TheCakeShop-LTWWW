<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="jakarta.tags.functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Check Out</title>
</head>
<body>
	<jsp:include page="../header/header.jsp" />
	<div class="container">
	<div class="checkout-form">
			<c:set var ="user" value="${sessionScope.user}" />
            <form class="form-section">
                <h2>Thông tin Khách hàng</h2>
                <label for="first-name">Họ</label>
                <input type="text" id="first-name" name="first-name" required value="${user.firstName}">
                
                <label for="last-name">Tên</label>
                <input type="text" id="last-name" name="last-name" required value="${user.lastName}">
                
                <label for="email">Email</label>
                <input type="email" id="email" name="email" required value="${user.email}">
                
                <label for="phone">Số Điện Thoại</label>
                <input type="tel" id="phone" name="phone" required value="${user.phone}">
                
                <label for="address">Địa Chỉ</label>
                <input type="text" id="address" name="address" required value="${user.address.addressInfo}">
                
                <label for="city">Thành Phố/Tỉnh</label>
                <input type="text" id="city" name="city" required value="${user.address.city}">
                
                <label for="state">Quận/Huyện</label>
                <input type="text" id="state" name="state" required value="${user.address.dictrict}">
                <br><br>
                <a class ="action1" href="${pageContext.request.contextPath}/user/accountAddress">Cập nhập địa chỉ</a>
            </form>
            <div class="order-summary">
                <h2>Order Summary</h2>
                <ul>
                <c:forEach var="cart" items="${sessionScope.cart}">
                    <li>
                        <span>${cart.product.productName }</span>
                        <span>${cart.price } VNĐ</span>
                    </li>
                 </c:forEach>
                    <li class="total">
                        <span>Total</span>
                        <span>${totalCart} VNĐ</span>
                    </li>
                    <li class ="action">
                        <a class ="action1" href="${pageContext.request.contextPath}/order/continueShopping">Tiếp tục mua hàng</a>
                        <a class ="action1" href="${pageContext.request.contextPath}/order/toOrder">Đặt hàng</a>
                    </li>
                </ul>
            </div>
        </div>
       </div>
	<jsp:include page="../footer/footer.jsp" />
</body>
<style>
.container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }
.checkout-form {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
        }
        .checkout-form .form-section {
            flex: 1;
            min-width: 300px;
            background: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .form-section h2 {
            font-size: 1.5em;
            margin-bottom: 10px;
        }
        .form-section label {
            display: block;
            margin-bottom: 5px;
            font-weight: 500;
        }
        .form-section input, .form-section select, .form-section textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .form-section input[type="submit"] {
            background-color: #28a745;
            color: #fff;
            border: none;
            cursor: pointer;
            font-size: 1em;
        }
        .form-section input[type="submit"]:hover {
            background-color: #218838;
        }
        .order-summary {
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
           	width: 30%; 
           
        }
        .order-summary h2 {
            font-size: 1.5em;
            margin-bottom: 10px;
        }
        .order-summary ul {
            list-style: none;
            padding: 0;
        }
        .order-summary ul li {
            display: flex;
            justify-content: space-between;
            margin-bottom: 10px;
        }
        .order-summary ul li span {
            font-weight: 500;
        }
        .order-summary .total {
            font-size: 1.2em;
            font-weight: 700;
        }
        .action {
            margin-top: 20px;
        }
        .action1  {
            margin-top: 20px;
            padding: 10px 10px;
            background-color: #c18257;
            color: #fff;
            text-decoration: none;
            border-radius: 4px;
            cursor: pointer;
        }
</style>
</html>