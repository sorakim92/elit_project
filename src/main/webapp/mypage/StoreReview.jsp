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
  	 <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<!-- footer header css -->
	<link rel="stylesheet" href="css/headFooter.css">
	
  
</head>
<script>
function fn_reply(reviewindex) {
	var url = "popReviewAnsWrite.do";
	window.open(url,"popup","width=500,height=450");
}
</script>
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
        <div class="logo">
    		<img src="<c:url value='/img/logo.png'/>" width="200px" height="100px" alt="로고"/>
            <h4>사장님광장</h4>
        </div>
        <div class="search">
            <%@include file = "../include/main_header2.jsp" %>
        </div> 
       
    </header>
        
    <nav>
        <div class="">
            <a href="progressorderList.do"><font size="4" color="black">주문관리 |</font></a>
            <a href="menuList.do"><font size="4">메뉴관리 |</font></a>
            <a href="adWrite.do"><font size="4" color="black">광고신청/관리 |</font></a>
            <a href="b_consumerList.do"><font size="4" color="black">커뮤니티</font></a>
        </div>
    </nav>
        
    <form name="frm" id="frm" action="storeReviewList.do" > 
     <section>
        <div style="text-align:left;" >
            <font size="5">메뉴관리</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <a href="menuList.do"> <font size="4" color="black" > &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;메뉴편집 |</font> </a> 
            <a href="storeReviewList.do"><font size="4" >&nbsp;&nbsp; 리뷰관리</font></a>
        </div>
        <br>

    <div style="width:100%;">
        <div class="" style="text-align:left; float:left; width:25%;">
            <img src="<c:url value='/img/nud.png'/>"  width="200px" height="100px" alt=""/>
        </div>        
        <div style="float:left;  width:25%;">
            <span style=""> 최근 리뷰  *개</span><br>
            <span size="3">평균 별점(최근 6개월 기준)</span><br>
            <span size="3">(최근 6개월 기준)</span><br><br>
            <font size="5">4.6</font>
        </div>    
        
        <div style="float:left;  width:25%;">
            
           
            <font> 5점</font><br>
                   4점<br>
                   3점<br>
                   2점<br>
                   1점<br>
        </div>

        <!--  <div style="text-align:right; float:left;  width:25%;"  >
                <img src="../img/stat.PNG" width="200px" height="150px" alt="">
        		</div><br>-->

    </div><br><br><br><br><br><br><br>
		
        <div style="text-align:right;">
            <input type="text" value="">
            <button> 조회</button>
        </div><br>
    
        
         <div style="width:100%; float:left; margin-top:20px; font-size:13px;">
            <table style="width:100%;" class="table table-hover">
                <colgroup>
                    <col width="15%" />
                    <col width="15%" />
                    <col width="5%" />
                    <col width="20%" />
                  	<col width="15%" />
                </colgroup>
                 <tr>
                    <td>전체</td>
                    <td>리뷰내용</td>
                    <td>답변여부</td> 
                    <td>날짜</td>
                    <td></td> 
                </tr>
                  <c:forEach var="result" items="${list }">
                <tr>
                    
                    <td>
                    	<a href="OrderReviewDetail.do?reviewindex=${result.reviewindex }">${result.userid }<br>
                    </a></td>
	  				<td>${result.rcontent }</td>
	  				<td>N</td>
	  				<td>${result.rdate }</td>
                    <td><button type="button" onclick="fn_reply('${result.reviewindex}')" >답변하기</button></td>  
                </tr>
                </c:forEach>
            </table>
          
        </div>
        
        
        
      </section>
      </form>
    
       
    </div>
  	
    
   <footer>
      <%@ include file = "../include/main_footer.jsp" %>
    </footer>
</div>
</body>
</html>
