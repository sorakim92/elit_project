<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>한식</title>

 	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
    <!--  	부트스트랩 -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<!-- footer header css -->
	<link rel="stylesheet" href="css/headFooter.css">

</head>

<style>
@font-face {
    font-family: "hanna";
    src: url("fonts/BMHANNAAir_otf.otf");
}
@font-face {
    font-family: "jua";
    src: url("fonts/BMJUA_otf.otf");
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

.search {
    width: 500px;
    height: 50px;
    float : left;
    margin: 20px 0 0 0;
    text-align: right;
}


section {
	width:1000px;
	height:auto;
	/*background-color:#92a8d1;*/
	text-align:center;
    min-height: 550px;
}



.nav1 {
    float:left;
    width:1000px;
}
.nav1 li{
    width:90px;
    font-size:13px;
    list-style:none;
    float:left;
    border-bottom: 1px solid #ccc;
    padding-left:10px;
    padding-right:10px;
}
.nav2 {
    float:left;
}
.nav2 li{
    width:110px;
    font-size:12px;
    list-style:none;
    float:left;
    padding-left:10px;
    padding-right:10px;
    margin-top: -20px;
}
.cate_tbl2 td {
    text-align: left;
    border-bottom: 1px solid #ccc;
    padding-top: 20px;
}
</style>
<body>
<div class="wrapper">
    <div class="main" style="min-height: 100%; padding-bottom:100px; flex:1;">
    <header class="width:100%; height:50px;">
         <%@include file = "../include/main_header.jsp" %>
    </header>
        
    <nav>
        <div style="margin:30px 0 0 0; ">
            <%@include file = "../include/cate_subTab.jsp" %>
       </div>
       <div style="margin:0 0 10px 0;">
        <ul class="nav2">
            <li>추천순</li>
            <li>가까운순</li>
            <li>찜많은순</li>
            <li>*</li>
            <li>*</li>
        </ul>
        </div>
    </nav>
        
  	<section>
  	<article class="">	
    	<table style="margin-top: 10px; width:100%; " class="cate_tbl2"> 
           <colgroup>
               <col width="20%"/>
               <col width="30%"/>
               <col width="20%"/>
               <col width="30%"/>
           </colgroup>
           <tr>
           
           		<c:set var="number" value="1" />	
           		<c:forEach var="result" items="${list }" varStatus="status">
           		
           		<td>
               	   <div style="width:120px; height: 120px; border: 1px solid #f8cacc; border-radius: 2em;
                   margin:5px 20px 10px 20px; text-align: center;
                   cursor: pointer;" onclick="location.href='menuList.do?storeunq=${result.storeunq}';">
                       <img src="<c:url value='/img/addpic.png'/>" alt="업체대표사진" width="100" height="100" name="" id="">
                   </div>
               	</td>
               	<td>
                   <span style="font-weight: bold; cursor: pointer;" onclick="location.href='menuList.do?storeunq=${result.storeunq}';"> ${result.storename }</span>
                          
                       <div style="font-size:12px; text-align: left; padding-left: 10px;">
                           <span><img src="<c:url value='/img/star.png'/>" style="width:20px; height:20px; ">5.0</span>
                           <span style="padding:0 10px 0 10px">배달비: ${result.fee }원</span>
                       </div>
            
	                   <div style="font-size:13px; text-align: left; padding-left: 10px;">
	                       <span>대표메뉴</span><br>
	                       <span>대표한줄평</span>
	                   </div>
             	 </td>
             	 
	             	 <c:if test="${number%2 == 0 }">
	             	 	</tr></tr>
	             	 </c:if>
	             	 <c:if test="${number%2 != 0 && status.last}">
	             	 	<td></td><td></td>
	             	 </c:if>
	               	<c:set var="number" value="${number+1 }" />
               	</c:forEach>
           </tr>
        </table>
    </article>
    </section>
    </div>
    <footer>
       <%@include file = "../include/main_footer.jsp" %>
    </footer>
</div>
</body>
</html>
