<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="footer">
        <div class="footer-left">
            <img src="${pageContext.request.contextPath}/resources/images/logo.png" alt="" class="footerlogo">
            <div class="footer-info">
                <div class="info">
                    <img src="" alt="">
                    <p>Địa chỉ: 123 Nguyễn Thị Minh Khai, Quận 1, TP.HCM</p>
                </div>
                <div class="info">
                    <img src="" alt="">
                    <p>Số điện thoại: 0909984254</p>
                </div>
                <div class="info">
                    <img src="" alt="">
                    <p>Email: Bakerhouse268@gmail.com</p>
                </div>

            </div>
        </div>
        <div class="footer-right">
            <img src="${pageContext.request.contextPath}/resources/images/map.jpg" alt="">

        </div>
    </div>
</body>
<style>
.footer {
        margin-top:100px;
        height:500px;
        background-image: url('${pageContext.request.contextPath}/resources/images/footer.png');
        background-size: cover;
       	padding-top: 50px;
       	padding-left: 50px;
    }

    .footer-left {
        width: 50%;
        display: flex;
        justify-content: center;
        flex-direction: column;
        float: left;
    }

    .footerlogo {
        width: 50%;
        margin: 0 auto;
    }

    .footer-info {
        display: flex;
        flex-direction: column;
        margin-top: 20px;
        margin-left: 50px;
    }

    .info {
        margin: 10px 0 0 0;
        display: flex;
        margin-top: 32px;

    }

    .info img {
        width: 20px;
        height: 20px;
        margin-right: 10px;
    }

    .info p {
        margin: 0;
        font-size: 16px;
        font-weight: 500;
        color: #ffff;
    }

    .footer-right {
        width: 45%;
        display: flex;
        justify-content: flex-end;
        float: left;
        align-items: center;
        height: 273px;
    }

    .footer-right img {
        width: 324px;
        height: 182px;
        border-radius: 20px;
    }
</style>
</html>