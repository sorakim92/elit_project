<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
 
 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>main</title>
    	<!-- footer header css -->
	<link rel="stylesheet" href="css/headFooter.css">
    <!-- css -->
    <link rel="stylesheet" href="css/mainLayout.css">
    
    <!-- 주소 api -->
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    
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
body {
	font-family : hanna;
}
@font-face {
    font-family: "hanna";
    src: url("../fonts/BMHANNAAir_otf.otf");
}
@font-face {
    font-family: "jua";
    src: url("../fonts/BMJUA_otf.otf");
}
a:link {
	color: #7a7a7a;
	text-decoration: none;
}
a:visited {
	color: #7a7a7a;
	text-decoration: none;
}
a:hover, .cap:hover{
	color: black;
	text-decoration: none;
}
.cap:link {
	color:black;
}
.cap:visited {
	color: black;
}
.cap:hover {
	color: #7a7a7a;
	text-decoration: none;
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
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("addr").value = extraAddr;
                
                } else {
                    document.getElementById("addr").value = '';
                }
				addr = addr+' '+extraAddr;
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                //document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("addr").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("addr").focus();
            }
        }).open();
    }
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
    <section style="height:auto;">
     
        <div class="div_addr" style="height:auto;">
            <img id="current_loc" src="<c:url value='/img/currentLoc.png'/>" width="20px" height="20px" alt="위치설정아이콘">
            <!-- 주소검색 -->
            <input type="text" name="addr" id="addr" class="" style="width:400px; height:30px;"> 
          	<button type="button" id="btn_addr_search"
          				class="btn btn-outline-warning" 
          				style="border-color: #f8cacc; color: black;"
          				onclick="sample6_execDaumPostcode()">검색</button>
		</div>

		
    <!-- 카테고리 -->
    <article class="article1">
        <div class="div_cate">
           <table class="cate_tbl">
                <tr>
                    <td>
                    	<div  style=" cursor: pointer;" onclick="location.href='todayTopList.do';">
	                		 <img src="<c:url value='/img/todayRank.png'/>" width="150" height="150" alt="사진">
	                		 <br>오늘뭐먹지
                        </div>
                    </td>
                    <td>
                    	<div style=" cursor: pointer;" onclick="location.href='KRfoodList.do?cateunq=111';">
	                    	<img src="<c:url value='/img/mKRfood.jpg'/>" width="200" height="150" alt="사진">
	                		<br>한식
                        </div>
                    </td>
                    <td>
                    	<div style=" cursor: pointer;" onclick="location.href='KRfoodList.do?cateunq=222';">
	                    	<img src="<c:url value='/img/mChicken.png'/>" width="200" height="150" alt="사진">
	                		<br>치킨
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                    	<div style=" cursor: pointer;" onclick="location.href='KRfoodList.do?cateunq=333';">
	                    	<img src="<c:url value='/img/mJPfood.jpg'/>" width="200" height="150" alt="사진">
	                		<br>일식
                        </div>
                    </td>
                    <td>
                    	<div style=" cursor: pointer;" onclick="location.href='KRfoodList.do?cateunq=444';">
	                    	<img src="<c:url value='/img/mWestern.jpg'/>" width="200" height="150" alt="사진">
	                		<br>양식
                        </div>
                    </td>
                    <td>
                    	<div style=" cursor: pointer;" onclick="location.href='KRfoodList.do?cateunq=555';">
	                    	<img src="<c:url value='/img/mCNfood.jpg'/>" width="200" height="150" alt="사진">
	                		<br>중식
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                    	<div style=" cursor: pointer;" onclick="location.href='KRfoodList.do?cateunq=666';">
	                    	<img src="<c:url value='/img/mSalad.jpg'/>" width="200" height="150" alt="사진">
	                		<br>샐러드/샌드위치
                        </div>
                    </td>
                    <td>
                    	<div style=" cursor: pointer;" onclick="location.href='KRfoodList.do?cateunq=777';">
	                    	<img src="<c:url value='/img/mBunsik.jpg'/>" width="200" height="150" alt="사진">
	                		<br>분식
                        </div>
                    </td>
                    <td>
                    	<div style=" cursor: pointer;" onclick="location.href='KRfoodList.do?cateunq=888';">
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
                <caption class="article3_tbl_cap" style=""><a href="nBoardList.do" class="cap">공지사항</a></caption>
                <colgroup>
                    <col width="*" />
                    <col width="25%" />
                </colgroup>
                <c:forEach var="result" items="${list }" end="4">
                <c:set var="titleValue"  value="${result.title }" />
                <tr>
                    <td style="text-align: left; padding:5px;">
                       	<a href="nboardDetail.do?unq=${result.unq }">
						${fn:substring(titleValue,0,30) }
						</a>
                    </td>
                    <td>
                       ${result.rdate }
                    </td>
                </tr>
                </c:forEach>
            </table>
        </div>
  

        <div class="rdiv" >
            <table class="main_b_tbl"> 
                <caption class="article3_tbl_cap" ><a href="faqList.do" class="cap">자주묻는질문</a></caption>
                <colgroup>
                    <col width="*" />
                    <col width="25%" />
                </colgroup>
               <c:forEach var="result" items="${flist }" end="4">
                <c:set var="titleValue"  value="${result.title }" />
                <tr>
                    <td style="text-align: left; padding:5px;">
                       	<a href="faqList.do">
						${fn:substring(titleValue,0,30) }
						</a>
                    </td>
                    <td>
                       ${result.rdate }
                    </td>
                </tr>
                </c:forEach>
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
