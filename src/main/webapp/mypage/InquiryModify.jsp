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


</style>
<body>
    <div class="board_wrap">
        <div class="board_title">
            <strong>문의 수정</strong>
            <p>내가 쓴 글을 수정할 수 있습니다.</p>
        </div>
        <div class="board_write_wrap">
            <div class="board_write">
                <div class="info">
                    <dl>
                        <dt>문의유형</dt>
                        <dd><select style="width:150px; height:40px;" placeholder="유형 선택"></dd>
	                            <option value="주문/결제">주문/결제</option>
	                            <option value="주문취소">주문취소</option>
	                            <option value="주소변경">주소변경</option>
	                            <option value="상품변경">상품변경</option>
	                            <option value="기타">기타</option>
	                        </select>

                    </dl>
                </div>
                <div class="title">
                    <dl> 
                        <dt>문의 제목</dt>
                        <dd><input type="text" style="width: 300px; margin-left: 10px"  placeholder="제목 입력" value="1:1 문의내역"></dd>
                    </dl>
                </div>
                <div class="cont">
                    <textarea placeholder="내용 입력"></textarea>
                </div>
            </div>
            <div class="bt_wrap">
                <a href="InquiryWriteSave.jsp" class="on">등록</a>
                <a href="InquiryList.jsp">취소</a> 

            </div>
</body>
</html>