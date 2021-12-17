<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>

 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>리뷰게시판</title>
	<link rel="stylesheet" href="css/css.css">	    
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
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


section {
	width:1000px;
	height:auto;
	min-height: 450px;
	/*background-color:#92a8d1;*/
	text-align:center;
}




</style>
<script>

$(function(){
	
	$("#btn_write").click(function(){
		/* 추후 추가 : 관리자 아이디인지 세션확인  */
		location.href = "OrderReviewWrite.do";
	})
	
})


</script>
<body>
<div class="wrapper">
    <div class="main" style="min-height: 100%; padding-bottom:100px; flex:1;">
    <header class="width:100%; height:50px;">
       <%@include file = "../include/main_header.jsp" %>
    </header>
        
    <nav class="navbar">
    	<div>
        	<ul class="gnb">
	            <li><a href="#">마이페이지</a></li>
	            <li><a href="#">주문내역</a></li>
	            <li><a href="#">회원정보수정</a></li>
	            <li><a href="#">문의내역</a></li>
	            <li><a href="#">찜목록</a></li>
	            <li><a href="#">리뷰관리</a></li>
	            <li><a href="#">ADMIN</a></li>
        </ul>
    	</div>
	</nav>
        
   <section >
        <div style="width:100%; height:auto; padding:10px;">
            <div style="width:50%; text-align: left; 
                        font-family: jua; float:left;">
                리뷰게시판
            </div>          
        </div>
		         
        <div style="width:100%; float:left; margin-top:20px; font-size:16px;">
            <table style="width:100%;" class="table table-hover">
                <colgroup>
                    <col width="*" />
                    <col width="20%" />
                    <col width="10%" />
                    
                  
                </colgroup>
                 <tr>
                    <td>Review</td>
                    <td>아이디</td>                    
                    <td>등록일</td>
                </tr>
                
                <c:forEach var="result" items="${list }"> 
                <tr>
                    <td>
                    	<a href="OrderReviewDetail.do?reviewindex=${result.reviewindex }">${result.rcontent }
                    </a></td>
                    <td>${result.userid }</td> 
                    <td>${result.rdate }</td> 
                </tr>
                </c:forEach> 
            </table>
          
        </div>
    </section>
 
 <!-- 글쓰기 버튼부분 (관리자)-->

    <div class="" style=" width: 100%;
    height: 50px;
    margin: 20px 50px 0 0;
    text-align: right;">
        <button type="button" id="btn_write" name="btn_write"
        class="btn btn-outline-warning" style="border-color: #f8cacc; color: black;">
        글쓰기</button>
    </div>
    
    
<!-- 페이징 -->
    <div style=" font-size:10px; " >
    <nav aria-label="Page navigation example" 
    class="d-flex justify-content-center"
    style="display:inline-block;">
        <ul class="pagination" >
          <li class="page-item">
            <a class="page-link" href="#" aria-label="Previous">
              <span aria-hidden="true">&laquo;</span>
            </a>
          </li>
          <li class="page-item"><a class="page-link" href="#">1</a></li>
          <li class="page-item"><a class="page-link" href="#">2</a></li>
          <li class="page-item"><a class="page-link" href="#">3</a></li>
          <li class="page-item">
            <a class="page-link" href="#" aria-label="Next">
              <span aria-hidden="true">&raquo;</span>
            </a>
          </li>
        </ul>
      </nav>
      </div>

</div>
    <footer>
       <%@include file = "../include/main_footer.jsp" %>
    </footer>
</div>
</body>
</html>
