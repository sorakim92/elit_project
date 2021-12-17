<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>리뷰 상세화면</title>
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
@font-face {
    font-family: "hanna";
    src: url("fonts/BMHANNAAir_otf.otf");
}
@font-face {
    font-family: "jua";
    src: url("fonts/BMJUA_otf.otf");
}
html{
    height: 100%;
}
body {
    font-size: 16px;
    font-family: hanna;
    padding-left:100px;
    height:100%;
}
header {
	width:1000px;
	height:100px;
	/*background-color:#ffcc99;*/
	/*line-height:5.0;*/
}
nav {
	width:1000px;
	height:100px;
	/*background-color:#f8cacc;*/
	text-align:center;
	line-height:3.5;
}
.wrapper {
    width: 1000px;
    min-height: calc(100vh-70px);
    position: relative;
    /*background-color: beige;*/
    padding: 10px;
    flex-direction: column;
    display: flex;
    margin: auto;
}



section {
	width:1000px;
	height:auto;
	/*background-color:#92a8d1;*/
	text-align:center;
    min-height: 550px;
}


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

	$("#btn_modi").click(function(){
		location = "OrderReviewModify.do?reviewindex=${vo.reviewindex}";
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
                리뷰게시판 
            </div>
        </div>
        
	                    
	      <div style="width:100%; min-height:500px; border:1px solid #ccc; 
	                    float:left; margin-top: 10px;">
	        <table style="width:100%; border-bottom:1px solid #ccc;" 
	        		class="table table-hover">
	             <colgroup>	               
	                <col width="15%" />
	                <col width="10%" />
	                 <col width="*" />
	            </colgroup> 
	            
	            <tr>
	           		
	           		<td>${vo.userid }</td> 
	           		<td>${vo.rdate }</td>
	           	</tr>    
	                                
	                	            
	         </table>
	         <div style="width:98%; height:auto; text-align:left; 
           			padding:30px;">
               ${vo.rcontent }
            </div>  
          
	        </div>


    </section>
    <!-- 글쓰기 버튼부분 (관리자)-->

    <div class="" style=" width: 100%; float:left;
    height: 50px;
    margin: 20px 50px 0 0;
    text-align: left;">
        <button type="button" class="btn btn-outline-warning" 
                style="border-color: #f8cacc; color: black;"
                onclick="location.href='OrderReviewList.do'";
                >
            목록</button>
           <!--  관리자로 로그인시만.. -->
         <button type="button" class="btn btn-outline-warning" 
        		id="btn_modi" 
                style="border-color: #f8cacc;background-color: #f8cacc; color: black;">
            수정</button>
    </div>
   
              
    <div style="width:100%; height:auto; 
    				float:left;">
      <table style="width:100%; " 
      		class="table table-hover">
          <colgroup>
				<col width="10%" />
            	<col width="*" />
          </colgroup>
          	<tr>
          		<td>이전글</td>
          		<td></td>
          	</tr>
          	<tr>
          		<td>다음글</td>
          		<td></td>
          	</tr>
	   </table>
	 </div>    
	 
	 
	 
</div>
    <footer>
          <%@include file = "../include/main_footer.jsp" %>
    </footer>
</div>
</body>
</html>
