<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
</head>
<body>
	<jsp:include page="../header/header.jsp" />
	
	<div id="content">
            <div class="content-left">
                <img class="content-logo" src="./resources/images/logo.png" alt="">
                <table class="tbl-infor">
                    <tr class="tbl-row">
                        <td class="infor-icon"><i class="fa-solid fa-location-dot"></i></td>
                        <td class="infor-text">Ngõ 91 Nguyễn Chí Thanh, Q.Đống Đa, Hà Nội</td>
                    </tr>
                    <tr class="tbl-row">
                        <td class="infor-icon"><i class="fa-solid fa-phone"></i></td>
                        <td class="infor-text">090 786 0330</td>
                    </tr>
                    <tr class="tbl-row">
                        <td class="infor-icon"><i class="fa-regular fa-envelope"></i></td>
                        <td class="infor-text">Bakerhouse268@gmail.com</td>
                    </tr>
                </table>
            </div>
            <div class="content-right">
                <p>Cảm ơn quý khách đã quan tâm</p>
                <p>Nếu quý khách có thắc mắc, ý kiến phản hồi hay đóng góp, xin vui lòng điền vào Form dưới đây và gửi
                    cho chúng tôi</p>
                <form action="${pageContext.request.contextPath}/SendMail" class="input-form" method="post">
                    <div class="name">
                        <div class="last-name">
                            <label for="lastName" class="lbl-last-name">Họ</label>
                            <input type="text" name="lastName" id="lastName">
                        </div>
                        <div class="first-name">
                            <label for="firstName" class="lbl-first-name">Tên</label>
                            <input type="text" name="firstName" id="firstName">
                        </div>
                    </div>
                    <div class="email">
                        <label for="email">Email</label>
                        <input type="text" name="email" id="email">
                    </div>
                    <div class="message">
                        <label for="message">Tin nhắn</label>
                        <textarea class="txt-message" name="message" id="message"></textarea>
                    </div>
                    <input type="submit" value="Gửi tin nhắn">
                </form>
            </div>
        </div>
        
        
	
	<jsp:include page="../footer/footer.jsp" />
</body>

<style>
#content {
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .content-left {
            width: 40%;
            display: flex;
            flex-direction: column;
        }

        .content-left .content-logo {
            width: 338px;
            height: 86px;
        }

        .tbl-infor {
            row-gap: 1000px;
        }

        .tbl-infor .tbl-row .infor-icon {
            border: 0.7px solid #BC8157;
            border-radius: 50px;
            padding: 10px;
            width: 24px;
            height: 24px;
        }

        .tbl-infor .tbl-row .infor-icon i {
            font-size: 24px;
            color: #BC8157;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .tbl-infor .tbl-row .infor-text {
            color: #333333;
            padding-left: 10px;
        }

        .content-right {
            width: 40%;
            height: 630px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-self: flex-start;
            gap: 20px;
        }

        .content-right p {
            font-size: 18px;
            font-family: "Inria Serif", serif;
        }

        .content-right .input-form {
            width: 100%;
            display: flex;
            flex-direction: column;
            justify-content: flex-start;
            align-items: flex-start;
            gap: 20px;
            border: 0.6px solid #D1D1D1;
            border-radius: 5px;
            padding: 25px;
        }

        .input-form .name {
            width: 100%;
            display: flex;
            justify-content: space-between;
        }

        .input-form .name .last-name, .first-name {
            width: 45%;
        }


        .input-form .email,
        .input-form .message, .name .last-name,
        .name .first-name {
            display: flex;
            flex-direction: column;
            gap: 10px;
        }

        .input-form .email, .input-form .message {
            width: 100%;
        }

        
        .input-form input[type="text"] {
            height: 53px;
            padding-left: 5px;
            text-align: start;
            outline: none;
        }

        .input-form .message .txt-message {
            height: 178px;
            padding: 5px;
            outline: none;
        }

        .input-form input[type="submit"] {
            width: 156px;
            height: 52px;
            background-color: #333333;
            color: #fff;
            font-size: 16px;
            border: none;
        }
</style>
</html>