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
    <link rel="stylesheet" type="text/css"
    media="screen" href="${path}/resource/image/animation.css"/>
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
        .mt-2 p-3 bg-white text-black rounded {
            position: fixed;
        }

        .container-fluid mt-3 {
            text-align: center;
        }

        * {
            font-family: 'Dongle', sans-serif;
            font-family: 'Gowun Batang', serif;
            display: 5;
        }

        .form-control {
            width: 300px;
        }

        .container mt-3 {
            width: 400px;
        }

        .com {
            left: 0;
            top: 0;
            width: 1965px;
            position: sticky;
            background-color: white;
        }

        .footer {
            bottom: 0px;
            background: white;
            color: black;
            text-align: center;
            font-size: small;
            margin-top: 340px;
        }

        .footer>p,
        h5 {
            margin: 0px 0px 0px 0px;
            line-height: 120%;
        }

        .footer {
            position: sticky;
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

        .inline {
            display: inline-block;
        }
    </style>
<%--         <c:choose>
	<c:when test="${result=='loginFailed' }">
	  <script>
	    window.onload=function(){
	      alert("아이디나 비밀번호가 틀립니다.다시 로그인 하세요!");
	    }
	  </script> --%>
<%-- 	</c:when>
</c:choose>  --%>
</head>

<body>
    <jsp:include page="header.jsp"/>
    <br><br><br>

        <!-- 로그인바 -->
        <div class="container mt-3" style="width: 320px; padding-top: 30px;">
                <h3 class="stagger-item" style="text-align:center;">로그인</h3>
                
            <form action="login" id="form" method="post">
                <div class="mb-3 mt-3 stagger-item">
                    <input type="text" class="form-control" id="id" placeholder="아이디를 입력하세요." name="id">
                </div>
                <div class="mb-3 stagger-item">
                    <input type="password" class="form-control" id="password" placeholder="비밀번호를 입력하세요." name="password">
                </div>
                <div class="form-check mb-3 stagger-item" id="message" style="display: none;">
      				<label style="color: red; text-align: center;">아이디 혹은 비밀번호를 확인해주세요.</label>
     			 </div>
                <button type="submit" class="pic btn btn-dark stagger-item" id="log" name="log" style="width: 300px; ">로그인</button>
                <br>
            </form>
            <button type="submit" class="pic btn btn-dark stagger-item" id="jo" onclick="location.href='/myjoin'"
                style="margin-top: 15px; width: 300px;">회원가입</button>

    </div>
    <!-- footer bar -->
<jsp:include page="footer.jsp"/>
    
<script>

$().ready(function () {
    $("#log").click(function () {
      if ($('#id').val() == "") {
        $('#id').focus();
        alert("아이디를 확인해주세요."); 
        return false;
      } else if($('#password').val()==""){
        $('#password').focus();
        alert("비밀번호를 확인해주세요."); 
        return false;
      }
    });
   })

               $(function(){
            	let login = "<c:out value='${login}'/>";
            	console.log(login);
            	if(login=="false") {
            		$('#message').show();
            	} else {
            		$('#message').hide();
            	}
            }); 
        

    </script>





</body>

</html>