<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
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

<body>
<div class="wrapper">   
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
<section>
    <div class="board_wrap">
        <div class="board_title">
            <strong>문의내역</strong>
            <p>내가 쓴 글을 확인할 수 있습니다.</p>
        </div>
        <div class="board_view_wrap">
            <div class="board_view">
               <div class="title">${vo.title} ${vo.rdate }${vo.hits }</div>

               <div class="cont"> ${vo.content } </div>


            <div class="bt_wrap">
                <a href="InquiryList.do" class="on">목록</a>
                <a href="InquiryModify.do?inquiryindex=${vo.inquiryindex }">수정</a>

            </div>
        </div>
    </div>
    </div>
    </section>
     <footer>
          <%@include file = "../include/main_footer.jsp" %>
    </footer>
    </div>
</body>
</html>