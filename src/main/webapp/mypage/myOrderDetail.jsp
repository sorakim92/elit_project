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
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=&callback=initMap&submodules=geocoder"></script>

   <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

	
	
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



   
 <!-- 마이페이지 부분 시작 -->   
<style>
body {
	font-size:18px;
	
	background : #eee;
}
.pop_wrapper {	
	width : 1000px;
	margin : auto;
	margin-top: 30px;
}
.div_wrap {
	width:1000px;
}
.pop_title {
	font-family : jua;
	font-size : 20px;
	margin-bottom : 15px;
	margin-left : 5px;
}
.detail_div1_left {
	width:50%;
	hieght:auto;
	float:left;
/* 	background: #eee; */
}
.detail_div1_right {
	width:45%;
	height:auto;
	float:right;
/* 	background: pink; */
}
.pop_od_div1 {
	border-radius : 1em;
	border : 1px solid #eee;
	padding: 10px;
	margin-bottom : 10px;
	background : #f7f7f7;
}
.pop_od_div2 {
	border-radius : 1em;
	border : 1px solid #eee;
	padding: 10px;
	margin-bottom : 10px;
	height:410px;
	background:#f7f7f7;
}

</style>
<script>
var map = null;
var HOME_PATH = window.HOME_PATH || '.';

function initMap() {
    map = new naver.maps.Map('map', {
    center: new naver.maps.LatLng(37.3595316, 127.1052133),
	zoom: 10
    });
	var address = $("#address").val();
	var infoWindow = new naver.maps.InfoWindow({
		  anchorSkew: true
		});

		map.setCursor('pointer');

	

		function searchAddressToCoordinate(address) {
		  naver.maps.Service.geocode({
		    query: address
		  }, function(status, response) {
		    if (status === naver.maps.Service.Status.ERROR) {
		      if (!address) {
		        return alert('Geocode Error, Please check address');
		      }
		      return alert('Geocode Error, address:' + address);
		    }

		    if (response.v2.meta.totalCount === 0) {
		      return alert('No result.');
		    }

		    var htmlAddresses = [],
		      item = response.v2.addresses[0],
		      point = new naver.maps.Point(item.x, item.y);
		    
		    var marker = new naver.maps.Marker({
		        position: new naver.maps.LatLng(item.x, item.y),
		        map: map
		    });
		    
		    map.setCenter(point);
		    infoWindow.open(map, point);
		  });
		}
		
		var marker = new naver.maps.Marker({
	        position: new naver.maps.LatLng(${vo.storelatitude}, ${vo.storelongitude}),
	        map: map
	    });
		

}


//map.fitBounds(naver.maps.LatLngBounds.bounds(new naver.maps.LatLng(items.x, items.y),
//new naver.maps.LatLng(${vo.storelatitude }, ${vo.storelongitude })));

//var urlMarker = new naver.maps.Marker({
//position: new naver.maps.LatLng(${vo.storelatitude }, ${vo.storelongitude }),
//map: map,
//title: 'urlMarker',
//icon: HOME_PATH +"/img/example/pin_default.png",
//animation: naver.maps.Animation.BOUNCE
//});

//naver.maps.Event.addListener(urlMarker, 'click', function() {
//if (urlMarker.getAnimation() !== null) {
//urlMarker.setAnimation(null);
//} else {
//urlMarker.setAnimation(naver.maps.Animation.BOUNCE);
//}
//});

//var imageMarker = new naver.maps.Marker({
//position: new naver.maps.LatLng(items.x, items.y),
//map: map,
//title: 'imageMarker',
//icon: HOME_PATH +"/img/example/pin_default.png",
//animation: naver.maps.Animation.BOUNCE
//});

//});








</script>
<body>
<input type="text" id="address" name="addr" value="${vo.addr }">
<div class="pop_wrapper">
     <div class="pop_title">
         주문상세보기
     </div>

    <!--주문내역-->

        <div class="div_wrap">
        	<div class="detail_div1_left">
        		
        		<div class="pop_od_div1">
	        		<span style="font-family:jua;"> ${vo.storename } </span>
	        		<br><br>
	        		배송현황 : <span style="font-family:jua; color:#ff6e74">${vo.acctime } </span>
	        		<br>
	        		<span> 주문일시 : ${vo.rdate }</span>
        		</div>
        		
        		<div class="pop_od_div1">
        			<span style="font-family:jua;"> 주문내용 </span>
        			<br><br>
        			<span>${vo.menuname }</span>
        			<br><br>
        			<span> 결제방법 : ${vo.method }</span> <br>
        			<span style="font-family: jua;"> 총 결제금액 : <fmt:formatNumber value="${vo.price }"/></span>
        			
        		</div>
        		
        		<div class="pop_od_div1">
        		<span style="font-family:jua;">배달주소</span><br>
        		<span>${vo.addr }</span><br>
        		<br>
        		<span style="font-family:jua;">(고객) 연락처</span><br>
        		${vo.phone }<br><br>
        		<span style="font-family:jua;">(가게) 연락처</span><br>
        		${vo.storephone }
        		</div>
        	</div>
        	<div class="detail_div1_right">
        		<div class="pop_od_div1">
        		<span style="font-family:jua;">사장님께</span><br>
        		${vo.comment1 }
        		<br><br>
        		<span style="font-family:jua;">라이더님께</span><br>
        		${vo.comment2 }
        		</div>
        		
        		
        		<div id="map"  style="width:100%;height:400px;">
        		
        		 </div>

        	
        	</div>
           
        

</div>
</div>



</body>
</html>

