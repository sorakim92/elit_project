<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>치킨</title>

 	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
    <!--  	부트스트랩 -->
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

nav {
	width:1000px;
	height:100px;
	/*background-color:#f8cacc;*/
	text-align:center;
	line-height:3.5;
}

</style>

<script>
function fn_like(u,c) {

	$("#storeunq").val(u);
	$("#cateunq").val(c);
	//alert(u+"uu"+c);
	var formdata = $("#frm").serialize();

	$.ajax({
		type : "post",
		url : "zzimlike.do",
		data : formdata,
		
		datatype : "text",
		success : function(data) {
		
			if(data == "ok") {
				/*if(data.likechk == "U") {
					like_img = "img/dislike.png";
				
				} else {
					like_img = "img/like.png";
			
				}*/
			
				//$("img[name='like_img_"+u+"']").attr('src',like_img);
				
 				document.location.reload();

			}
		},
		error : function() {
			alert("오류.");
		}
		
	})
	
}

</script>
<body>
<div class="wrapper">
    <div class="main" style="min-height: 100%; padding-bottom:100px; flex:1;">
    <header class="width:100%; height:50px;">
         <%@include file = "../include/main_header.jsp" %>
    </header>
        
    <nav>
        <div style="margin:30px 0 0 0; ">
            <%@include file = "../include/cate_subTab.jsp" %>
       </div>
       <div style="margin:0 0 10px 0;">
        <ul class="nav2">
            <li>추천순</li>
            <li>가까운순</li>
            <li>찜많은순</li>
            <li>*</li>
            <li>*</li>
        </ul>
        </div>
    </nav>
      				
  	<section>
  	<article class="">	
    	<table style="margin-top: 10px; width:100%; " class="cate_tbl2"> 
           <colgroup>
               <col width="20%"/>
               <col width="30%"/>
               <col width="20%"/>
               <col width="30%"/>
           </colgroup>
           <tr>
           
           		<c:set var="number" value="1" />	
           		<c:forEach var="result" items="${list }" varStatus="status">
           		
           		<td>
           		
               	   <div class="cate_tbl2_div1" onclick="location.href='menuOrderList.do?storeunq=${result.storeunq}';">
                       <img src="<c:url value='/img/addpic.png'/>" alt="업체대표사진" width="100" height="100" name="" id="">
                   </div>
               	</td>
               	<td>
                   <span class="cate_tbl2_strname" onclick="location.href='menuOrderList.do?storeunq=${result.storeunq}';"> ${result.storename }</span>
                          
                       <div class="cate_tbl2_strinfo1">
                           <span><img src="<c:url value='/img/star.png'/>" style="width:20px; height:20px; ">
                           		${result.storerate }
                           </span>
                           <span style="padding:0 10px 0 10px">
                           
                           <a href ="javascript:fn_like('${result.storeunq }','${result.cateunq }')">
                           
                  						
                           		<img  
                           			<c:choose>
                           				<c:when test="${result.likechk.equals('L') }"> src='img/like.png' </c:when>
                           				<c:when test="${result.likechk.equals('U') }"> src='img/dislike.png' </c:when>
                           				<c:otherwise> src='img/dislike.png' </c:otherwise>
                           			</c:choose>
                           				style="width:20px;"
                           				id="like_img" name="like_img_${result.storeunq }">
                           		
                           
                           	</a>
                           
                           </span>
                       </div>
            			<div class="cate_tbl2_strinfo1">
            				<span style="padding:0 10px 0 0">배달비: ${result.fee }</span>
            			</div>
	                   <div class="cate_tbl2_strinfo1">
	                       <span>대표메뉴</span><br>
	                      
	                   </div>
             	 </td>
             	 
	             	 <c:if test="${number%2 == 0 }">
	             	 	</tr></tr>
	             	 </c:if>
	             	 <c:if test="${number%2 != 0 && status.last}">
	             	 	<td></td><td></td>
	             	 </c:if>
	               	<c:set var="number" value="${number+1 }" />
               	</c:forEach>
           </tr>
        </table>
       
        <form id="frm" name="frm">
        <input type="hidden" name="userid" id="userid" value=<%=USERID%>>
        <input type="hidden" name="storeunq" id="storeunq" value="0">
      	<input type="hidden" name="cateunq" id="cateunq" value="0">
        
        </form>
        
    </article>
    </section>
    </div>
    <footer>
       <%@include file = "../include/main_footer.jsp" %>
    </footer>
</div>
</body>
</html>
