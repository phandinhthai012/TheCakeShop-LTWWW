<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cart</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap"
	rel="stylesheet">
</head>
<body>
	<jsp:include page="../header/header.jsp" />
	<div id="content">
		<div class="sub-content">
			<div class="content-left">
				<table class="tbl-product table">
					<thead>
						<th></th>
						<th>Sản phẩm</th>
						<th>Giá</th>
						<th>Số lượng</th>
						<th>Tổng tiền</th>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td><img class="img-product"
								src="./assets/img/productDetail/cake.webp" alt="">
								Chocolate Muffin</td>
							<td>200.000đ</td>
							<td>4</td>
							<td>800.000đ</td>
						</tr>
						<tr>
							<td>1</td>
							<td><img class="img-product"
								src="./assets/img/productDetail/cake.webp" alt="">
								Chocolate Muffin</td>
							<td>200.000đ</td>
							<td>4</td>
							<td>800.000đ</td>
						</tr>
						<tr>
							<td>1</td>
							<td><img class="img-product"
								src="./assets/img/productDetail/cake.webp" alt="">
								Chocolate Muffin</td>
							<td>200.000đ</td>
							<td>4</td>
							<td>800.000đ</td>
						</tr>
					</tbody>
				</table>
				<div class="contain-btn">
					<a class="btn-continue btn-action" href="" >Tiếp tục mua sắm</a>
					<a class="btn-clear btn-action"  href="" >Xóa giỏ hàng</a>
				</div>
			</div>
			<div class="content-right">
				<div class="sub-content-right">
					<p class="sub-content-title">Cart totals</p>
					<p class="sub-content-1  txt-sub-content"></p>
					<p class="sub-content-2 txt-sub-content"></p>
					<a class="btn-purchase">Thanh toán</a>
				</div>
			</div>
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

#content {
	margin: 0 auto;
	width: 80%;
	height: 596px;
	display: flex;
	justify-content: center;
	align-items: center;
	width: 80%;
}

#content .sub-content {
	width: 100%;
	display: flex;
	justify-content: center;
	align-items: flex-start;
	gap: 40px;
}

.img-product {
	width: 40px;
	height: 40px;
}

.content-left {
	width: 70%;
}

.content-left .tbl-product {
	width: 100%;
	height: 100px;
	text-align: center;
}

.content-left .contain-btn {
	width: 100%;
	display: flex;
	justify-content: space-between;
	align-items: center;
	align-content: center;
}

.content-left .contain-btn .btn-action {
	margin-top: 20px;
	padding: 15px 40px;
	border: 1px solid black;
	text-align: center;
	align-items: center;
	text-decoration: none;
	justify-content: center;
	cursor: pointer;
}

.content-right {
	width: 30%;
}

.sub-content-right {
	padding: 20px;
	background-color: #EBEBED;
}

.sub-content-title {
	font-size: 16px;
	font-weight: bold;
}

.txt-sub-content {
	height: 48px;
	border-bottom: 1px solid #7B7B7B;
}

.btn-purchase {
	width: 100%;
	background-color: #333333;
	padding: 14px 60px;
	color: #fff;
	border: none;
	cursor: pointer;
}

.bl-product th {
    padding: 10px;
}
</style>
</html>