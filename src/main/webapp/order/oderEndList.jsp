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
   
   	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
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

</style>
<body>
<div class="wrapper">
    <div class="main" style="min-height: 100%; padding-bottom:100px; flex:1;">
   <header class="width:100%; height:50px;">
        <div class="logo" style=" cursor: pointer;" onclick="location.href='mainPage.do';">
    	<img src="<c:url value='/img/logo.png'/>" width="200px" height="100px" alt="로고"/><br><br>
        <span style="font-size: 20px;">사장님 광장</span>
        </div>
        <div class="search">
           
            <a href><font size="4" color="black">마이페이지</font></a>
            <a href><font size="4" >사장님 광장</font></a>
        </div> 
        <!-- 기능: 로그아웃상태에서는 로그인 버튼,  로그인상태에서는 마이페이지 | 로그아웃 -->
        <div class="login">
            <button type="button" class="btn btn-outline-warning" style="border-color: #f8cacc; color: black;">로그인</button>
        </div>
    </header>
        
    <nav>
        <div class="">
          
            <a href="progressorderList.do"><font size="4" >주문관리 |</font></a>
            <a href="menuList.do"><font size="4" color="black" >메뉴관리 |</font></a>
            <a href="adWrite.do"><font size="4" color="black" >광고신청/관리 |</font></a>
            <a href="b_consumerList.do"><font size="4" color="black" >커뮤니티</font></a>
        </div>
    </nav>
        
    <form name="frm" id="frm" action="orderendList.do" >
     <section>
        <div style="text-align:left;" >
            <font size="5">주문관리</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <a href="progressorderList.do"><font size="4" color="black">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;접수대기/처리중 주문 | </font></a>
            <a href="orderendList.do"><font size="4" color="blue">&nbsp;&nbsp;&nbsp; 완료된 주문 조회</font></a>
        </div><br>
        <div style="text-align:right;">   
           <font size="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  </font>
            <select name="s_field">
                <option>선택</option>
                <option value="menuname"
                	<c:if test="${s_field=='menuname' }">selected</c:if> 
                	>메뉴</option>
                <option value="method" 
                	<c:if test="${s_field=='method' }">selected</c:if> 
                	>결제방법</option>
                <option value="phone" 
                	<c:if test="${s_field=='phone' }">selected</c:if> 
                	>연락처</option>
            </select>
            <input type="text" name= "s_text" id="s_text" value="${s_text }"
            placeholder="검색어를 입력하세요"> 
            <button>검색</button>
        </div>    
        <br>
        <div style="width:100%; float:left; margin-top:20px; font-size:13px;">
            <table style="width:100%;" class="table table-hover">
                <colgroup>
                    <col width="*" />
                    <col width="10%" />
                    <col width="30%" />
                  	<col width="5%" />
                  	<col width="25%" />
                  	<col width="10%" />
                </colgroup>
                 <tr>
                    <td>주문접수</td>
                    <td>배달완료</td> 
                    <td>메뉴</td>
                    <td>결제구분</td>
                    <td>배달지/연락처</td>
                    <td>요청사항</td> 
                </tr>
                
                <c:forEach var="result" items="${list }">
                <tr>
                    <td >${result.rdate }</td>
                    <td></td> 
                    <td> ${result.menuname } </td>
                    <td>${result.method }</td> 
                    <td>${result.addr }/${result.phone }</td> 
                    <td>${result.comment1 }${result.comment2 }</td>  
                </tr>
                </c:forEach>
            </table>
          
        </div>
    </section>
        
    <div style="text-align:center;" >
        <a href><font size="4" >1</a></font>
        <a href><font size="4" color="black">2</a></font>
        <a href> <font size="4" color="black">3</a></font>
        <a href><font size="4" color="black">4</a></font>
        <a href><font size="4" color="black">5</a></font>
        <a href><font size="4" color="black">다음</a> </font>
    </div>
   <footer>
      <%@ include file = "../include/main_footer.jsp" %>
    </footer>
</div>
</body>
</html>
    