<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>문의내역</title>
    <link rel="stylesheet" href="../css/css.css">
</head>


<script>


</script>

<body>
	<div>
		<%@ include file="/include/main_header.jsp" %>
	
    </div>
    
    <!-- 마이페이지 부분 시작 -->   
 
 <nav class="navbar">
    <div style="width:100%;">
        <ul class="gnb">
            <li class="my_font">마이페이지</li>
            <li><a href="#">주문내역</a></li>
            <li><a href="#">회원정보수정</a></li>
            <li><a href="#">문의내역</a></li>
            <li><a href="#">찜목록</a></li>
            <li><a href="#">리뷰관리</a></li>
            <li><a href="#">ADMIN</a></li>
        </ul>
    </div>
</nav>
    
    <div class="board_wrap">
        <div class="board_title">
            <strong>문의목록</strong>
            <p>내가 쓴 글을 확인할 수 있습니다.</p>
		</div>
		
        <div class="board_list_wrap">
            <div class="board_list">
                <div class="top"> 
                    <div class=num>번호</div>
                    <div class="title">제목</div>
                    <div class="writer">글쓴이</div>
                    <div class="date">작성일</div>
                    <div class="count">조회</div>
                  
                </div>
                
            </div>
            <div class="board_page">
                <a href="#" class="bt first"><<</a>
                <a href="#" class="bt prev"><</a>
                <a href="#" class="num on">1</a>
            <!--<a href="#" class="num">2</a>
                <a href="#" class="num">3</a>
                <a href="#" class="num">4</a>
                <a href="#" class="num">5</a> -->
                <a href="#" class="bt next">></a>
                <a href="#" class="bt last">>></a>




            </div>
            <div class="bt_wrap">
                <a href="InquiryWrite.jsp" class="on">등록</a>
               

            </div>
        </div>
    </div>
     <div>
	<%@ include file="/include/main_footer.jsp" %>
	</div> 
</body>
	
</html>