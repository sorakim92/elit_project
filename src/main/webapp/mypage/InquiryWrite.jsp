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
		 
			 var formdata = $("#frm").serialize();
				$.ajax({
					type : "post",
					url  : "InquiryWriteSave.do",
					data : formdata,
					
					datatype : "text",  // 성공여부 (ok)
					success : function(data) {
						if (data == "ok") {
							alert("저장완료");
							location="InquiryWriteList.do";
						} else {
							alert("저장실패");
						}
					},	
					error : function() {
						alert("오류발생");
					}
				});
			});
		});
	
	</script>
    
</head>

<body>
   
    <div>
      <%@ include file="../include/main_header.jsp" %>  
    </div>
    
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
            <strong>문의 등록</strong>
            <p>궁금한 점이나 하고 싶은 말을 작성해주세요.</p>
        </div>
        
        <form name="frm" id="frm">
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
                    <dl> 
                        <dt>문의 제목</dt>
                        <dd><input type="text" style="width: 300px; margin-left: 10px"   placeholder="제목 입력"></dd>
                    </dl>
                </div>
            
                <div class="cont">
                    <textarea placeholder="내용 입력"></textarea>
                    <dd><input type="file" name="file1" id="file1"></dd>
                    <dd><input type="file" name="file2" id="file2"></dd>
                </div>
            </div>
            
            <div class="bt_wrap">
                <a href="InquiryWriteSave.jsp" id="btn_save">등록</a>
                <a href="InquiryList.jsp">취소</a> 
            </div>
            </form>
        </div>
    </div>
      <div>
	<%@ include file="/include/main_footer.jsp" %>
	</div>
</body>
</html>