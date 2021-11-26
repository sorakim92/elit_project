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
<style>
@font-face {
        font-family: "Hanna";
        src: url("../fonts/BMHANNAAir_ttf.ttf");
}

@font-face {
        font-family: "jua";
        src: url("../fonts/BMJUA_ttf.ttf");
}

body {
  font-size: 16px;
  font-family: hanna;
  padding-left: 100px;
  height: 100%;
}

</style>

<script>


</script>

<body>
		<div>
		<%@ include file="/include/main_header.jsp" %>
	
        </div>
    <div class="board_wrap">
        <div class="board_title">
            <strong>문의목록</strong>
            <p></p>
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
                <div>
                    <div class=num>5</div>
                    <div class="title"><a href="InquiryDetail.jsp">1:1 문의내역</a></div>
                    <div class="writer">김소라</div>
                    <div class="date">2021.11.02</div>
                    <div class="count">20</div>
                </div>
                <div>
                    <div class=num>4</div>
                    <div class="title"><a href="InquiryDetail.jsp">1:1 문의내역</a></div>
                    <div class="writer">강성모</div>
                    <div class="date">2021.11.02</div>
                    <div class="count">52</div>
                </div>
                <div>
                    <div class=num>3</div>
                    <div class="title"><a href="InquiryDetail.jsp">1:1 문의내역</a></div>
                    <div class="writer">박상혁</div>
                    <div class="date">2021.11.02</div>
                    <div class="count">10</div>
                </div>
                <div>
                    <div class=num>2</div>
                    <div class="title"><a href="InquiryDetail.jsp">1:1 문의내역</a></div>
                    <div class="writer">한상연</div>
                    <div class="date">2021.11.02</div>
                    <div class="count">24</div>
                </div>
                <div>
                    <div class=num>1</div>
                    <div class="title"><a href="InquiryDetail.jsp">1:1 문의내역</a></div>
                    <div class="writer">고경석</div>
                    <div class="date">2021.11.02</div>
                    <div class="count">30</div>
                </div>

            </div>
            <div class="board_page">
                <a href="#" class="bt first"><<</a>
                <a href="#" class="bt prev"><</a>
                <a href="#" class="num on">1</a>
                <a href="#" class="num">2</a>
                <a href="#" class="num">3</a>
                <a href="#" class="num">4</a>
                <a href="#" class="num">5</a>
                <a href="#" class="bt next">></a>
                <a href="#" class="bt last">>></a>




            </div>
            <div class="bt_wrap">
                <a href="InquiryWrite.jsp" class="on">등록</a>
               <!-- <a href="#">수정</a> -->

            </div>
        </div>
    </div>
     <div>
	<%@ include file="/include/main_footer.jsp" %>
	</div> 
</body>
	
</html>