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
        
.container {
    margin: 0 auto;
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

.container-fluid mt-3 {
    text-align: center;
}

* {
    font-family: 'Dongle', sans-serif;
    font-family: 'Gowun Batang', serif;
    display: 5;
}

.bg {
    background-color: rgb(243, 236, 230);
    z-index: 2;
}

.text-black rounded {
    float: left;

}

.waste {
    padding-top: 20px;
    padding-left: 500px;
}

.waste1 {
    padding-top: 5px;
    padding-left: 600px;
    padding-bottom: 7px;
}

.insta {
    padding-left: 550px;
}

.insta1 {
    padding-left: 650px;
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
    margin-top: 120px;
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

.red {
    width: 65px;
    height: 450px;
    background-color: rgb(255, 0, 0);
    margin-left: 1465px;
    border-radius: 10px 10px 10px 10px;

}

.blue {
    width: 470px;
    height: 65px;
    background-color: blue;
    margin-left: 350px;
    margin-top: 618px;
    border-radius: 10px 10px 10px 10px;

}

.green {
    width: 600px;
    height: 65px;
    background-color: green;
    margin-left: 1090px;
    margin-top: 237px;
    border-radius: 10px 10px 10px 10px;

}

.orange {
    width: 65px;
    height: 300px;
    background-color: rgb(230, 134, 56);
    margin-left: 440px;
    margin-top: 120px;
    border-radius: 10px 10px 10px 10px;
}

.black {
    width: 600px;
    height: 65px;
    background-color: rgb(17, 16, 16);
    margin-left: 350px;
    margin-top: 358px;
    border-radius: 10px 10px 10px 10px;
}

.ex {
    width: 25px;
    height: 25px;
    margin-bottom: 5px;
    cursor: pointer;
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
    background: #F3ECE6;
    transition: all 1s ease-in;
}

.inline {
    display: inline-block;
}

.audio:hover,
audio:focus,
audio:active {
    -webkit-box-shadow: 15px 15px 20px rgba(0, 0, 0, 0.4);
    -moz-box-shadow: 15px 15px 20px rgba(0, 0, 0, 0.4);
    box-shadow: 15px 15px 20px rgba(0, 0, 0, 0.4);
    -webkit-transform: scale(1.05);
    -moz-transform: scale(1.05);
    transform: scale(1.05);
    background: #444;

}


audio {
    -webkit-transition: all 0.5s linear;
    -moz-transition: all 0.5s linear;
    -o-transition: all 0.5s linear;
    transition: all 0.5s linear;
    -moz-box-shadow: 2px 2px 4px 0px #006773;
    -webkit-box-shadow: 2px 2px 4px 0px #006773;
    box-shadow: 2px 2px 4px 0px #006773;
    -moz-border-radius: 7px 7px 7px 7px;
    -webkit-border-radius: 7px 7px 7px 7px;
    border-radius: 7px 7px 7px 7px;
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
                mydiv.style.marginLeft = "60%";

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
    <!-- 작품 시작 -->
    <div class="bg">
        <div style="float: left; width: 400px; height: 3550px; background-color: rgb(0, 0, 0); opacity: 0.9;">
            
        </div>
        <div style="float: right; width: 400px; height: 3550px; background-color: rgb(0, 0, 0); opacity: 0.9;"></div>


        <div class=" text-black rounded"></div>
        <h4 class="waste1 stagger-item">" 22년 2월달에,</h4>

        <h5 class="insta1 stagger-item">사슴? "</h5>
        <hr class="stagger-item">

            <div class="container-fluid mt-3">
                <img src="${path}/fileupload/123.jpg" class="rounded stagger-item " style="width: 600px;  float: left; margin-left: 270px;">
                <br><br><br><br>
            </div>
            <div style="padding-top: 480px; text-align: center;">
                <hr class="stagger-item">
                <h3 class="stagger-item">Art -</h3>
                <h5 class="stagger-item">- .</h5>
            </div>


        <img src="${path}/resource/image/art3.jpg" class="rounded stagger-item"
            style="width: 800px; height: 600px; float: left; padding-top: 50px;">
        <div class="red"></div>


        <img src="${path}/resource/image/art4.jpg" class="rounded stagger-item"
            style="width: 800px; height: 600px; float: right; padding-top: 50px;">
        <div class="blue"></div>
        <img src="${path}/resource/image/art5.jpg" class="rounded stagger-item"
            style="width: 800px; height: 600px; float: left; padding-top: 50px;">
        <div class="green"></div>
        <img src="${path}/resource/image/art6.jpg" class="rounded stagger-item"
            style="width: 800px; height: 600px; float: right; padding-top: 50px;">
        <div class="orange"></div>
        <div class="black"></div>
        <br><br><br><br><br><br>
        <div style="text-align: center;">
            <hr class="stagger-item">
            <h3 class="stagger-item"> -</h3>
            <h5 class="stagger-item">---.</h5>
            <br>

<!--              <audio autoplay class="audio">
                <source src="artmusic.ogg" type="audio/ogg">
                <source src="artmusic.mp3" type="audio/mp3">
              </audio> -->
              
<!--  <iframe src="../silence.mp3" allow="autoplay" id="audio" style="display:none"></iframe>

<audio id="audio" autoplay>

<source src="../artmusic.mp3">

</audio>  -->

        </div>
<jsp:include page="footer.jsp"/>

    <script>
    
/*     <c:forEach var="element" items="${list}" varStatus="status">
    
    ${element}   
    
</c:forEach> */

/*     $(function() {
        function queryWrite() {
           $.ajax({
             async:false,
             type:"GET",
             url:"http://localhost:8090/myart2",
             contentType : 'application/json; charset=UTF-8',
             success: function(data, textStatus) {
                console.log(data);
                var lettEle = "";
                for(let uplo of data) {
                   lettEle += '<tr>';
                   lettEle += '<td>'+'<img src="${path}/fileupload/'+ uplo.file_name+'"width=280 height=350/>'+'</td>'
                   
                   lettEle += '</tr>'
                }
                
             
                
                $("tbody>tr").detach();
                $("table").append(lettEle);
             }
          });  
        }
        queryWrite();
     }); */

/*  	$(function() {
   		function queryWrite() {
   			$.ajax({
     			async:false,
     			type:"GET",
     			url:"http://localhost:8090/files",
     			contentType : 'application/json; charset=UTF-8',
     			success: function(data, textStatus) {
 					let model=data.filename();
     			}
     		});  
   		}
   		queryWrite();
   	}); */
     </script>
</body>

</html>