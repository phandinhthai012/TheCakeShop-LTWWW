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
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
 <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
</head>
<body>
<jsp:include page="../header/header.jsp" />
	<div class="main">
        <div class="sidebar">
        <form action="${pageContext.request.contextPath}/filter" method="post">
            <input type="text" placeholder="Search here">
            <h3>Danh mục</h3>
            <ul>
                <li><a href="#">All</a></li>
                <li><a href="#">Cupcake</a></li>
                <li><a href="#">Pastry</a></li>
                <li><a href="#">Muffin</a></li>
                <li><a href="#">Waffle</a></li>
            </ul>
            
            <div class="price-range">
                <h3>Giá</h3>
                <ul>
                    <li><input type="checkbox" name = "price" value = "1"> 100.000đ - 200.000đ</li>
                    <li><input type="checkbox" name = "price" value = "2"> 200.000đ - 400.000đ</li>
                    <li><input type="checkbox" name = "price" value = "3"> 400.000đ - 600.000đ</li>
                    <li><input type="checkbox" name = "price" value = "4"> 600.000đ - 800.000đ</li>
                    <li><input type="checkbox" name = "price" value = "5"> 800.000đ - 1000.000đ</li>
                    <li><input type="checkbox" name = "price" value = "6"> Trên 1000.000đ</li>
                </ul>
            </div>
            <button type="submit">Lọc</button>
           </form>
        </div>
        <div class="products">
        	<c:forEach var="product" items="${products}">
        		<a class="product" href="${pageContext.request.contextPath}/product/productDetail/${product.productId}?categoryId=${product.category.categoryId}">
                <img src="${pageContext.request.contextPath}/resources/images/Products/${product.image}" width="100" height="100">
               	<h4>${product.productName }</h4>
                <div class="product-info">
                    <p>${product.price }</p>
                    <i class="fas fa-shopping-cart cart-icon"></i>
                </div>
            </a>
        	
        	</c:forEach>
            
        </div>
    </div>
    <div class="pagination">
        <a href="#">←</a>
  		<c:forEach var="i" begin="1" end="${totalPages}">
  		<a href="${pageContext.request.contextPath}/product/productList?page=${i}" class= "${i == currentPage ? 'active' : ''}">${i }</a>
  		</c:forEach>
        <a href="#">→</a>
    </div>
    
    <jsp:include page="../footer/footer.jsp" />
</body>

<style>
.main {
            display: flex;
            padding: 20px;	
            
        }
        .sidebar {
            width: 40%;
            padding: 20px;
            background-color: #f9f9f9;
            margin-right: 50px;
            margin-left: 50px;
        }
        .sidebar input[type="text"] {
            width: 90%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .sidebar h3 {
            margin-top: 0;
        }
        .sidebar ul {
            list-style: none;
            padding: 0;
        }
        .sidebar ul li {
            margin-bottom: 10px;
        }
        .sidebar ul li a {
            text-decoration: none;
            color: black;
        }
        .sidebar ul li a:hover {
            color: orange;
        }
        .sidebar .price-range {
            margin-top: 20px;
        }
        .sidebar .price-range ul {
            list-style: none;
            padding: 0;
        }
        .sidebar .price-range ul li {
            margin-bottom: 10px;
        }
        .sidebar .price-range ul li input {
            margin-right: 10px;
        }
        .sidebar button {
            padding: 10px 20px;
            background-color: orange;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .sidebar button:hover {
            background-color: darkorange;
        }
        .products {
            width: 85%;
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            padding: 20px;
        }
        .product {
            width: calc(25% - 20px);
            border: 1px solid #ccc;
            border-radius: 5px;
            text-align: center;
            padding: 20px;
            background-color: white;
            text-decoration: none;
            color: black;
        }
        .product img {
            width: 100%;
            height: 294px;
            object-fit: cover; 
            border-bottom: 1px solid #ccc;
            margin-bottom: 10px;
            
        }
        .product h4 {
            margin: 10px 0;
            text-align: left;
        }
        .product .product-info {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .product p {
            margin: 10px 0;
            font-size: 1.2em;
            color: #333;
        }
        .product .cart-icon {
            font-size: 1.5em;
            cursor: pointer;
        }
        .product:hover {
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .pagination {
            text-align: center;
            padding: 20px;
            margin-left: 300px;
        }
        .pagination a {
            text-decoration: none;
            color: black;
            margin: 0 10px;
            font-size: 1.2em;
        }
        .pagination a:hover {
            color: orange;
        }
        .pagination a.active {
        font-weight: bold;
        color: orange;
    }
        
</style>

</html>