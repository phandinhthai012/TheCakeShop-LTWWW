<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
				<a href="#"> Home </a>
			</div>
			<div class="option">
				<a href="${pageContext.request.contextPath}/accountorder2"> Đơn hàng </a>
			</div>
			<div class="option">
				<a href="${pageContext.request.contextPath}/accountdetail"> Chi tiết tài khoản </a>
			</div>
			<div class="option">
				<a href="${pageContext.request.contextPath}/accountaddress"> Địa chỉ </a>
			</div>
			<div class="option">
				<a href="#"> Đăng xuất </a>
			</div>
		</div>
		<div class="account-right">
			<form action="">
				<div class="container">
					<div class="half-width">
						<div class="half-width1">
							<label for="lName">Họ</label> <input type="text" id="lName"
								name="lname" class="lname">
						</div>
						<div class="half-width1">
							<label for="fName">Tên</label> <input type="text" id="fName"
								name="fname" class="fname">
						</div>

					</div>
					<label for="email">Email</label> <input type="email" id="email"
						name="email">
					<h2>Thay đổi mật khẩu</h2>
					<label for="currentPassword">Mật khẩu hiện tại</label> <input
						type="password" id="currentPassword" name="currentPassword">
					<label for="newPassword">Mật khẩu mới</label> <input
						type="password" id="newPassword" name="newPassword"> <label
						for="confirmPassword">Xác nhận mật khẩu</label> <input
						type="password" id="confirmPassword" name="confirmPassword">

				</div>
				<div>
					<button type="submit" class="submitbtn">Xác nhận</button>
				</div>
			</form>

		</div>

		</div>
		<jsp:include page="../footer/footer.jsp" />
</body>

<style>
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
    height: 678px;
    padding: 0px 50px;
}
.container{
    margin-left: 100px;
}
.container label {
    display: block;
    margin-bottom: 5px;
    font-family: "Inria Serif";
    font-size: 18px;
}
.container .half-width {
    display: flex;
    width: 100%;
    justify-content:flex-start;
}
.container .half-width:first-child {
    margin-right: 40px;
}

.container input[type="email"],
.container input[type="password"] {
    width: calc(63% - 20px);
    padding: 10px;
    margin-bottom: 20px;
    border: 1px solid #ccc;
    border-radius: 4px;
}
.half-width1{
    width: 300px
}
.lname, .fname {
    width: 250px;
    padding: 10px;
    margin-bottom: 20px;
    border: 1px solid #ccc;
    border-radius: 4px;
    
}

.submitbtn {
    background-color: #a0522d;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    display: inline-block;
    font-weight: 600;
    font-family: "Inria Serif";
    font-size: 20px;
    margin-left: 100px;
}
.submitbtn:hover {
    background-color: #000000;
}
.container h2 {
    font-size: 24px;
    margin-bottom: 20px;
    font-family: "Inria Serif";
}
</style>
</html>