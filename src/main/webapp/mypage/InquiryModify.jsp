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
    <link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		<!-- footer header css -->
	<link rel="stylesheet" href="css/headFooter.css">
</head>
<style>


</style>

<script>

$(function(){
	
	/* 삭제버튼 클릭시  */
	$("#btn_del").click(function(){
		if(confirm("해당글을 삭제하시겠습니까?") == true) {
			var formdata = $("#frm").serialize();
			$.ajax({
				type : "post",
				url  : "InquiryDelete.do",
				data : formdata,
				
				datatype : "text",
				success  : function(data) {
					if(data == "ok") {
						alert("삭제성공");
						location="InquiryList.do";
					} else {
						alert("삭제 실패");
					}
					
				},
				error :	function() {
					alert("오류발생");
				}
			})
		}
	})
	/* 수정  버튼 클릭시 */
	$("#btn_modi").click(function(){
		
		if($("#title").val() == "" ) {
			alert("제목을 입력해주세요.");
			("#title").focus();
			return false;
		}
		if($("#content").val() == "" ) {
			alert("내용을 입력해주세요.");
			("#content").focus();
			return false;
		}
		
  		var formdata = $("#frm").serialize();
  		$.ajax({
  			type : "post",
  			url  : "InquiryModifySave.do",
  			data : formdata,
  			
  			datatype : "text",  //성공여부 ( ok )
  			success : function(data) {
  				
  				if(data == "ok") {
  					alert("수정성공");
  					location="InquiryList.do";
  				}else {
  					alert("수정실패");
  				}
  				
  			},
  			error  : function() {
					alert("오류발생");
  			}
  			
  		});
		
		
		
	})
	
})


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
            <strong>문의 수정</strong>
            <p>내가 쓴 글을 수정할 수 있습니다.</p>
        </div>
        <form name="frm" id="frm">
        <input type="hidden" name="inquiryindex" value="${vo.inquiryindex }">
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
                        <dd><input type="text" name="title" id="title" style="width: 300px;" value="${vo.title }"></dd>
                    </dl>
                </div>
                <div class="cont">
                    <textarea name="content" id="content">${vo.content }</textarea>
                
            </div>
            <div class="bt_wrap">
            	<a href="InquiryList.do">목록</a>
                <a href="" id="btn_modi">수정</a>
                <a href="" id="btn_del">삭제</a>
                 
			</div>
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