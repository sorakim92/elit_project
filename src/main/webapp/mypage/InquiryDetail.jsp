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
        src: url("fonts/BMHANNAAir_ttf.ttf");
}

@font-face {
        font-family: "jua";
        src: url("fonts/BMJUA_ttf.ttf");
}
</style>
<body>
    <div class="board_wrap">
        <div class="board_title">
            <strong>문의내역</strong>
            <p>내가 쓴 글을 확인할 수 있습니다.</p>
        </div>
        <div class="board_view_wrap">
            <div class="board_view">
               <div class="title">
                    글 제목이 들어갑니다.
               </div>

               <div class="info">
                   <dl>
                       <dt>번호</dt>
                       <dd>1</dd>
                   </dl>
                   <dl>
                    <dt>글쓴이</dt>
                    <dd>김아름</dd>
                </dl>
                <dl>
                    <dt>작성일</dt>
                    <dd>2021.11.02</dd>
                </dl>
                <dl>
                    <dt>조회</dt>
                    <dd>77</dd>
                </dl>
               </div>
               <div class="cont">
                   글 내용이 들어갑니다.<br>
                   글 내용이 들어갑니다.<br>
                   글 내용이 들어갑니다.<br>
                   글 내용이 들어갑니다.<br>
                   글 내용이 들어갑니다.<br>
                   글 내용이 들어갑니다.<br>
                   글 내용이 들어갑니다.<br>
                   글 내용이 들어갑니다.
                   
               </div>

            </div>

         
            <div class="bt_wrap">
                <a href="InquiryList.jsp" class="on">목록</a>
                <a href="InquiryModify.jsp">수정</a>

            </div>
        </div>
    </div>
</body>
</html>