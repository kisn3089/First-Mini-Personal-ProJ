<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

    <script src="http://code.jquery.com/jquery-latest.min.js"></script>

    <title>Kairos</title>
    <link rel="stylesheet" type="text/css" media="screen" href="${path}/resource/image/animation.css" />

    <link href="${path}/resource/image/logo.png" rel="shortcut icon" type="image/x-icon">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link
        href="https://fonts.googleapis.com/css2?family=Dongle:wght@300;400&family=Gowun+Batang:wght@700&family=Gugi&display=swap"
        rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Gugi&display=swap" rel="stylesheet">
    <style>
        .carousel-inner>.carousel-item>img {
            height: 660px;
        }

        .container {
            margin: 0 auto;
        }

        @media (min-width: 768px) {
            .container {
                width: 750px;
            }
        }

        @media (min-width: 992px) {
            .container {
                width: 970px;
            }
        }

        @media (min-width: 1200px) {
            .container {
                width: 1170px;
            }
        }

        * {
            font-family: 'Dongle', sans-serif;
            font-family: 'Gowun Batang', serif;
            display: 5;
        }

        .exhibit,
        .art,
        .myjoin,
        .login {
            padding: 20px;
            float: right;
            cursor: pointer;
        }

        .cronos {
            cursor: pointer;
            text-align: center;
            width: 500px;
            margin-right: 0;
            padding-left: 500px;
        }

        hr {
            margin-top: 30px;
            height: 10px;
            background: black;
            background-image: -webkit-linear-gradient(left, #eee, black, #eee);
            background-image: -moz-linear-gradient(left, #eee, black, #eee);
            background-image: linear-gradient(left, #eee, black, #eee);
            background-image: -o-linear-gradient(left, #eee, black, #eee);
        }

        .hr {
            margin-top: 10px;
        }

        .container-fluid mt-3 {
            text-align: center;
        }

        .com {
            left: 0;
            top: 0;
            width: 1965px;
            position: sticky;
            background-color: white;
            z-index: 5;
        }

        .footer {
            bottom: 0px;
            background: white;
            color: black;
            text-align: center;
            font-size: small;
            margin-top: 50px;
        }

        .footer>p,
        h5 {
            margin: 0px 0px 0px 0px;
            line-height: 120%;
        }

        .footer {
            left: 0px;
            bottom: 0px;
            width: 100%;
            background: rgb(29, 27, 27);
            opacity: 0.95;
            color: rgb(255, 255, 255);
            text-align: center;
            line-height: 0px;
            font-size: small;
        }

        #mydiv {
            background: #000000;
            width: 15px;
            margin-left: 950px;
            margin-top: 0px;
            height: 15px;
            transition: all 1s ease-in-out;
            border-radius: 150px;
        }

        body {
            background: #f3f3f3;
            transition: all 1s ease-in;
        }

        .inline {
            display: inline-block;
        }
    </style>
</head>

<body>
    <div id="mydiv"></div>

    <script>
        //   전역변수로 
        var mydiv = document.querySelector("#mydiv");
        var mybody = document.querySelector("body");

        function mHover() {

            if (true) {
                // 동그라미가 날아오는 방향 설정
                mydiv.style.marginLeft = "50%";
                mydiv.style.marginLeft = "40%";
                
                // 날아오면서 색깔 변화설정
                mydiv.style.background = "#ffffff";
                //날아오는동안 배경 색 변화설정

                mybody.style.background = "#ffffff";

                //날아오는동안 동그라미 모양설정
                mydiv.style.width = "0px";
                mydiv.style.height = "0px";
            } else {

            }
        }
        //시간변화
        setInterval(mHover, 10);

        function getStyle(el, prop) {
            return window.getComputedStyle(el, null).getPropertyValue(prop);
        }
    </script>
   <jsp:include page="header.jsp"/>
        <div class="stagger-item" style="float: left; width: 400px; height: 100px;"></div>
        <div class="mt-2 p-3 text-black rounded stagger-item" style="float: left;">
            <h4>" 개인 사진전을 열어보세요.</h4>
            <p>잡지 못하는 순간들을 엮어 다양한 전시장에 전시하고 공유하세요!</p>
        </div>


            <!-- 슬라이드 쇼 img -->
            <div class="container">
                <!-- Carousel -->
                <div id="demo" class="carousel slide stagger-item" data-bs-ride="carousel" style="height: 660px; margin-top: 150px;">

                    <!-- Indicators/dots -->
                    <div class="carousel-indicators">
                        <button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
                        <button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
                        <button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
                    </div>

                    <!-- The slideshow/carousel -->
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="${path}/resource/image/main1.jpg" alt="Los Angeles" class="d-block" style="width:100%;">
                        </div>
                        <div class="carousel-item">
                            <img src="${path}/resource/image/main2.jpg" alt="Chicago" class="d-block" style="width:100%;">
                        </div>
                        <div class="carousel-item">
                            <img src="${path}/resource/image/main3.jpg" alt="New York" class="d-block" style="width:100%;">
                        </div>
                    </div>

                    <!-- Left and right controls/icons -->
                    <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon"></span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
                        <span class="carousel-control-next-icon"></span>
                    </button>
                </div>

                <div class="container-fluid mt-3 stagger-item" style="text-align: center;">
                    <h3>Space -</h3>
                    <p>어떤 분위기의 사진인가요? 컨셉 전시장과 맞춰보세요!</p>
                </div>
            </div>
            <br>
<jsp:include page="footer.jsp"/>


            <script>

          

            </script>


</body>

</html>