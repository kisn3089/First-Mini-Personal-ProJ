<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 메뉴바 -->
    <div class="com">
        <hr class="stagger-item">
        <div class="container mt-2">
            <div class="menu stagger-item">
            <c:choose>
             <c:when test="${empty id }">
                <a href="/login">
                    <span class="login" style="text-decoration:none; color:black"><b>Login</b></span>
                </a>
                   </c:when>
                   <c:otherwise>
	        <a href="/logout">
                    <span class="login" style="text-decoration:none; color:black"><b>Logout</b></span>
                </a>
	      </c:otherwise>
	   </c:choose>    
                <a href="/exhibit">
                    <span class="exhibit" style="text-decoration:none; color:black"><b>exhibit</b></span>
                </a>
                <a href="/myjoin">
                    <span class="myjoin" style="text-decoration:none; color:black"><b>Join</b></span>
                </a>
                <c:choose>
             <c:when test="${empty id }">
                <a href="/art">
                    <span class="art" style="text-decoration:none; color:black"><b>Art</b></span>
                </a>
                 </c:when>
                   <c:otherwise>
                    <a href="/myart">
                    <span class="art" style="text-decoration:none; color:black"><b>MyArt</b></span>
                </a>
                </c:otherwise>
	   </c:choose>    
            </div>
 
                <h2 class="cronos stagger-item" onclick="location.href='/'">Kairos</h2>

            <hr class="stagger-item">
        </div>
    </div>