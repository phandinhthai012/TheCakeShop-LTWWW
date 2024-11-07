<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Detail</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap"
	rel="stylesheet">
</head>
<body>
	<jsp:include page="/WEB-INF/views/header/header.jsp" />

	<div id="content">
		<div class="content-main-detail">
			<div class="main-detail-left">
				<div class="main-detail-left-sub-photo">
                        <img class="sub-photo" src="${pageContext.request.contextPath}/resources/images/Products/${product.image}" alt="">
                        <img class="sub-photo" src="${pageContext.request.contextPath}/resources/images/Products/${product.image}" alt="">
                        <img class="sub-photo" src="${pageContext.request.contextPath}/resources/images/Products/${product.image}" alt="">
                        <img class="sub-photo" src="${pageContext.request.contextPath}/resources/images/Products/${product.image}" alt="">
                    </div>
				<div class="main-detail-left-main-photo">
					<img class="main-photo"
						src="${pageContext.request.contextPath}/resources/images/Products/${product.image}"
						alt="">
				</div>
			</div>
			<div class="main-detail-right">
				<h2 class="product-name">${product.productName}</h2>
				<h2 class="product-price">${product.price} VNĐ</h2>
				<form action="${pageContext.request.contextPath}/order/addToCart" method="POST">
				<p class="main-text-description">Aliqua id fugiat nostrud irure ex duis ea quis id quis ad et. Sunt
                        qui esse pariatur duis
                        deserunt mollit dolore cillum minim tempor enim. Elit aute irure tempor cupidatat incididunt
                        sint deserunt ut voluptate aute id deserunt nisi.</p>
                    <input type="hidden" name="productId" value="${product.productId}">
					<div class="product-quantity-control">
						<div class="product-quantity-selection">
							<button class="btn-decrement" type="button">-</button>
							<input class="quantity-number" name="quantity" type="number"
								value="1" />
							<button class="btn-increment" type="button">+</button>
						</div>
						<button class="btn-add" type="submit">Thêm vào giỏ</button>
					</div>
				</form>
				<table class="product-infor">
					<tr>
						<td>Category</td>
						<td>:</td>
						<td>${product.category.categoryName}</td>
					</tr>
					<tr>
						<td>Size</td>
						<td>:</td>
						<td>${product.size} cm</td>
					</tr>
				</table>
				<div class="social-reference">
					<a href=""><i class="fa-brands fa-facebook-f"></i></a> <a href=""><i
						class="fa-brands fa-pinterest-p"></i></a>
				</div>
			</div>
		</div>
		<div class="content-sub-desciption">
			<p class="sub-description-title">Mô tả</p>
			<div class="sub-description-body">
				<img class="sub-description-photo"
					src="${pageContext.request.contextPath}/resources/images/Products/${product.image}"
					alt="">
				<div class="sub-description-01">
					<p class="sub-description-product-name">${product.productName}</p>
					<p class="sub-text-description">${product.description}</p>
				</div>
			</div>
		</div>
		<div class="content-product-reference">
			<p class="product-reference-title">Sản phẩm liên quan</p>
			<div class="product-reference-body">
				<c:forEach var="p" items="${productRe}">
					<a class="product-reference" href="${pageContext.request.contextPath}/product/productDetail/${p.productId}?categoryId=${p.category.categoryId}"> <img
						src="${pageContext.request.contextPath}/resources/images/Products/${p.image}"
						alt="" class="product-reference-photo">
						<p class="product-reference-name">${p.productName}</p>
						<p class="product-reference-price">${p.price} VNĐ</p>
					</a>
				</c:forEach>
			</div>
		</div>
	</div>

	<jsp:include page="/WEB-INF/views/footer/footer.jsp" />

</body>
<style>
body {
	width: 100%;
	height: 2507px;
}

#content {
	height: 70%; display : flex;
	flex-direction: column;
	justify-content: space-evenly;
	align-items: center;
	margin-top: 0px;
	display: flex;
}

.content-main-detail {
	width: 80%;
	height: 555px;
	display: flex;
	justify-content: center;
	gap: 50px;
}

.content-main-detail .main-detail-left {
	width: 60%;
	display: flex;
	justify-content: space-between;
}

.main-detail-left-sub-photo {
	display: flex;
	flex-direction: column;
	justify-content: space-between;
	margin-right: 20px;
}

.main-detail-left-sub-photo .sub-photo {
	width: 101px;
	height: 127px;
}

.main-detail-left-main-photo {
	position: relative;
	border: 1px solid grey;
}

.main-detail-left-main-photo .btn-arrow-main-detail {
	background-color: transparent;
	outline: none;
	color: grey;
	border: 1px solid grey;
}

