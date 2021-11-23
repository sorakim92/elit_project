<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>

<div class="logo">
    <img src="<c:url value='/img/logo.png'/>" width="200px" height="100px" alt="로고"/>
</div>
<div class="search">
<!-- 돋보기누를때 input 박스 활성화 -->
    <input type="text" name="" id="" class=""> 
    <img src="<c:url value='/img/mag.png'/>" width="15" height="15" alt="돋보기"/>
</div> 
<!-- 기능: 로그아웃상태에서는 로그인 버튼,  로그인상태에서는 마이페이지 | 로그아웃 -->
<div class="login">
    <button type="button" class="btn btn-outline-warning" style="border-color: #f8cacc; color: black;">로그인</button>
</div>