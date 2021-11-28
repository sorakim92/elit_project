<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>main</title>
    <!-- 카카오맵 api -->
    <script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ca0677edae05b7ec94acd37b20938aa7"></script>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ca0677edae05b7ec94acd37b20938aa7&libraries=services"></script>
    
    
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
    <!--  	부트스트랩 -->
    <link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<style>
@font-face {
    font-family: "hanna";
    src: url("../fonts/BMHANNAAir_otf.otf");
}
@font-face {
    font-family: "jua";
    src: url("../fonts/BMJUA_otf.otf");
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
	height:150px;
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
    width: 70px;
    height: 50px;
    float: right;
    margin: 20px 50px 0 0;
    text-align: right;
}
.div_addr {
   
    width: 1000px;
    height: 70px;
    text-align: center;
    line-height: 3.0;
}

section {
	width:1000px;
	height:auto;
	/*background-color:#92a8d1;*/
	text-align:center;
    min-height: 550px;
}


.footer {
	width:100%;
    height:100px;
	background-color:#ccc;
 
    clear:both;
}

.article1 {
    width:1000px;
	height:auto;
	/*background-color:#92a8d1;*/
	text-align:center;
}
.article2 {
    width:1000px;
	height:300px;
    border: 1px solid #ccc;
	/*background-color:#92a8d1;*/
	text-align:center;
}
.article3 {
    width:1000px;
    height:300px;
    border: 1px solid #ccc;
    margin: 10px 0 10px 0;
}
.ldiv{
    float:left;
    padding:10px;
	width:48%;
	height:300px;
	border:1px solid #999900;
	
}
.rdiv{
    float:right;
    padding:10px;
	width:48%;
	height:300px;
	border:1px solid #1c1f49;
}

.main_b_tbl{
    width: 100%;
    height:200px;
    border: 1px solid #ccc;
}
.cate_tbl {
    width : 100%;
}
.cate_tbl td{
	line-height:4.0;
  
}
.div_cate {
	padding:20px;
}
.odr_main_table{
    width:45%;
}
.odr_main_table td{
    text-align: left;
    border:1px solid #ccc;

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

$(function(){
	
	$("#current_loc").click(function(){
		
	
		
		var lat;
		var lon;
		// HTML5의 geolocation으로 사용할 수 있는지 확인합니다 
		if (navigator.geolocation) {
		   
		    // GeoLocation을 이용해서 접속 위치를 얻어옵니다
		    navigator.geolocation.getCurrentPosition(function(position) {
		        
		        var lat = position.coords.latitude, // 위도
		            lon = position.coords.longitude; // 경도
		       
		      
		      });
		    
		} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다
			 alert("GPS_추적이 불가합니다.");

		}
		// 주소-좌표 변환 객체를 생성합니다
		var geocoder = new kakao.maps.services.Geocoder();

		var coord = new kakao.maps.LatLng(lat, lon);
		var callback = function(result, status) {
			 if (status === kakao.maps.services.Status.OK) {
				 console.log("fsdflkj"+ result[0].address.address_name );
			 }
			
		};
		geocoder.coord2Address(coord.getLng(), coord.getLat(), callback);
		
	})

	   
})

