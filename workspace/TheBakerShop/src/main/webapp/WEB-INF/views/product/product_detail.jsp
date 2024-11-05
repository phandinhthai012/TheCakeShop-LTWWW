<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
				<div class="main-detail-left-main-photo">
					<img class="main-photo" src="./assets/img/productDetail/cake.webp"
						alt="">
				</div>
			</div>
			<div class="main-detail-right">
				<h2 class="product-name">Italian Loaf</h2>
				<h2 class="product-price">400000 vnd</h2>
				<p class="main-text-description">Aliqua id fugiat nostrud irure
					ex duis ea quis id quis ad et. Sunt qui esse pariatur duis deserunt
					mollit dolore cillum minim tempor enim. Elit aute irure tempor
					cupidatat incididunt sint deserunt ut voluptate aute id deserunt
					nisi.</p>
				<div class="product-quantity-control">
					<div class="product-quantity-selection">
						<button class="btn-decrement">-</button>
						<input type="number" class="quantity-number" name="quantity" value="1">
						<button class="btn-increment">+</button>
					</div>
					<button class="btn-add">Thêm vào giỏ</button>
				</div>
				<table class="product-infor">
					<tr>
						<td>Category</td>
						<td>:</td>
						<td>cake abc</td>
					</tr>
					<tr>
						<td>Size</td>
						<td>:</td>
						<td>15 cm</td>
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
					src="./assets/img/productDetail/cake.webp" alt="">
				<div class="sub-description-01">
					<p class="sub-description-product-name">Italian Loaf</p>
					<p class="sub-text-description">Aliquam pulvinar vestibulum
						blandit. Donec sed nisl libero. Fusce dignissim luctus sem eu
						dapibus. Pellentesque vulputate quam a quam volutpat, sed
						ullamcorper erat commodo. Vestibulum sit amet ipsum vitae mauris
						mattis vulputate lacinia nec neque. Aenean quis consectetur nisi,
						ac interdum elit</p>
				</div>
			</div>
		</div>
		<div class="content-product-reference">
			<p class="product-reference-title">Sản phẩm liên quan</p>
			<div class="product-reference-body">
				<div class="product-reference">
					<img src="./assets/img/productDetail/cake.webp" alt=""
						class="product-reference-photo">
					<p class="product-reference-name">Italian Loaf</p>
					<p class="product-reference-price">400000 vnd</p>
				</div>
				<div class="product-reference">
					<img src="./assets/img/productDetail/cake.webp" alt=""
						class="product-reference-photo">
					<p class="product-reference-name">Italian Loaf</p>
					<p class="product-reference-price">400000 vnd</p>
				</div>
				<div class="product-reference">
					<img src="./assets/img/productDetail/cake.webp" alt=""
						class="product-reference-photo">
					<p class="product-reference-name">Italian Loaf</p>
					<p class="product-reference-price">400000 vnd</p>
				</div>
				<div class="product-reference">
					<img src="./assets/img/productDetail/cake.webp" alt=""
						class="product-reference-photo">
					<p class="product-reference-name">Italian Loaf</p>
					<p class="product-reference-price">400000 vnd</p>
				</div>
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
	height: 100%;
	display: flex;
	flex-direction: column;
	justify-content: space-evenly;
	align-items: center;
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
	width: 40%;
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
	width: 50%;
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
	padding: 0px 15px;
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
	margin-bottom: 10px;
}

.sub-description-body {
	display: flex;
	justify-content: space-between;
}

.sub-description-photo {
	width: 537px;
	height: 372px;
}

.sub-description-01 {
	width: 40%;
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
}

.product-reference .product-reference-photo {
	width: 100%;
	height: 316px;
	border: 0.5px solid grey;
}

.product-reference-name {
	font-size: 22px;
}

.product-reference-price {
	font-size: 28px;
}
</style>
<script>
        const decrementBtn = document.querySelector('.btn-decrement');
        const incrementBtn = document.querySelector('.btn-increment');
        const quantityInput = document.querySelector('.quantity-number');

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