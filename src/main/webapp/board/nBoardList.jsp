<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>

 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공지사항</title>
	    
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<!-- footer header css -->
	<link rel="stylesheet" href="css/headFooter.css">
  	<!-- css -->
    <link rel="stylesheet" href="css/mainLayout.css">
   
</head>
<style>


section {
	width:1000px;
	height:auto;
	min-height: 450px;
	/*background-color:#92a8d1;*/
	text-align:center;
}

</style>
<script>

$(document).ready(function(){

	$('ul.article_nav li').click(function(){
		var tab_id = $(this).attr('data-tab');
		
		$('ul.article_nav li').removeClass('current');
		$(this).addClass('current');
		$("#"+tab_id).addClass('current');
	})
	
	
})


$(function(){
	
	$("#btn_write").click(function(){
		/* 추후 추가 : 관리자 아이디인지 세션확인  */
		location.href = "nboardWrite.do";
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
        <div style="">
           <%@include file = "../include/board_subTab.jsp" %>
       </div>
    </nav>
        




    <section >
        <div class="board_sc_top">
            <div class="board_sc_title">
                공지사항
            </div>
            <form name="frm" method="post" action="nBoardList.do">
            <div class="board_sc_search">
            	 <select name="s_field" style="font-size:15px;">
            	 	<option value="title"
            	 		<c:if test="${s_field=='title' }">selected</c:if> 
            	 		>제목</option>
            	 	<option value="content"
            	 		<c:if test="${s_field=='content' }">selected</c:if>
            	 		>내용</option>
            	 </select>
            	 
            	 <input type="text" name="s_text" id="s_text" class=""
            	 			value="${s_text }" 
            	 			placeholder="검색어를입력하세요" 
                			style="width:170px;"> 
                 <input type="image" src="<c:url value='/img/mag.png'/>"
                 			style="width:20px; height:20px; margin-left:5px;">
                 <!--<img src="<c:url value='/img/mag.png'/>" width="15" height="15" alt="돋보기"/>-->
            </div>   
            </form>
         
           <!-- <div style="float:right; width:5%;">
            	<button type="button" id="btn_search_nboard">검색</button>
            </div>-->
        </div>
       


        <div style="width:100%; 
					float:left; 
					margin-top:20px; 
					font-size:13px;"
					class="bd_tbl_div">
            <table style="width:100%;" class="table table-hover">
                <colgroup>
                    <col width="*" />
                    <col width="10%" />
                    <col width="10%" />
                  
                </colgroup>
                 <tr>
                    <th>제목</th>
                    <th>등록일</th> 
                    <th>조회수</th> 
                </tr>
                
                <c:forEach var="result" items="${list }">
                <tr>
                    <td>
                    <a href="nboardDetail.do?unq=${result.unq }">${result.title }
                    </a></td>
                    <td>${result.rdate }</td> 
                    <td>${result.hits }</td> 
                </tr>
                </c:forEach>
            </table>
          
        </div>
    </section>
 
 <!-- 글쓰기 버튼부분 (관리자)-->
<%
	if(ADMINID!=null) {
%>


    <div class="board_btn_write" style="">
        <button type="button" id="btn_write" name="btn_write"
        class="btn btn-outline-warning" style="border-color: #f8cacc; color: black;">
        글쓰기</button>
    </div>

<%
	}
%>
    
<!-- 페이징 -->
    <div style=" font-size:10px; " >
		<%@include file = "../include/board_pagination.jsp" %>
      </div>
</div>
    <footer>
       <%@include file = "../include/main_footer.jsp" %>
    </footer>
</div>
</body>
</html>
