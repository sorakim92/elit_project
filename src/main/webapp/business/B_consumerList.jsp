<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>        
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>sample</title>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
  	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  	<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
  	<link rel="stylesheet" href="css/headFooter.css">
  	    
   
   
</head>
<style>
@font-face {
    font-family: "hanna";
    src: url("../fonts/BMHANNAAir_otf.otf");
}
@font-face {
    font-family: "jua";
    src: url("../fonts/BMJUA_otf.otf");
}
html{
    height: 100%;
}
body {
    font-size: 16px;
    font-family: hanna;
    padding-left:100px;
    height:100%;
}
header {
	width:1000px;
	height:100px;
	/*background-color:#ffcc99;*/
	/*line-height:5.0;*/
}
nav {
	width:1000px;
	height:100px;
	/*background-color:#f8cacc;*/
	text-align:center;
	line-height:3.5;
}
.wrapper {
    width: 1000px;
    min-height: calc(100vh-70px);
    position: relative;
    /*background-color: beige;*/
    padding: 10px;
    flex-direction: column;
    display: flex;
    margin: auto;
}
.logo {
    width:  300px;
    height: 50px; 
    float : left;
}
.search {
    width: 500px;
    height: 50px;
    float : left;
    margin: 20px 0 0 0;
    text-align: right;
}
.login {
    width: 150px;
    height: 50px;
    float: left;
    margin: 20px 50px 0 0;
    text-align: right;
}


section {
	width:1000px;
	height:900px;
	/*background-color:#92a8d1;*/
	text-align:center;
}


.footer {
	width:100%;
    height:100px;
	background-color:#ccc;
    position: absolute;
    bottom: 0;
    left: 0;
}
.ft_ul {
    width:100%;
    height:50px;
}
.ft_info {
    width:100%;
    height:50px;
    text-align: center;
    font-size:14px;
    padding-bottom:20px;
}
.ul1{
    float:left;
    padding-top:7px;
}

.ul1 li{
    font-size:14px;
    list-style:none;
    float:left;
    border-left:1px solid #ccc;
    padding-left:10px;
    padding-right:10px;
}

.ul2{
    float:right;
    padding-top:7px;
}

.ul2 li{
    font-size:14px;
    list-style:none;
    float:left;
    border-left:1px solid #ccc;
    padding-left:10px;
    padding-right:10px;   
}
.th {
    text-align:left;
}
.btn3 {
    width:120px;
    height:40px;
    color:white;
    
}
</style>
<body>
<div class="wrapper">
    <div class="main" style="min-height: 100%; padding-bottom:100px; flex:1;">
    <header class="width:100%; height:50px;">
        <div class="logo" style=" cursor: pointer;" onclick="location.href='mainPage.do';">
    	<img src="<c:url value='/img/logo.png'/>" width="200px" height="100px" alt="로고"/>
	    <h4>사장님광장</h4>
	    </div>
        <div class="search">
            <a href><font color="black">마이페이지</font></a>
            <a href>사장님 광장</a>
        </div> 
        <!-- 기능: 로그아웃상태에서는 로그인 버튼,  로그인상태에서는 마이페이지 | 로그아웃 -->
        <div class="login">
            <button type="button" class="btn btn-outline-warning" style="border-color: #f8cacc; color: black;">로그인</button>
        </div>
    </header>
        
    <nav>
        <div class="">
          
            <a href="progressorderList.do"><font size="4" color="black" >주문관리 |</font></a>
            <a href="menuList.do"><font size="4" color="black" >메뉴관리 |</font></a>
            <a href ="adWrite.do"><font size="4" color="black" >광고신청/관리 |</font></a>
            <a href ="b_consumerList.do"><font size="4"  >커뮤니티</font></a>
        </div>
    </nav>
        
    
     <section>
        <div style="text-align:left;" >
            <font size="5">블랙 컨슈머 관리</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </div>
         <form name="frm" method="post" action="b_consumerList.do">
        <div style="text-align:right;">   
           <font size="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  </font>
            <select name="s_field">
                <option>선택</option>
                <option value="userid"
                	<c:if test="${s_field=='userid' }">selected</c:if> 
                	>userid</option>
                <option value="b_group" 
                	<c:if test="${s_field=='b_group' }">selected</c:if> 
                	>분류키워드</option>
                <option value="rdate" 
                	<c:if test="${s_field=='rdate' }">selected</c:if> 
                	>날짜</option>
            </select>
            <input type="text" name= "s_text" id="s_text" value="${s_text }"
            placeholder="검색어를 입력하세요"> 
            <button>검색</button>
            </form>
        </div>
      
        <br>
        
       
        <div style="width:100%; float:left; margin-top:20px; font-size:13px;">
            <table style="width:100%;" class="table table-hover">
                <colgroup>
                    <col width="20%" />
                    <col width="20%" />
                    <col width="20%" />
                  	<col width="20%" />
                  	<col width="20%" />
                 
                </colgroup>
                 <tr>
                    <td>글번호</td>
                    <td>분류</td> 
                    <td>아이디</td>
                    <td>이유(한줄평)</td>
                    <td>작성일</td>
                  
                </tr>
                
                <c:forEach var="result" items="${list }">
                <tr>
                    <td>
                    ${result.commindex }</td>
                    <td>${result.bgroup }</td> 
                    <td>${result.userid }</td>
                    <td>${result.ment }</td> 
                    <td>${result.rdate }</td>  
                </tr>
                </c:forEach>
            </table>
          
        </div>
        
       
  
    </section>
  
    <div style="text-align:center;" >
        <a href><font size="4" >1</font></a>
        <a href><font size="4" color="black">2</font></a>
        <a href><font size="4" color="black">3</font></a>
        <a href><font size="4" color="black">4</font></a>
        <a href><font size="4" color="black">5</font></a>
        <a href><font size="4" color="black">다음</font></a> 
    </div>
    
    <div style="text-align:right;" >
    <button type="button" class="btn3" style="background-color:orange" ><a href="b_ConsumerListWrite.do">글쓰기</a></button>
    </div>
	
    <footer>
      <%@ include file = "../include/main_footer.jsp" %>
    </footer>
</div>
</body>
</html>
