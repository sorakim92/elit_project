<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>문의 등록</title>
    <link rel="stylesheet" href="../css/css.css">
</head>

<script>

 $(function(){
	 
	 $("#btn_save").click(function(){
		 if( $("#title").val() == "" ) {
			 alert("제목을 입력해주세요.");
			 $("#title").focus();
			 return false;
		 } 
		 if( $("#content").val() == "" ) {
			 alert("내용을 입력해주세요.");
			 $("#content").focus();
			 return false;
		 }
	 
		 
 
 


</script>
<body>
    <body>
    <div class="wrapper">
        <header>
            <div class="logo">
                <img src="../img/logo.png" width:"150px" height="50px" alt="로고">
            </div>
            <div class="search">
                <input type="text" name="" id="" class=""> 
                <img scr="../img/mag.png" width="100px" height="50px" alt="돋보기">
            </div> 
            <div class="login">
                <button type="button" name="" id="">로그인</button>
            </div>           
            
    </div>
         </header>

     <Nav class="navbar">
        <div>
            <ul class="navbar_menu">
                <h4 class="h4">마이페이지</h4>
                <li><a href="#">주문내역</a></li>
                <li><a href="#">회원정보수정</a></li>
                <li><a href="#">문의내역</a></li>
                <li><a href="#">찜목록</a></li>
                <li><a href="#">리뷰관리</a></li>
                <li><a href="#">ADMIN</a></li>
            </ul>
        </div>
    </Nav>
    <div class="board_wrap">
        <div class="board_title">
            <strong>문의 등록</strong>
            <p>궁금한 점이나 하고 싶은 말을 작성해주세요.</p>
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
                        <dd><input type="text" style="width: 300px; margin-left: 10px"   placeholder="제목 입력"></dd>
                    </dl>
                </div>
                <div class="cont">
                    <textarea placeholder="내용 입력"></textarea>
                </div>
            </div>
            <div class="bt_wrap">
                <a href="InquiryWrite.jsp" id="btn_save">등록</a>
                <a href="InquiryList.jsp">취소</a> 

            </div>
        </div>
    </div>
    
</body>
</html>