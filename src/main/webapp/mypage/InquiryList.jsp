<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>문의내역</title>
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

a {
  text-decoration: none;
  color: inherit;
}

html{
    height: 100%;
}

body {
    font-size: 16px;
    font-family: hanna;
    padding-left: 100px;
    height: 100%;
}

.board_list > div > div {
    display: inline-block;
    padding: 15px 0;
    font-size: 1.2rem;
}

.board_list .num {
  width: 15%;
}

.board_list .title {
  width: 40%;
  text-align: center;
}

.top .writer {
  	width: 10%;
    text-align: center;
    padding-left: 50px;
}

.board_list .date {
  width: 10%;
  padding-left:40px;
  text-align: center;
  
}
.board_list .count {
    width: 20%;
    /* padding-left: 30px; */
    text-align: center;
}

.bt_wrap {
    margin-top: 30px;
    margin-bottom: 20px;
    text-align: center;
    font-size: 0;
}

.board_list {
    width: 100%;
    border-top: 2px solid #000;
    text-align: center;
}

.navbar_menu {
    display: flex;
    list-style: none;   
    padding-left: 0;
}

.footer {
    width: 1000px;
    height: auto;
    background-color: #eeeeee;
    clear: both;
}

</style>

<body>
<div class="wrapper">   
<div class="main">
  <header class="width:100%; height:50px;">
       <%@include file = "../include/main_header.jsp" %>
  </header>
 
<nav>
        <div style="width:100%; 
                    height:100px;">
           <%@include file = "../include/topmenu.jsp" %>
       </div>
</nav>
<section class="content">
    <div class="board_wrap">
        <div class="board_title">
            <strong>문의목록</strong>
            <p>내가 쓴 글을 확인할 수 있습니다.</p>
		</div>
		
        <div class="board_list_wrap">
        
            <div class="board_list">
            <div style="text-align:left">Total:${total }</div>
                <div class="top"> 
                    <div class=num>번호</div>
                    <!-- <div>분류</div> -->                    
                    <div class="title">제목</div>
                    <div class="writer">글쓴이</div>
                    <div class="date">작성일</div>
                    <div class="count">조회수</div>
                    
                  <c:forEach  var="result" items="${list }">                  
                  	<div class="num">${result.inquiryindex }</div>
                  	
                    <div class="title">
                   		 <a href="InquiryDetail.do?inquiryindex=${result.inquiryindex }">${result.title } </a> </div>
                    <div class="writer">${result.userid }</div>
                    <div class="date">${result.rdate }</div>
                    <div class="count">${result.hits }</div>
                  </c:forEach>
                
                 <c:if var= "result" test="${total == 0 }">
                 <div>등록된 내용이 없습니다.</div>
                 </c:if>
                </div>
                
            </div>

            <div class="bt_wrap">
                <a href="InquiryWrite.do" class="on">등록</a>
               

            </div>
        </div>
    </div>
      </section>
<!-- 페이징 -->
    <div style=" font-size:15px; " >
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
          <!-- <li class="page-item"><a class="page-link" href="#">2</a></li>
          <li class="page-item"><a class="page-link" href="#">3</a></li> -->
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