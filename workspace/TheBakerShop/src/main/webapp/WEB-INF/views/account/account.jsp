<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Account</title>
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
				<a href="#"> Home </a>
			</div>
			<div class="option">
				<a href="${pageContext.request.contextPath}/accountorder2"> Đơn hàng </a>
			</div>
			<div class="option">
				<a href="${pageContext.request.contextPath}/accountdetail"> Chi tiết tài khoản </a>
			</div>
			<div class="option">
				<a href="${pageContext.request.contextPath}/accountaddress"> Địa
					chỉ </a>
			</div>
			<div class="option">
				<a href="#"> Đăng xuất </a>
			</div>
		</div>
		<div class="account-right">
			<h3>
				Hello AccountA (not AccountA? <a href="">Log out</a>)
			</h3>
			<p>Từ bảng điều khiển tài khoản, bạn có thể xem các đơn hàng gần
				đây , quản lý địa chỉ giao hàng và thanh toán cũng như chỉnh sửa mật
				khẩu và thông tin tài khoản .</p>
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
</style>
</html>