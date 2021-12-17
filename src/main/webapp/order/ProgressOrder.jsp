<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>        
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>sample</title>
  	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<link rel="stylesheet" href="css/headFooter.css">
  
</head>
<style>
@font-face {
    font-family: "hanna";
    src: url("../fonts/BMHANNAAir_otf.otf");
}
@font-face {
    font-family: "jua";
    src: url("../fonts/BsMJUA_otf.otf");
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
.logo {
    width:  300px;
    height: 50px; 
    float : left;
}
.search {
    width: 500px;
    height: 50px;
    float : left;
    margin: 20px 0 0 0;
    text-align: right;
}
.login {
    width: 150px;
    height: 50px;
    float: left;
    margin: 20px 50px 0 0;
    text-align: right;
}
/*     주문관리, 메뉴관리 등 중간 탭부분 , 접수대기/처리중 주문 드 서브탭  */
.on_nav1 {
    display: inline-block;
    
}
.on_nav1 li{
    float:left;
    font-size:13px;
    list-style:none;
    float:left;
   
    padding-left:10px;
    padding-right:10px;
}
.on_nav2 {
    width:100%;
    padding: 10px;
    float:left;

}
.on_nav2 li {
    font-size:14px;
    list-style:none;
    float:left;
    padding-left:10px;
    padding-right:10px;
} 
section {
	width:1000px;
	height:900px;
	/*background-color:#92a8d1;*/
	text-align:center;
}
/*주문접수, 거부 버튼*/
.btn2 {
    width:100px;
    height:130px;
    background-color:orange;
}
.btn3 {
    width:100px;
    height:130px;
    text-align: center;
    background-color:gray;
}



.footer {
	width:100%;
    height:100px;
	background-color:#ccc;
    position: absolute;
    bottom: 0;
    left: 0;
}
.ft_ul {
    width:100%;
    height:50px;
}
.ft_info {
    width:100%;
    height:50px;
    text-align: center;
    font-size:14px;
    padding-bottom:20px;
}
.ul1{
    float:left;
    padding-top:7px;
}

.ul1 li{
    font-size:14px;
    list-style:none;
    float:left;
    border-left:1px solid #ccc;
    padding-left:10px;
    padding-right:10px;
}

.ul2{
    float:right;
    padding-top:7px;
}

.ul2 li{
    font-size:14px;
    list-style:none;
    float:left;
    border-left:1px solid #ccc;
    padding-left:10px;
    padding-right:10px;
}


</style>
<script>

$(function() {
    var sw = screen.width;
    var sh = screen.height;
    var cw = document.body.clientWidth;
    var ch = document.body.clientHeight;
    var top  = sh / 2 - ch / 2 - 100;
    var left = sw / 2 - cw / 2;
    moveTo(left, top);
});

</script>
<body>
<div class="wrapper">
    <div class="main" style="min-height: 100%; padding-bottom:100px; flex:1;">
    <header class="width:100%; height:50px;">
        <div class="logo">
            <img src="../img/logo.png" width="200px" height="100px" alt="로고"><br><br>
            <span style="font-size: 20px;">사장님 광장</span>
        </div>
        <div class="search">
            <span style="font-size: 15px;"><a href="">마이페이지</a></span>
            <span style="font-size: 15px;"><a href="">사장님 광장</a></span>
        </div> 
        <!-- 기능: 로그아웃상태에서는 로그인 버튼,  로그인상태에서는 마이페이지 | 로그아웃 -->
        <div class="login">
            <button type="button" class="btn btn-outline-warning" style="border-color: #f8cacc; color: black;">로그인</button>
        </div>
    </header>
        
    
        <div style="margin:30px 0 0 0; width:100%; text-align: center;  
                    border-bottom: 1px solid #ccc; ">
            <ul class="on_nav1">
                <li><a href="">주문관리</a></li>
                <li><a href="menuList.do">메뉴관리</a></li>
                <li><a href="adWrite.do">광고신청/관리</a></li>
                <li><a href="b_consumerList.do">커뮤니티</a></li>
            </ul>
       </div>
    
    <div>
     <form name="frm" id="frm" action="progressorderList.do" >     
    <section class="content" style="border-right:1px solid #ccc; width:60%; float:left;">
        <!-- 주문관리 탭 -->
        <div style="float:left; width:20%; margin-top:10px; ">
            <span style="font-size: 20px; float:left; margin-left:10px;">주문관리</span> 
        </div>
        <div style="width:80%; 
        height:40px; float:left;
        margin: 10px 0 20px; 0">
            <ul class="on_nav2">
                <li><font color="blue">접수대기/처리중 주문</font></li>
                <li>완료된 주문조회</li>
            </ul>
        </div>
         <!--**** 상연님 여기 추가해주세요 ㅎㅎ 주문부분 !!!!!! -->
         <c:forEach  var="result" items="${list }">
        <div style="width:100%;  height:180px;
                    display:inline-block;
                    margin-bottom: 10px; ">
            <div style="width:20%; height:180px;float:left; border-right:1px solid #ccc;">
                <span style="font-size: 40px;">${result.menuunq }</span>
            </div>
            <div style="width:40%; height:180px;float:left; text-align: left; 
                        padding-left:10px;">
               ${result.price } 
                <span style="display:inline-block; border-radius: 0.5em;
                    background: #ccc; padding: 3px 7px 3px 7px;
                    margin:5px 0 5px 10px;
                    font-family: jua;
                    ">
                   ${result.menukeyword }
                </span>
                
                <span style="display:block;">${result.menuname }</span>
                <span style="display:block;">${result.menuname }</span>
                <span style="display:block;" >${result.menuname }</span>
                <span style="display:block;">${result.menukeyword }</span>
            </div>       
            <div style="width:40%; height:180px;float:left; text-align: left;">
                    <button type="reset" class="btn2" onclick=""><h3>접수</h3></button>
                    <button type="submit" class="btn3" onclick=""><h3>거부</h3></button>
            </div>
            </c:forEach>
            <!-- 2번째-->
            <div style="width:20%; height:180px;float:left; border-right:1px solid #ccc;">
                <span style="font-size: 40px;">13:22</span>
            </div>
            <div style="width:40%; height:180px;float:left; text-align: left; 
                        padding-left:10px;">
                [메뉴 4개] 
                <span style="display:inline-block; border-radius: 0.5em;
                    background: #ccc; padding: 3px 7px 3px 7px;
                    margin:5px 0 5px 10px;
                    font-family: jua;
                    ">
                    후불/현금
                </span>
                
                <span style="display:block;">A메뉴1개 / B메뉴3개 / C메뉴1개</span>
                <span style="display:block;">[요청사항] 맵게해주세요</span>
                <br>
                <span style="display:block;" >서울 송파구 방이동</span>
                <span style="display:block;">010-1234-0000</span>
            </div>       
            <div style="width:40%; height:180px;float:left; text-align: left;">
                    <button type="reset" class="btn2" onclick=""><h3>접수</h3></button>
                    <button type="submit" class="btn3" onclick=""><h3>거부</h3></button>
            </div>
            
           
        </div>
    </section>
	</form>


<!--    사이드 바 부분 ! -->

<style>
.sidebar{
    float:right;
    width:40%; 
    height:auto;
    padding: 10px 10px 10px 10px;
}
.on_btn2 {
    width:100px;
    height:50px;
    background-color:orange;
    color:white
}
.on_btn3 {
    width:100px;
    height:50px;
    background-color:rgb(128, 128, 128);
    text-align: center;
}
.on_btn4 {
    width:100px;
    height:50px;
    background-color:white;
    border-color:orange;
    color:orange
    
}
.on_btn5 {
    width:150px;
    height:50px;
    background-color:rgb(128, 128, 128);
    text-align: center;
}
.bd_textarea {
    width:80%;
    height: auto;

}
</style>
    <!-- 우측 사이드바 -->
    <aside class="sidebar">
        <!-- 주문접수-->
        <div style="border:1px solid #ccc; width:98%; height:auto;">
            <span style="display:inline-block; border-radius: 0.5em;
                    background: #f8cacc; padding: 5px 10px 5px 10px;
                    margin:5px 0 10px 10px;
                    font-family: jua;
                    ">
                주문접수
            </span>
            <div style="width:100%; height:auto; ">
                <div style="width:100%; margin-bottom:10px;">
                    <div style="text-align:center; margin-bottom:10px;">배달 시간을 선택해주세요</div>
                    <div style="text-align:center; margin-bottom:10px;">
                        <button type="" class="on_btn3">20분</button>
                        <button type="" class="on_btn3">30분</button>
                        <button class="on_btn3">40분</button>
                    </div>
                    <div style="text-align:center;">  
                        <button class="on_btn3">50분</button>
                        <button class="on_btn3">60분</button>
                        <button class="on_btn3">90분</button>
                    </div>
                </div>
                <div style="text-align:center;">
                    <textarea placeholder="원하는 시간이 없는 경우 직접 입력해주세요" class="bd_textarea" name="" id=""></textarea>
                </div> 
                <div style="text-align:center; margin-bottom:10px;" >
                    <button type="button" onclick="window.close();" class="on_btn4">접수완료</button>
                </div>  
            </div>
        </div>

        <!-- 주문거부 -->
        <div style="border:1px solid #ccc; width:98%; height:auto;
                    margin:10px 0 10px 0; ">
            <span style="display:inline-block; border-radius: 0.5em;
                    background: #f8cacc; padding: 5px 10px 5px 10px;
                    margin:5px 0 10px 10px;
                    font-family: jua;
                    ">
                주문거부
            </span>
            <div style="width:100%; height:auto; ">
                <div style="text-align:center; margin-bottom:10px;">거부 사유 선택해주세요</div>
                <div style="text-align:center; margin-bottom:10px; width:100%;">
                    <button type="" class="on_btn5" style="width:150px;">배달불가지역</button>
                    <button type="" class="on_btn5">메뉴 및 업소정보 다름</button>
                </div>
                <div style="text-align:center; margin-bottom:10px; width:100%;">  
                    <button class="on_btn5">재료소진</button>
                    <button class="on_btn5">배달지연</button>
                </div>
                <div style="text-align:center; margin-bottom:10px; width:100%;">
                    <button class="on_btn5">고객정보부정확</button>
                    <button class="on_btn5">기타</button>
                </div>
                <div style="text-align:center; margin-bottom:10px;" >
                    <button type="button" onclick="window.close();" class="on_btn4">확인</button>
                </div>     
             </div>
            </div>    
        <!-- 주문거...? -->

        <div style="border:1px solid #ccc; width:98%; height:auto; 
                    margin:10px 0 10px 0;">
            <span style="display:inline-block; border-radius: 0.5em;
                    background: #f8cacc; padding: 5px 10px 5px 10px;
                    margin:5px 0 10px 10px;
                    font-family: jua;
                    ">
                주문취소
            </span>
            <div style="width:100%; height:auto; ">
                <div style="text-align:center; margin-bottom:10px;">최소 사유 선택해주세요</div>
                <div style="text-align:center; margin-bottom:10px; width:100%;">
                    <button type="" class="on_btn5" style="width:150px;">고객요청</button>
                    <button type="" class="on_btn5">업소사정</button>
                </div>
                <div style="text-align:center; margin-bottom:10px; width:100%;">  
                    <button class="on_btn5">배달불가</button>
                    <button class="on_btn5">재료소진</button>
                </div>
                <div style="text-align:center; margin-bottom:10px; width:100%;">
                    <button class="on_btn5">고객정보부정확</button>
                    <button class="on_btn5">기타</button>
                </div>
                <div style="text-align:center; margin-bottom:10px;" >
                    <button type="button" onclick="window.close();" class="on_btn4">확인</button>
                </div>  

            </div>
        </div>
    </aside>

    </div>
    <footer>
      <%@ include file = "../include/main_footer.jsp" %>
    </footer>
</div>
</body>
</html>
