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
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
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
.logo1 {
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

<script>

$(function(){
	
	$("#btn_menu").click(function(){
		/* 추후 추가 : 관리자 아이디인지 세션확인  */
		location.href = "menuWrite.do";
	})
	
})
$(function(){
	
	$("#btn_modify").click(function(){
		
		location.href = "menuModify.do?menuunq=${vo.menuunq}";
	})
	
})


</script>
<body>
<div class="wrapper">
    <div class="main" style="min-height: 100%; padding-bottom:100px; flex:1;">
    <header class="width:100%; height:50px;">
        <div class="logo" style=" cursor: pointer;" onclick="location.href='mainPage.do';">
    	<img src="<c:url value='/img/logo.png'/>" width="200px" height="100px" alt="로고"/>
	     <h4>사장님광장</h4>
        </div>
        <div class="search">
      
            <%@include file = "../include/main_header2.jsp" %>
        </div> 
        <!-- 기능: 로그아웃상태에서는 로그인 버튼,  로그인상태에서는 마이페이지 | 로그아웃 -->
        
    </header>
        
    <nav>
        <div class="">
            <a href="progressorderList.do"><font size="4" color="black">주문관리 |</font></a>
            <a href="menuList.do"><font size="4">메뉴관리 |</font></a>
            <a href="adWrite.do"><font size="4" color="black">광고신청/관리 |</font></a>
            <a href="b_consumerList.do"><font size="4" color="black">커뮤니티</font></a>
        </div>
    </nav>
        
    <form name="frm" id="frm" action="MenuList.do" > 
     <section>
        <div style="text-align:left;" >
            <font size="5">메뉴관리</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <font size="4" color="blue"><a href="menuList.do">메뉴편집 |</a></font>
            <a href="storeReviewList.do"><font size="4" color="black">&nbsp;&nbsp; 리뷰관리</font></a>
        </div>
        <br>
        <div class="" >     
            <div style="text-align:right;">
                    <button type="button" id="btn_menu" name="btn_menu"><a href="menuWrite.do"><font size="4" color="black"> 메뉴 추가</font></a></button><br><br>
            </div>
        </div>
        <br>
        <div style="text-align:left;" >  
          
            <table style="width:700px; text-align:center;">
	  		<colgroup>
	  			<col width="15%"/>
	  			<col width="40%"/>
	  			<col width="30%"/>
	  			<col width="10%" />
	  			<col width="5%" />
	  						
	  		</colgroup>
	  		<tr>
	  			<th>번호</th>
	  			<th>이미지</th>
	  			<th>메뉴이름</th>
	  			<th>가격</th>
	  			<th>구분</th>
	  			
	  		</tr>
        <c:forEach  var="result" items="${list }">
	  		<tr>
	  			<td>${result.menuunq }</td>
	  			<td>${result.menuimage }</td>
	  			<td><a href="menuModify.do?menuunq=${result.menuunq }">${result.menuname }
                    </a></td>
	  			<td>${result.price }</td>
	  			<td>${result.menukeyword }</td>
	  		</tr>		  		
	  	</c:forEach>
	  	</table>               
          
                    
        </div>
	</section>
    </form>
    
    <footer>
      <%@ include file = "../include/main_footer.jsp" %>
    </footer>
</div>
</body>
</html>
