<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>

 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공지사항</title>
	    
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
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

.login {
    width: 70px;
    height: 50px;
    float: right;
    margin: 20px 50px 0 0;
    text-align: right;
}


section {
	width:1000px;
	height:auto;
	min-height: 450px;
	/*background-color:#92a8d1;*/
	text-align:center;
}


.footer {
	width:100%;
    height:100px;
	background-color:#ccc;
     clear:both;
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
.article_nav {
    display: inline-block;

}
.article_nav li {
    font-size:16px;
    list-style:none;
    float:left;
    padding-left:10px;
    padding-right:10px;
    padding-bottom: -20px;
}
</style>
<script>

$(function(){
	
	$("#btn_write").click(function(){
		/* 추후 추가 : 관리자 아이디인지 세션확인  */
		location.href = "nboardWrite.do";
	})
	
})


</script>
<body>
<div class="wrapper">
    <div class="main" style="min-height: 100%; padding-bottom:100px; flex:1;">
    <header class="width:100%; height:50px;">
       <%@include file = "../include/main_header.jsp" %>
    </header>
        
    <nav>
        <div style="width:100%; 
                    height:50px; border-bottom: 1px solid #ccc;">
            <ul class="article_nav">
                <li><a href="nBoardList.do">공지사항</a></li>
                <li>FAQ</li>
                <li>문의하기</li>
            </ul>
       </div>
    </nav>
        




    <section >
        <div style="width:100%; height:auto; padding:10px; margin-top:-40px;">
            <div style="width:50%; text-align: left; 
                        font-family: jua; float:left;">
                공지사항
            </div>
            <form name="frm" method="post" action="nBoardList.do">
            <div style="float:left; width:50%; background:pink; text-align:right;">
            	 <select name="s_field" style="font-size:15px;">
            	 	<option value="title"
            	 		<c:if test="${s_field=='title' }">selected</c:if> 
            	 		>제목</option>
            	 	<option value="content"
            	 		<c:if test="${s_field=='content' }">selected</c:if>
            	 		>내용</option>
            	 </select>
            	 
            	 <input type="text" name="s_text" id="s_text" class=""
            	 			value="${s_text }" 
            	 			placeholder="검색어를입력하세요" 
                			style="width:170px;"> 
                 <input type="image" src="<c:url value='/img/mag.png'/>"
                 			style="width:20px; height:20px; margin-left:5px;">
                 <!--<img src="<c:url value='/img/mag.png'/>" width="15" height="15" alt="돋보기"/>-->
            </div>   
            </form>
         
           <!-- <div style="float:right; width:5%;">
            	<button type="button" id="btn_search_nboard">검색</button>
            </div>-->
        </div>
       


        <div style="width:100%; float:left; margin-top:20px; font-size:13px;">
            <table style="width:100%;" class="table table-hover">
                <colgroup>
                    <col width="*" />
                    <col width="10%" />
                    <col width="10%" />
                  
                </colgroup>
                 <tr>
                    <td>제목</td>
                    <td>등록일</td> 
                    <td>조회수</td> 
                </tr>
                
                <c:forEach var="result" items="${list }">
                <tr>
                    <td>
                    <a href="nboardDetail.do?unq=${result.unq }">${result.title }
                    </a></td>
                    <td>${result.rdate }</td> 
                    <td>${result.hits }</td> 
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
