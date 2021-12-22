<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
    

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>마이페이지</title>
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
</style>

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
    <div class="lmage">
        <div class="box" >
            <p class="nail">
                <img src="../img/id.png"  alt="이미지" >
                
                ELIT을 이용해 주셔서 고맙습니다."
            </p>
 
        </div>
    </div>
            <div class="box2">
                <table border="1">
                    <colgroup>
                        <col style="width: 5%;">
                        <col style="width: 25%;">
                        <col style="width: 10%;">
                        <col style="width: 10%;">
                        <col style="width: 10%;">
                        <col style="width: 10%;">
                        <col style="width: 10%;">
                        <col style="width: 10%;">
                    </colgroup>
                    
                    <colgroup>
                        <tr align="center">
                            <th scope="col">번호</th>
                            <th scope="col">쿠폰명</th>
                            <th scope="col">쿠폰적용 상품</th>
                            <th scope="col">구매금액</th>
                            <th scope="col">결제수단</th>
                            <th scope="col">쿠폰혜택</th>
                            <th scope="col">사용여부</th>
                            <th scope="col">사용가능 기간</th>
                        </tr>
                    </colgroup>                        
                        <tr style="height: 100px; text-align: center;">
                            <td colspan="8" class="message" >보유하고 계신 쿠폰 내역이 없습니다</td>
                        </tr>                        
                </table>
			</div>
        <p style="text-align: left; margin-top: 10px;">
            주문내역
        </p>   
         <div style="margin: 0; border-top: 1px solid #ccc; line-height: 2.0;">
        <!-- 상위 추천메뉴 이외에 -->
        <table style="margin-top: 10px; width:100%;" class="cate_tbl2"> 
            <colgroup>
                <col width="15%"/>
                <col width="35%"/>
                <col width="15%"/>
                <col width="35%"/>
            </colgroup>
         <c:forEach var="result" items="${list }">
         <tr>
		    <td>
		        <div style="width:120px; height: 120px; border: 1px solid #f8cacc; border-radius: 2em;
		        margin:5px 20px 10px 20px; text-align: center;">
		            <img src="/img/addpic.png" alt="업체대표사진" width="100" height="100" name="" id="">
		        </div>
		    </td>
		 
		    <td style="text-align: left; ">
		        <span style="font-weight: bold;">가게이름</span>
		            <button type="button" style="float: right;" value="주문상세">주문상세</button>
		               
            <div style="font-size:13px; text-align: left; padding-left: 0px;">                       
                <span>주문상품</span>
            </div>
        
        <div style="font-size:13px; text-align: left; padding-left: 0px;">
            <span>갯수 가격</span><br>
            <span><img src="/img/star.png" style="width:20px; height:20px; ">5.0</span>
        </div>
        
       </td>
       </tr>
      </c:forEach>
    </table>
     </div>     
    <!--주문내역-->



    </section>
    
    <footer>
          <%@include file = "../include/main_footer.jsp" %>
    </footer>
    </div>
</div>

</body>
</html>
