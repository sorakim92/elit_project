<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>

 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>자주묻는질문</title>
	    
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
	<!-- 아코디언게시판 관련 부트스트랩 -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

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
section {
	width:1000px;
	height:auto;
	min-height: 450px;
	/*background-color:#92a8d1;*/
	text-align:center;
}

/* 아코디언 박스부분 클릭시 */
.accordion-button:not(.collapsed){
	color:#2f3030;
	background-color:#f8cacc ;
}
.accordion-button:not(.collapsed)::after{
	background-image:none;
}
.accordion-button:focus {
	box-shadow: 0 0 0 0.25rem rgb(248 202 204 / 35%);
}
.accordion-body {
	background-color: #fffcfc;
}

</style>
<script>

$(function(){
	
	$("#btn_writefaq").click(function(){
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
        <div style="width:100%; 
                    height:50px; border-bottom: 1px solid #ccc;">
            <%@include file = "../include/board_subTab.jsp" %>
       </div>
    </nav>
        




    <section >
        <div class="board_sc_top">
            <div class="board_sc_title">
                자주묻는질문
            </div>
            <form name="frm" method="post" action="faqList.do">
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
       

        <div style="width:100%; float:left; margin-top:20px; font-size:13px;">
          
          <div class="accordion" id="accordionExample" >
			  <div class="accordion-item" >
			    <h2 class="accordion-header" id="headingOne" >
			      <button class="accordion-button"  type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
					자주묻는질문1 
			      </button>
			    </h2>
			    <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
			      <div class="accordion-body">
			        자주묻는 질문에 대한 ....대다다ㅏ다다답... 
			      </div>
			    </div>
			  </div>
			  
			  
			<c:forEach var="result" items="${list }">
			<c:set var="i" value="${i+1 }" />  
			<div class="accordion-item">
			    <h2 class="accordion-header" id="heading${i }">
			      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse${i }" aria-expanded="false" aria-controls="collapse${i }">
			        ${result.title }
			      </button>
			    </h2>
			    <div id="collapse${i }" class="accordion-collapse collapse" aria-labelledby="heading${i }" data-bs-parent="#accordionExample">
			      <div class="accordion-body">
			      	${result.content }
			      </div>
			    </div>
			  </div>
			 </c:forEach>
			 
			</div>
			
        </div>
   
  </section>
 <!-- 글쓰기 버튼부분 (관리자)-->
<%
	if(ADMINID!=null) {
%>

    <div class="board_btn_write" >
        <button type="button" id="btn_writefaq" name="btn_writefaq"
        class="btn btn-outline-warning" style="border-color: #f8cacc; color: black; margin-top:20px;">
        글쓰기</button>
    </div>
 
<%
	}
%>   
    
<!-- 페이징 -->
    <div style=" font-size:10px; margin-top:30px; float:left" >
		<%@include file = "../include/board_pagination.jsp" %>
      </div>
      
</div>
    <footer>
       <%@include file = "../include/main_footer.jsp" %>
    </footer>
</div>
</body>
</html>
