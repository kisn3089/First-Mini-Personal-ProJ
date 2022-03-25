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
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>



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
            padding-left: 570px;

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

        * {
            font-family: 'Dongle', sans-serif;
            font-family: 'Gowun Batang', serif;
            display: 5;
        }

        .com {
            left: 0;
            top: 0;
            width: 1965px;
            position: sticky;
            background-color: white;
            z-index: 3;
        }

        .footer {
            bottom: 0px;
            background: white;
            color: black;
            text-align: center;
            font-size: small;
            margin-top: 300px;
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
            background: rgb(22, 20, 20);
            opacity: 0.95;
            color: rgb(255, 255, 255);
            text-align: center;
            line-height: 0px;
            font-size: small;
        }

        .containerbg {
            background-color: rgb(22, 22, 22);
            opacity: 1;
            width: 1300px;
            height: 550px;
            display: inline-block;
        }

        .inline {
            display: inline-block;
        }

        #mydiv {
            background: yellow;
            width: 25px;
            margin-left: 680px;
            margin-top: 0px;
            height: 25px;
            transition: all 3s ease-in-out;
            border-radius: 150px;
        }

        body {
            background: #ffffff;
            transition: all 1s ease-in;
        }

        .bar {
            width: 250px;
            height: 50px;
            background-color: aqua;
            margin-left: 140px;
            margin-top: -220px;
        }

        #demo-file::file-selector-button {
            border: 2px solid #000000;
            color: #000000;
            padding: 8px;
            border-radius: 4px;
            background-color: #ffffff;
        }

        #demo-file::file-selector-button:hover {
            background-color: #ffffff;
        }

        #demo-file::-webkit-file-upload-button {
            border: 2px solid #555555;
            color: #ffffff; 
            padding: 8px;
            border-radius: 4px;
            background-color: #161515;
        }

        #demo-file::-webkit-file-upload-button:hover {
            background-color: #000000;
        }
        .file {
            color: white;
        }
        #sub {
            background-color: #161515;
        }
        #sub {
            border: 2px solid #555555;
            padding: 8px;
            border-radius: 4px;
        }

        #sub:hover {
            background-color: #000000;
        }
    </style>
</head>

<body>
<jsp:include page="header.jsp"/>
    <br><br><br>
    <!-- exhibit -->
    <div style="text-align:center">
        <!-- 전시바 -->
        <div class="containerbg stagger-item">
            <div class="img1">
                <img src="${path}/resource/image/exhibit.jpg" class="rounded stagger-item"
                    style="width: 800px; height: 600px; float: right; padding-top: 50px;">
            </div>
            <div class="box" style="color: white; padding: 20px; border: 1px solid white;">
                <h4 class="stagger-item" style="margin-top: 50px;">전시 -</h4>
            </div>

            <div class="box2 stagger-item" style="color: white; padding: 30px;">
                <h4 style="float: left;">" 기억, 멋지게 간직하세요. -</h4>
            </div>
            <div class="box2 stagger-item" style="color: white; padding: 30px;">
                <h5 style="float: left;">원하는 공간, 원하는 분위기에 -</h5><br><br>
                <h5 style="float: left;">마음껏 사진전을 열어보세요.</h5>
            </div><br><br><br><br><br><br><br>
            <!-- <input type="file" class="stagger-item" style="color: white;"> -->
			<form method="post" action="/upload" enctype="multipart/form-data">
            <input class="file stagger-item" type="file" id="demo-file" name="filename"/>
            <input class="file stagger-item" type="submit" id="sub" name="sub" value="업로드"/>
            </form>

        </div>
   </div>
    <div class="bar stagger-item"></div><br>
    <div style="width: 200px; height: 25px;">
        <div class="stagger-item" id="mydiv"></div>
        <script>
            //   전역변수로 
            var mydiv = document.querySelector("#mydiv");
            var mybody = document.querySelector("body");
    
            function mHover() {
    
                if (true) {
                    // 동그라미가 날아오는 방향 설정
                    mydiv.style.marginLeft = "30%";
                    mydiv.style.marginLeft = "20%";
    
                    // 날아오면서 색깔 변화설정
                    mydiv.style.background = "#ffffff";
                    //날아오는동안 배경 색 변화설정
    
                    mybody.style.background = "#ffffff";
    
                    //날아오는동안 동그라미 모양설정
                    mydiv.style.width = "25px";
                    mydiv.style.height = "25px";
                } else {
    
                }
            }
            //시간변화
            setInterval(mHover, 10);
    
            function getStyle(el, prop) {
                return window.getComputedStyle(el, null).getPropertyValue(prop);
            }
        </script>
    </div>
    <br><br><br>

    <!-- footer bar -->
<jsp:include page="footer.jsp"/>


    <script>

    $(function() {
    	$("#sub").on("click", function() {
    		let id = "${id}"
    		if(!id) {
                alert("로그인 후 사용해주세요.");
                return false;
            }   else {
                return true;
            }
    })
    })

    </script>
    </div>



</body>

</html>