<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>문의 등록</title>
    <link rel="stylesheet" href="css/css.css">
    	<!-- footer header css -->
	<link rel="stylesheet" href="css/headFooter.css">
	 <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
   
</head>	
	
    <script>
    
	 $(function(){
		 /* 문의사항 글쓰기에서 저장 버튼 클릭시 */
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
							location="InquiryList.do";
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
    

<body>
<div class="wrapper">   
  <header class="width:100%; height:50px;">
       <%@include file = "../include/main_header.jsp" %>
  </header>
 
<nav>
        <div style="width:100%; 
                    height:100px;">
           <%@include file = "../include/topmenu.jsp" %>
       </div>
</nav>
<section>
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
                        <dd>
                        	<select style="width:150px; height:40px;">
	                            <option value="주문/결제">주문/결제</option>
	                            <option value="주문취소">주문취소</option>
	                            <option value="주소변경">주소변경</option>
	                            <option value="상품변경">상품변경</option>
	                            <option value="기타">기타</option>
                           </select>  
                        </dd>
						
                    </dl>
                    <dl> 
                        <dt>문의 제목</dt>
                        <dd><input type="text" id="title" name = "title" style="width: 300px;" placeholder="제목 입력"></dd>
                    </dl>
                </div>
            
                <div class="cont">
                    <textarea id="content" name="content" placeholder="내용 입력"></textarea>
                    <dd><input type="file" name="file" id="file"></dd>
                </div>
            </div>
            
            <div class="bt_wrap">
                <a href="InquiryList.do" id="btn_save"> 등록 </a>
                <a href="InquiryList.do">취소</a> 
            </div>
            </div>
            </form>
        </div>
        </section>
    
    
    <footer>
          <%@include file = "../include/main_footer.jsp" %>
    </footer>
    </div>
</body>
</html>