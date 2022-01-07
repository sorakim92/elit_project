<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>리뷰 글쓰기</title>
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


</style>
	
<script>
    
	 $(function() {

		 /*  오더리뷰에서 저장 버튼 클릭시 */

		 $("#btn_save").click(function(){

			 if( $("#rcontent").val() == "" ) {
				 alert("내용을 입력해주세요.");
				 $("#rcontent").focus();
				 return false;
			 }
		 
			 var formdata = $("#frm").serialize();
				$.ajax({
					type : "post",
					url  : "OrderReviewWriteSave.do",
					data : formdata,
					
					datatype : "text",  // 성공여부 (ok)
					success : function(data) {

						if (data == "ok") {
							alert("저장완료");
							location="OrderReviewList.do";
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
            <strong>Review 관리</strong>
            
        </div>
        
        <form name="frm" id="frm">
        <input type="hidden" name="userid" id="userid" value="">
        <div class="board_write_wrap">
            <div class="board_write">
                <div class="info">         
						
                  
                    <dl> 
                        <dt> </dt>
                        <dd></dd>
                    </dl>
                </div>
            
                <div class="cont">
                    <textarea id="rcontent" name="rcontent" placeholder="내용 입력"></textarea>
                    <dd><input type="file" name="file" id="file"></dd>
                </div>
            </div>
            
            <div class="bt_wrap">
                <a href="OrderReviewList.do" id="btn_save"> 등록 </a>
                <a href="OrderReviewList.do">취소</a> 
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