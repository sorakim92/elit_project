<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공지사항 글쓰기</title>
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
		<!-- footer header css -->
	<link rel="stylesheet" href="css/headFooter.css">
	<!-- css -->
    <link rel="stylesheet" href="css/mainLayout.css">
    
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

</style>

<script>

$(function(){

	$("#btn_modi").click(function(){
		location.href="nboardModify.do?unq=${vo.unq}";
	})
	
	
})


</script>


<body>
<div class="wrapper">
    <div class="main" style="min-height: 100%; padding-bottom:100px; flex:1;">
    <header class="width:100%; height:50px;">
       <%@include file = "../include/main_header.jsp" %>
    </header>
         
    <nav class="board_nav">
        <div >
           <%@include file="../include/board_subTab.jsp" %>
       </div>
    </nav>
        

    <section style="height:auto;">
        <div class="board_sc_top">
            <div class="board_sc_title">
                공지사항
            </div>
        </div>
        
	                    
	      <div style="width:100%; min-height:500px; border:1px solid #ccc; 
	                    float:left; margin-top: 10px;">
	        <table style="width:100%; border-bottom:1px solid #ccc;" 
	        		class="table table-hover">
	            <colgroup>
	                <col width="*" />
	                <col width="15%" />
	                <col width="10%" />
	            </colgroup>
	            
	            <tr>
	                <td>${vo.title} </td>
	                <td>${vo.rdate }</td>
	                <td>${vo.hits }</td>
	            </tr>
	         </table>
	           
           	<div style="width:98%; height:auto; text-align:left; 
           			padding:30px;">
               ${vo.content }
            </div>
	        </div>


    </section>
    <!-- 글쓰기 버튼부분 (관리자)-->

    <div class="board_btn_write" style="margin-bottom:30px; ">
        <button type="button" class="btn btn-outline-warning" 
                style="border-color: #f8cacc; color: black; margin-top:10px;"
                onclick="location.href='nBoardList.do'";
                >
            목록</button>
           <!--  관리자로 로그인시만.. -->
           <%
	if(ADMINID!=null) {
%>
         <button type="button" class="btn btn-outline-warning" 
        		id="btn_modi" 
                style="border-color: #f8cacc;background-color: #f8cacc; color: black; margin-top:10px;">
            수정</button>
             <%
  }
  %>
    </div>
 
              
    <div style="width:100%; height:auto; 
    				float:left;">
      <table style="width:100%;  " 
      		class="table table-hover">
          <colgroup>
				<col width="10%" />
            	<col width="*" />
          </colgroup>
          	<tr>
          		<td>이전글</td>
          		<td>
          			<span>
          			<c:if test = "${vo.punq == 0 }">
          			${vo.ptitle }
          			</c:if>
          			<c:if test = "${vo.punq != 0 }">
          			<a href="nboardDetail.do?unq=${vo.punq }">
          			 ${vo.ptitle }
          			 </a>
          			</c:if>
          			</span>
          		</td>
          	</tr>
          	<tr>
          		<td>다음글</td>
          		<td>
          			<span>
          			<c:if test = "${vo.nunq == 0 }">
          			${vo.ntitle }
          			</c:if>
          			<c:if test = "${vo.nunq != 0 }">
	          			<a href="nboardDetail.do?unq=${vo.nunq }">
	          			 ${vo.ntitle }
	          			 </a>
	          		</c:if>
          			</span>
          		</td>
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
