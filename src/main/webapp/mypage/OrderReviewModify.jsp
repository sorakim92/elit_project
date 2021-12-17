<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>리뷰 수정</title>
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

.article_nav {
    display: inline-block;
}
.article_nav li {
    font-size:16px;
    list-style:none;
    float:left;
    padding-left:10px;
    padding-right:10px;
    padding-bottom: -20px;
}


/* input 상자 크기, textarea 높이 등 */
.bd_input1 {
    width:90%;
} 
.bd_textarea {
    width: 90%;
    height: auto;
    min-height: 300px;
}

</style>

<script>

$(function(){
	
	/* 삭제버튼 클릭시  */
	$("#btn_del").click(function(){
		if(confirm("해당글을 삭제하시겠습니까?") == true) {
			var formdata = $("#frm").serialize();
			$.ajax({
				type : "post",
				url  : "OrderReviewDelete.do",
				data : formdata,
				
				datatype : "text",
				success  : function(data) {
					if(data == "ok") {
						alert("삭제성공");
						location="OrderReviewList.do";
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
		
		if($("#rcontent").val() == "" ) {
			alert("내용을 입력해주세요.");
			("#rcontent").focus();
			return false;
		}
		
  		var formdata = $("#frm").serialize();
  		$.ajax({
  			type : "post",
  			url  : "OrderReviewModifySave.do",
  			data : formdata,
  			
  			datatype : "text",  //성공여부 ( ok )
  			success : function(data) {
  				
  				if(data == "ok") {
  					alert("수정저장성공");
  					location="OrderReviewList.do";
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
    <div class="main" style="min-height: 100%; padding-bottom:100px; flex:1;">
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




    <section >
        <div style="width:100%; height:auto; padding:10px;  margin: 10px;">
            <div style="width:70%; text-align: left; margin-left:40px;
                        font-family: jua; float:left;">
                리뷰 수정
            </div>
        </div>
        
        <div style="width:100%; height:500px; border:1px solid #ccc; 
                    float:left; margin-top: 10px;">
                    
        <form name="frm" id="frm">	
        <input type="hidden" name="reviewindex" id="reviewindex" value="${vo.reviewindex }" >
        <table style="width:100%;" class="table table-hover">
            <colgroup>
                <col width="15%" />
                <col width="*" />
            </colgroup>            
            
            
            <tr>
                <th class="">글쓴이</th>
                <td class="" style="text-align:left;">	
                	${vo.userid }
                </td>
            </tr>
            <tr>
                <th class="">내용</th>
                <td class="" style="text-align:left;">
                    <textarea name="rcontent" id="rcontent" class="bd_textarea">${vo.rcontent }</textarea>
                </td>
            </tr>
        </table>
		</form>
        </div>


    </section>
    <!-- 글쓰기 버튼부분 (관리자)-->

    <div class="" style=" width: 100%;
    height: 50px;
    margin: 20px 50px 0 0;
    text-align: right;">
        <button type="button" class="btn btn-outline-warning" 
                style="border-color: #f8cacc; color: black;"
                onclick="location.href='OrderReviewList.do'";
                >
         		   목록</button>
        <button type="button" class="btn btn-outline-warning" 
        		id="btn_modi" 
                style="border-color: #f8cacc;background-color: #f8cacc; color: black;">
          		  수정</button>
        <button type="button" class="btn btn-outline-warning" 
        		id="btn_del"
           style="border-color: #f8cacc; color: black;">
       			삭제</button>
    </div>
    

</div>
    <footer>
          <%@include file = "../include/main_footer.jsp" %>
    </footer>
</div>
</body>
</html>