</script>
<body>
<div class="wrapper">
    <div class="main" style="min-height: 100%; padding-bottom:100px; flex:1;">
    <header class="width:100%; height:50px;">
              <%@include file = "../include/main_header.jsp" %>
    </header>
        
    <nav>
        서브탭(...nav, banner....???????????)
    </nav>
    <!-- 주소 검색창 -->
    <section>
        <div class="div_addr">
            <img id="current_loc" src="<c:url value='/img/currentLoc.png'/>" width="20px" height="20px" alt="위치설정아이콘">
            <input type="text" name="" id="" class="" style="width:400px; height:30px;"> 
          	<button type="button" id="btn_addr_search"
          				class="btn btn-outline-warning" 
          				style="border-color: #f8cacc; color: black;">검색</button>
        </div>
    <!-- 카테고리 -->
    <article class="article1">
        <div class="div_cate">
           <table class="cate_tbl">
                <tr>
                    <td>
                    	<div  style=" cursor: pointer;" onclick="location.href='#';">
	                		 <img src="<c:url value='/img/todayRank.png'/>" width="150" height="150" alt="사진">
	                		 <br>오늘뭐먹지
                        </div>
                    </td>
                    <td>
                    	<div style=" cursor: pointer;" onclick="location.href='KRfoodList.do';">
	                    	<img src="<c:url value='/img/mKRfood.jpg'/>" width="200" height="150" alt="사진">
	                		<br>한식
                        </div>
                    </td>
                    <td>
                    	<div style=" cursor: pointer;" onclick="location.href='#';">
	                    	<img src="<c:url value='/img/mChicken.jpg'/>" width="200" height="150" alt="사진">
	                		<br>치킨
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                    	<div style=" cursor: pointer;" onclick="location.href='#';">
	                    	<img src="<c:url value='/img/mJPfood.jpg'/>" width="200" height="150" alt="사진">
	                		<br>일식
                        </div>
                    </td>
                    <td>
                    	<div style=" cursor: pointer;" onclick="location.href='#';">
	                    	<img src="<c:url value='/img/mWestern.jpg'/>" width="200" height="150" alt="사진">
	                		<br>양식
                        </div>
                    </td>
                    <td>
                    	<div style=" cursor: pointer;" onclick="location.href='#';">
	                    	<img src="<c:url value='/img/mCNfood.jpg'/>" width="200" height="150" alt="사진">
	                		<br>중식
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                    	<div style=" cursor: pointer;" onclick="location.href='#';">
	                    	<img src="<c:url value='/img/mSalad.jpg'/>" width="200" height="150" alt="사진">
	                		<br>샐러드/샌드위치
                        </div>
                    </td>
                    <td>
                    	<div style=" cursor: pointer;" onclick="location.href='#';">
	                    	<img src="<c:url value='/img/mBunsik.jpg'/>" width="200" height="150" alt="사진">
	                		<br>분식
                        </div>
                    </td>
                    <td>
                    	<div style=" cursor: pointer;" onclick="location.href='#';">
	                    	<img src="<c:url value='/img/mCoffee.jpg'/>" width="200" height="150" alt="사진">
	                		<br>카페/디저트
                        </div>
                    </td>
                </tr>
           </table>
        </div>
        <div style="border:1px solid #ccc; width:100%; height:150px; margin:10px 0 10px 0; ">
            배너
        </div>
    </article>

<!--  현재진행중인 주문이 있으면 띄우기 !  -->
    <article class="article2">
        <img src="" width="300px" height="300px" style="float:left" alt="배달상황지도API">
        <div class="order_detail">
            <table class="odr_main_table">
                <colgroup>
                    <col width="30%" />
                    <col width="*" />
                </colgroup>
                <tr>
                    <td>주문내용</td>
                    <td></td>
                </tr>
                <tr>
                    <td>예상도착시간</td>
                    <td></td>
                </tr>
                <tr>
                    <td>배달주소</td>
                    <td></td>
                </tr>
                <tr>
                    <td>연락처</td>
                    <td></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <div style="text-align: right;">
                            <button type="button" name="" id="">주문문의</button>            
                        </div>
                    </td>
                </tr>
            </table>
        </div>
    </article>
    <article class="article3">
        <div class="ldiv">
            <table class="main_b_tbl">
                <caption style="caption-side: top;">최신푸드트렌드</caption>
                <colgroup>
                    <col width="50%" />
                    <col width="50%" />
                </colgroup>
                <tr>
                    <td>
                        <img src="" width="" height="" alt="사진">
                    </td>
                    <td>
                        <a href="#">title</a>
                    </td>
                </tr>
                <tr>
                    <td>
                        <img src="" width="" height="" alt="사진">
                    </td>
                    <td>
                        <a href="#">title</a>
                    </td>
                </tr>
            </table>
        </div>
  

        <div class="rdiv" >
            <table class="main_b_tbl"> 
                <caption style="caption-side: top;">오늘은 만들어 먹자!</caption>
                <colgroup>
                    <col width="50%" />
                    <col width="50%" />
                </colgroup>
                <tr>
                    <td>
                        <img src="" width="" height="" alt="사진">
                    </td>
                    <td>
                        <a href="#">title</a>
                    </td>
                </tr>
                <tr>
                    <td>
                        <img src="" width="" height="" alt="사진">
                    </td>
                    <td>
                        <a href="#">title</a>
                    </td>
                </tr>
            </table>
        
        </div>
    </article>
    </section>
    </div>
    <footer>
       <%@include file = "../include/main_footer.jsp" %>
    </footer>
</div>
</body>
</html>
