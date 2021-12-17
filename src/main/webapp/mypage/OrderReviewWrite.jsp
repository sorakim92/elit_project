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


</style>


<script>
$(function(){

	/* 공지사항 글쓰기에서 저장 버튼 클릭시 */
	$("#btn_save").click(function(){
		
		if($("#rcontent").val() == "" ) {
			alert("내용을 입력해주세요.");
			("#rcontent").focus();
			return false;
		}
		
  		var formdata = $("#frm").serialize();
  		$.ajax({
  			type : "post",
  			url  : "OrderReviewWriteSave.do",
  			data : formdata,
  			
  			datatype : "text",  //성공여부 ( ok )
  			success : function(data) {
  				
  				if(data == "ok") {
  					alert("저장성공");
  					location="OrderReviewList.do";
  				
  				}else {
  					alert("저장실패");
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
        <section>
           
            <div class="s_review">
                <!-- 상위 추천메뉴 이외에 -->
                <form name="frm" id="frm">
                <table style="margin-top: 10px; width:100%;"> 
                	<colgroup>
		                <col width="20%" />
		                <col width="*" />
		            </colgroup>
               		<tr>
	               		<td>
		                    <div style="width:120px; height: 120px; border: 1px solid #f8cacc; border-radius: 2em;
					                /* margin:5px 20px 10px 20px; */ text-align: center;">
					                    <img src="/img/addpic.png" alt="업체대표사진" width="100" height="100" name="rimage" id="rimage">
					        </div>
				                
				        </td>
			         </tr>
			         <tr>
			            <td style="text-align: left; ">
			                <span style="font-weight: bold;">가게이름</span> 
			                       
	                  <div style="font-size:13px; text-align: left; padding-left: 0px;">                       
	                     	<span>주문상품</span>
	                       	
	                  </div>
	                    </td>
                	</tr>
                	<tr>
                		<td>
                			<div style="font-size:13px; text-align: left; padding-left: 0px;">
			                    <span>갯수 가격</span><br>
			                    <span><img src="/img/star.png" style="width:20px; height:20px; ">5.0</span>
                			</div>
                		</td>
                	</tr>
           
           			<tr>
           				<td>
				            <div style="font-size:16px; ; margin-left: 30px;  text-align: left;">
				              <textarea name="rcontent" id="rcontent" cols="90" rows="10" placeholder="음식의 맛, 양, 포장 상태 등 음식에 대한 솔직한 리뷰를 남겨주세요."></textarea>
				  	       
				            </div>  
				        </td>
				    </tr>
			</table>
            </form>
            </div>
            <button type="button" id="btn_save">등록</button>
             
            

        </section>
          
    <footer>
          <%@include file = "../include/main_footer.jsp" %>
    </footer>
    </div>
</body>
</html>