.main-detail-left-main-photo .btn-arrow-left {
	position: absolute;
	left: 0px;
	top: 260px;
}

.main-detail-left-main-photo .btn-arrow-right {
	position: absolute;
	top: 260px;
	right: 0px;
}

.main-detail-left-main-photo .btn-arrow-main-detail i {
	font-size: 30px;
	padding: 5px;
}

.main-detail-left-main-photo .main-photo {
	width: 467px;
	height: 555px;
}

.content-main-detail .main-detail-right {
	width: 70%;
	display: flex;
	flex-direction: column;
	gap: 20px;
}

.main-detail-right .product-name {
	font-family: "Inria Serif", serif;
	font-size: 22px;
	color: #7B7B7B;
}

.main-detail-right .product-price {
	font-family: "Inria Serif", serif;
	font-size: 28px;
	color: #7B7B7B;
}

.main-text-description {
	font-family: "Inria Serif", serif;
	font-size: 16px;
	color: #7B7B7B;
}

.main-detail-right .product-quantity-control {
	margin: 50px 0px;
	display: flex;
	gap: 30px;
	font-size: 16px;
}

.product-quantity-selection {
	width: 20%;
	display: flex;
	justify-content: space-around;
	align-items: center;
	padding: 15px 20px;
	border: 1px solid grey;
	border-radius: 50px;
}

.product-quantity-selection button {
	font-size: 25px;
	color: #333333;
	border: none;
	background-color: transparent;
}

.product-quantity-selection .quantity-number {
	width: 30%;
	height: 80%;
	border: none;
	outline: none;
	text-align: right;
}

.btn-add {
	width: 40%;
	font-size: 16px;
	background-color: #333333;
	color: #fff;
	outline: none;
	border: none;
	border-radius: 50px;
	padding: 15px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
}

.product-infor {
	display: flex;
	color: #333333;
}

.product-infor tr td {
	padding-right: 10px;
}

.main-detail-right .social-reference {
	display: flex;
	gap: 10px;
}

.main-detail-right .social-reference a {
	width: 20px;
	height: 20px;
	border: 1px solid #000;
	border-radius: 50px;
	padding: 10px;
	align-items: center;
	justify-content: center;
	text-decoration: none;
}

.social-reference a i {
	display: flex;
	font-size: 16px;
	align-items: center;
	justify-content: center;
}

.content-sub-desciption {
	width: 80%;
	display: flex;
	flex-direction: column;
}

.content-sub-desciption .sub-description-title, .product-reference-title
	{
	font-size: 22px;
	font-family: "Inria Serif", serif;
}

.sub-description-body {
	display: flex;
	justify-content: space-between;
}

.sub-description-photo {
	width: 500px;
	height: 400px;
}

.sub-description-01 {
	width: 52%;
	display: flex;
	flex-direction: column;
	gap: 10px;
}

.sub-description-product-name {
	font-size: 28px;
}

.sub-text-description {
	color: #333333;
	font-size: 22px;
	font-family: "Inria Serif", serif;
}

.content-product-reference {
	width: 80%;
	display: flex;
	flex-direction: column;
}

.product-reference-body {
	display: flex;
	justify-content: space-between;
	gap: 15px;
}

.product-reference {
	width: 269px;
	height: 441px;
	display: flex;
	flex-direction: column;
	justify-content: flex-start;
	align-items: center;
	gap: 10px;
	color: #333333;
	text-decoration: none;
}

.product-reference:hover {
	transform: translateY(-5px);
	box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
}

.product-reference .product-reference-photo {
	width: 100%;
	height: 316px;
	border: 0.5px solid grey;
}

.product-reference-name {
	margin: 0;
	font-size: 18px;
}

.product-reference-price {
	margin: 0;
	font-size: 18px;
}
</style>
<script>
        const decrementBtn = document.querySelector('.btn-decrement');
        const incrementBtn = document.querySelector('.btn-increment');
        const quantityInput = document.querySelector('.quantity-number');
        const addToCartBtn = document.querySelector('.btn-add');
        
        

        quantityInput.value = 1;

        decrementBtn.addEventListener('click', () => {
            let currentValue = parseInt(quantityInput.value);
            if (currentValue > 1) {
                quantityInput.value = currentValue - 1;
            }
        });

        incrementBtn.addEventListener('click', () => {
            let currentValue = parseInt(quantityInput.value);
            quantityInput.value = currentValue + 1;
        });

        quantityInput.addEventListener('change', () => {
            let currentValue = parseInt(quantityInput.value);
            if (currentValue < 1 || isNaN(currentValue)) {
                quantityInput.value = 1;
            }
        });
    </script>
</html>