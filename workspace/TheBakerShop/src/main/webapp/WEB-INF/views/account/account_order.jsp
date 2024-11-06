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
            <table class="tableOder">
                <thead>
                    <tr>
                        <th>Đơn hàng</th>
                        <th>Ngày đặt</th>
                        <th>Tổng tiền</th>
                        <th>Trạng Thái</th>
                    </tr>
                </thead>
                <tbody>
                <c:set var ="i" value="0"/>
                <c:forEach var="order" items="${orders}">
                    <tr>
							<td>${i+1 }</td>
							<td>${order.orderDate}</td>
							<td>${order.totalOrder}đ</td>
							<td>${order.status}</td>
					</tr>
                </c:forEach>
                    <tr>
                        <td>2</td>
                        <td>22/9/2024</td>
                        <td>800.000đ</td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>22/9/2024</td>
                        <td>800.000đ</td>
                    </tr>
                </tbody>
            </table>
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
/**/
.tableOder {
    width: 80%;
    border-collapse: collapse;
    align-self: center;
    margin-left: 100px;
}
.tableOder th, td {
    padding: 18px;
    text-align: left;
    border-bottom: 1px solid #ddd;
    height: 24px;
    font-family: "Inter";
    font-size: 18px;
    
}
.tableOder th {
    font-size: 20px;
    font-weight: 800;
    font-family: "Inter";
    
}
td:first-child {
    font-weight: bold;
    font-family: "Inter";
}
</style>
</html>