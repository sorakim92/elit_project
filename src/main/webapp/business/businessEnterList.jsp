<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>sample</title>
    
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<!-- footer header css -->
	<link rel="stylesheet" href="css/headFooter.css">
	
</head>	  	
	
<style>
.logo {
    width:  300px;
    height: 50px; 
    float : center;
    
}

.article_text {
    float:left;
    text-align: center;
    width:1200px;
    height:120px;

}
.btn3 {
    text-align: center;
    background-color: orange;
    width:80px;
    height:50px;
    color:black;
    border-color: orange;
   
}
.btnloc{
    text-align: center;
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

section {
	width:1000px;
	height:auto;
	min-height: 450px;
	/*background-color:#92a8d1;*/
	text-align:center;
}
</style>




<body>
<div class="wrapper"><br> 
    <header class="width:200%; height:80px;">
        <div class="logo" style=" cursor: pointer;" onclick="location.href='mainPage.do';">
    	<img src="<c:url value='/img/logo.png'/>" width="200px" height="80px" alt="로고"/>  
	    </div>      
    </header>
        


 <form name="frm" method="post" action="businessEnterList.do">
 <br><br>

<section><br>	
    <font size="4"><b>입점신청내역</b></font><br>
  <div class="text-align:left" >
   
    <div style="width:100%; float:left; margin-top:20px; font-size:13px;">
    <table style="width:100%;" class="table table-hover">
        <colgroup>
            <col width="*" />
            <col width="17%" />
            <col width="5%" />
            <col width="12%" />
            <col width="12%" />
            <col width="17%" />
            <col width="5%" />
            <col width="12%" />
          
        </colgroup>
         <tr>
            <td>매장이름</td>
            <td>신청지역</td> 
            <td>메뉴 카테고리</td>
            <td>휴대폰</td>
            <td>이메일</td>
            <td>매장주소</td>
            <td>문의자 이름</td>
            <td>기타사항</td> 
        </tr>
        
        <c:forEach var="result" items="${list }">
        <tr>
            <td>${result.storename }</td> 
            <td>${result.region }</td>
            <td>${result.category }${result.category2 }${result.category3 }</td> 
            <td>${result.phone }</td> 
            <td>${result.email }</td> 
            <td>${result.address }</td>
            <td>${result.name }</td> 
            <td>${result.inquire }</td>  
        </tr>
        </c:forEach>
    </table> 
 </div>
 </div>
</section>
    

<br><br><br>
<div class="btnloc">
    <button type="button"class="btn3" id="btn3"><a href="businessEnterWrite.do">입점문의 </a></button>
</div>
</form> <br><br>
<footer>
      <%@ include file = "../include/main_footer.jsp" %>
</footer>

</div>
</body>
</html>