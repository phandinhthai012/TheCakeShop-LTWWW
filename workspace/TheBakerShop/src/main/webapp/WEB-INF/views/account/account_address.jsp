<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&amp;display=swap"
	rel="stylesheet" />
</head>
<body>
	<jsp:include page="../header/header.jsp" />
	<div class="account-content">
		<div class="account-left">
			<div class="option">
				<a href="${pageContext.request.contextPath}/user/account"> Home </a>
			</div>
			<div class="option">
				<a href="${pageContext.request.contextPath}/user/accountOrderHistory"> Đơn hàng </a>
			</div>
			<div class="option">
				<a href="${pageContext.request.contextPath}/user/accountDetail"> Chi tiết tài khoản </a>
			</div>
			<div class="option">
				<a href="${pageContext.request.contextPath}/user/accountAddress"> Địa
					chỉ </a>
			</div>
			<div class="option">
				<a href="${pageContext.request.contextPath}/user/logout"> Đăng xuất </a>
			</div>
		</div>
		<div class="account-right">
			<c:set var="account" value="${sessionScope.user}" />
			<c:set var="address" value="${address}" />
			<form action="${pageContext.request.contextPath}/user/changeAddress" method="post">
				<table>
					<tr>
						<td><label for="ho">Họ</label></td>
						<td><label for="ten">Tên</label></td>
					</tr>
					<tr>
						<input type="hidden" name="userId" value="${account.userId }">
						<td><input type="text" id="ho" name="lname" value="${account.lastName }"></td>
						<td><input type="text" id="ten" name="fname" value="${account.firstName }"></td>
					</tr>
					<tr>
						<td><label for="email">Email</label></td>
						<td><label for="dien-thoai">Điện thoại</label></td>
					</tr>
					<tr>
						<td><input type="email" id="email" name="email" value="${account.email }" disabled="disabled"></td>
						<td><input type="text" id="dien-thoai" name="phone" value="${account.phone }"></td>
					</tr>
					<tr>
						<td><label for="thanh-pho">Thành phố / tỉnh</label></td>
						<td><label for="quan-huyen">Quận / huyện</label></td>
					</tr>
					<tr>
						<td><input type="text" id="thanh-pho" name="city" value =${address.city }></td>
						<td><input type="text" id="quan-huyen" name="dictrict" value =${address.dictrict }></td>
					</tr>
					<tr>
						<td colspan="2"><label for="dia-chi">Địa chỉ</label></td>
					</tr>
					<tr>
						<td colspan="2"><input type="text" id="dia-chi" name="addressInfo" value="${address.addressInfo }"></td>
					</tr>
					<tr>
						<td colspan="2">
							<span style="color: red">${message}</span><br>	
							<button type="submit" class="submit-btn">Xác nhận</button>
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
	<jsp:include page="../footer/footer.jsp" />
</body>

<style>
body {
	font-family: 'Roboto', sans-serif;
	margin: 0;
	padding: 0;
	/* width: 100%; */
	overflow-x: hidden; /* Ẩn thanh cuộn ngang */
}

.account-content {
	display: flex;
	justify-content: center;
	margin-top: 100px;
	width: 100%;
	height: 500px;
}

.account-left {
	width: 340px;
	height: 259px;
	display: flex;
	flex-direction: column;
	border: 1px solid #838383;
	margin-left: 170px;
}

/* .account-right {
   
} */
.option {
	border: 1px solid #838383;
	width: 340px;
	height: 52px;
	display: flex;
	align-items: center;
}

.option:hover {
	background-color: #c18257;
}

.option:hover a {
	color: #ffff;
}

.option a {
	color: black;
	text-decoration: none;
	font-size: 20px;
	font-weight: 500;
	font-family: "Inter";
	align-self: center;
	margin-left: 50px;
}

.account-right {
	width: 60%;
	height: 259px;
	padding: 12px 20px;
	margin-left: 20px;
}

table {
	width: 100%;
	border-collapse: collapse;
}

td {
	padding: 10px;
	padding-right: 50px;
	font-size: 18px;
	font-family: "Inknut Antiqua";
}

input[type="text"], input[type="email"] {
	width: 100%;
	padding: 4px;
	border: 1px solid #ccc;
	border-radius: 1px;
	height: 32px;
	font-size: 18px;
	font-family: "Inknut Antiqua";
}

.submit-btn {
	background-color: #a97148;
	color: white;
	padding: 10px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	font-size: 18px;
	font-weight: 800;
	font-family: "Inknut Antiqua";
}
</style>
</html>