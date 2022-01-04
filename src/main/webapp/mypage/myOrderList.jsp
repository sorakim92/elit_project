<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
     <%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
  

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>마이페이지-주문내역</title>
    <link rel="stylesheet" href="css/css.css">
   <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<!-- footer header css -->
	<link rel="stylesheet" href="css/headFooter.css">
	<!-- subtab css -->
	<link rel="stylesheet" href="css/css.css">
	<!--  mypage board css -->
	<link rel="stylesheet" href="css/mypageBoard.css">
	
	
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

.navbar {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 8px 12px;
}    
.navbar_menu {
  display: flex;
  list-style: none;
  border-bottom: 2px solid #ccc;
  padding-left: 0;
}
.navbar_menu li {
  padding: 8px 12px;
  margin-top: 20px;
}
.navbar_menu li:hover {
  background: pink;
  border-radius: 4px;
}
@media screen and(max-width: 768px) {
  .navbar {
    flex-direction: column;
    padding: 8px 12px;
  }
  .navbar-menu {
    flex-direction: column;
    width: 100%;
  }

  .navbar-menu li {
    width: 100%;
    text-align: center;
  }
}
.box > .nail {
  border: 1px solid #ccc;
  width: 100%;
  height: 100px;
  text-align: center;
  margin-top: 20px;

}
.box2 {
        margin-top: 20px;
        width: 100%;
}

/* 주문상세버튼  */
.btn {
	background: #f8cacc; 
	color: black; 
	border-color:#f8cacc
}

.div_orderinfo_1{
	height:auto; 
	width:100%;
	font-family:jua;
	font-size:16px;
	color:#ff6e74;
	padding:20px;
	text-align:center;
	border-radius:2em; 
	border:1px solid #eee; 
	margin-top:50px;
}
</style>
<script>
function fn_detail(id,unq) {
	var userid = id;
	var orderindex = unq;

	$("#userid").val(userid);
	$("#orderindex").val(orderindex);
	
	var popWidth = window.screen.width/2 - 550;
	var popHeight = window.screen.height/2 - 400;
	
	var pop_title = "detailPopup";
	window.open("",pop_title,"status=no, width=1100, height=800, left="+popWidth+", top="+popHeight);
	
	var frm = document.frm_detail;
	frm.target = pop_title;
	frm.action = "myorderDetail.do";
	
	frm.submit();

}
</script>
<body>

<div class="wrapper">
    <div class="main" style="min-height: 100%; padding-bottom:100px; flex:1;">
    <header class="width:100%; height:50px;">
       <%@include file = "../include/main_header.jsp" %>
    </header>
        
    <nav>
        <div style="width:100%; 
                    height:100px;">
           <%@include file = "../include/topmenu.jsp" %>
       </div>
    </nav>

   
 <!-- 마이페이지 부분 시작 -->   

<section>

    <div class="board_sc_top">
            <div class="board_sc_title">
                주문내역
            </div>
<!--             <form name="frm" method="post" action="nBoardList.do"> -->
<!--             <div class="board_sc_search"> -->
<!--             	 <input type="text" name="s_text" id="s_text" class="" -->
<%--             	 			value="${s_text }"  --%>
<!--             	 			placeholder="검색어를입력하세요"  -->
<!--                 			style="width:170px;">  -->
<%--                  <input type="image" src="<c:url value='/img/mag.png'/>" --%>
<!--                  			style="width:20px; height:20px; margin-left:5px;"> -->
<!--             </div>    -->
<!--             </form> -->
        </div>  

  
    <!--주문내역-->
	<form id="frm_detail" name="frm_detail" method="post" >
		<input type="hidden" id="userid" name="userid">
	 	<input type="hidden" id="orderindex" name="orderindex">                
	</form>
	
		
        <div style="width:100%; 
					float:left; 
					margin-top:20px; 
					font-size:13px;"
					class="bd_tbl_div">
					
			<c:if test = "${empty list}">
	        	<div class="div_orderinfo_1">
	           	아직 주문한 내역이 없습니다. <br>
	           	이릿 서비스를 이용해주세요.
	           	</div>
	        </c:if>
            <table style="width:100%;" class="table1">
                <colgroup>
                    <col width="30%" />
                    <col width="*%" />
                    <col width="15%" />
                  
                </colgroup>
             
                <c:forEach var="result" items="${list }">
                <tr> 
                	<th>${result.rdate } &nbsp; 
                		<c:if test="${result.receive == '배달중'}"> <span style="color:red;"></c:if>
                			${result.receive }</span></th>
                </tr>
                <tr >
                    <td rowspan="3">
                     <c:choose>
                   		<c:when test="${result.storeimage.equals('사진') }">
                   		   	<div class="cate_tbl2_div1" style="line-height:140px;">
                    			 이미지 준비중
                   			 </div>
                   		</c:when>
                   		<c:otherwise>
                   		    
                   		    <img class="cate_tbl2_div1"
                   		    	src="<c:url value='/upload/store/${result.storeimage }'/>">
                  		    
                   		</c:otherwise>
                    </c:choose>	
                    	
                    </td>
                    <td>${result.storename }</td> 
                    <td rowspan="3" style="vertical-align:middle; text-align:center">
                    	<button type="button" class="btn" onclick="javascript:fn_detail('${result.userid}','${result.orderindex }')">주문상세</button> 
	             
                    </td> 
                </tr>
                <tr >
                    <td>${result.menuname }</td> 
                </tr>
                <tr >
                    <td><fmt:formatNumber value="${result.price }"/></td> 
                </tr>
                <tr>
                	<td colspan="3"> 
                		<div style="background:#eee; height:1px;"></div>
                	</td>
                </tr>
                </c:forEach>
            </table>
          </div>


</section>
</div>
   
<footer>
      <%@include file = "../include/main_footer.jsp" %>
</footer>

</div>

</body>
</html>

