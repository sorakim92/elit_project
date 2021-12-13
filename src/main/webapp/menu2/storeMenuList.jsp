<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>sample</title>
    
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
   	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<!-- footer header css -->
	<link rel="stylesheet" href="css/headFooter.css">
</head>
<style>
@font-face {
    font-family: "hanna";
    src: url("fonts/BMHANNAAir_otf.otf");
}
@font-face {
    font-family: "jua";
    src: url("fonts/BsMJUA_otf.otf");
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

.search {
    width: 500px;
    height: 50px;
    float : left;
    margin: 20px 0 0 0;
    text-align: right;
}

section {
	width:1000px;
	height:auto;
	/*background-color:#92a8d1;*/
	text-align:center;
    min-height: 550px;
}



.sub_kw_tab {
    width:100%;
    padding: 10px;
    float:left;

}
.sub_kw_tab li {
    font-size:14px;
    list-style:none;
    float:left;
    padding-left:10px;
    padding-right:10px;
} 

.sidebar{
    float:right;
   
    width:40%; 
    height:auto;
    padding: 10px 10px 10px 10px;
} 
</style>

<script>

function fn_pay() {

	var len = $(".menunames").length;
	
	var menulist = new Array(len);
	var menuqty = new Array(len);
	var datas = "";
	for(var i=0; i<len; i++){
		menulist[i] = $(".menunames").eq(i).html();
		menuqty[i] = $(".qty").eq(i).val();
		datas += menulist[i]+": "+menuqty[i]+"개, ";
	}
	alert(datas);
	//alert(len);
	//alert( $(".menunames").eq(1).html() );
	//alert($(".qty").eq(0).val());
	//$("#totalPrice").text(total+${vo.fee});
	//$("#s_totalPrice").val(total+${vo.fee});

	
}

function fn_delete(u) {
	
	$("#menuunq").val(u);
	

	var formdata = $("#frm").serialize();
	console.log(formdata);
	
 	$.ajax({
 		type : "post",
 		url : "deleteOrderMenu.do",
 		data : formdata,
 			
 		datatype : "text",
 		success :	function(data) {
 			if(data == "ok") {
 				document.location.reload();
 			} else {
 				alert("시스템 오류입니다. 다시 시도해주세요.");
 			}
 		},
 		error : function() {
 			alert("오류. 처리실패");
 		}	

 	});
}

function fn_update(a,p,i) {
	
	
	
	var price = p;
	
	var qty = $("input[name='qty_"+i+"']").val();
	//alert(qty);
	
	qty = Number(qty);
	if(a == '+') {
		qty++;
	} else if (a == '-') {
		qty--;
		if(qty<0) qty=0;
	}
	$("input[name='qty_"+i+"']").val(qty);
	
	price = p * qty;
	
	
	$("input[name='e_price"+i+"']").val(price);
	
	var len = $(".t_price").length;
	
	var pp = new Array(len);
	var total = 0;
	for(var n=0; n<len; n++){
		pp[n] = $(".t_price").eq(n).val();
		total += Number(pp[n]);
	}
	//alert(total);
	
	$("#totalPrice").text(total+${vo.fee});
	$("#s_totalPrice").val(total+${vo.fee});
}


function fn_addOrder(u) {

	$("#menuunq").val(u);
	
	
	/*
	var menuunq = u;
	var param = {"menuunq":menuunq}
	//console.log(parm); */
	
	
	var formdata = $("#frm").serialize();
	console.log(formdata);
	
 	$.ajax({
 		type : "post",
 		url : "addOrderMenu.do",
 		data : formdata,
 			
 		datatype : "text",
 		success :	function(data) {
 			if(data == "focus_orderlist") {
 				alert("주문표에 이미 추가되어있는 메뉴입니다. ");
 				$("#qty").focus();
 				//var qq = Number($("#qty").val()) + 1;
 				//$("#qty").val(qq);
 				
 			} else if(data == "ok") {
 				document.location.reload();
 			
 			} else {
 				alert("시스템 오류입니다. 다시 시도해주세요.");
 			}
 		},
 		error : function() {
 			alert("오류. 처리실패");
 		}	

 	});
	
	
}
</script>
<body>
<div class="wrapper">
    <div class="main" style="min-height: 100%; padding-bottom:100px; flex:1;">
    <header class="width:100%; height:50px;">
        <%@include file = "../include/main_header.jsp" %>
    </header>
        
    <nav>
      
    </nav>
    <div>    
    <section class="content" style="border-right:1px solid #ccc; width:60%; float:left;"
            >
        <!-- 가게 소개 & 리뷰 -->
        <div style="border:1px solid #ccc; width:98%; height:210px; padding:10px 30px 10px 30px;">
            <!-- 가게이름 -->
            <div style=" text-align:left; 
                        font-size: 20px; font-family:JUA;  
                        width:45%; height:40px;
                        line-height: 2.0;
                        float:left; margin-right:20px;">
                ${vo.storename } (${vo.storerate })</div>
            <!-- 가게 주문시 유의정보 -->
            <div style=" text-align:right; 
                font-size: 15px; font-family:hanna;  width:50%; 
                float:left;">
                <table style="width:100%;">
                    <tr>
                        <td>최소주문</td>
                        <td>가격...!</td>
                    </tr>
                    <tr>
                        <td>배달비</td>
                        <td>${vo.fee }</td>
                    </tr>
                    <tr>
                        <td>배달소요시간</td>
                        <td></td>
                    </tr>
                </table>
            </div>
            <!-- 리뷰부분 시작 -->
            <div style=" width:100%; height:20px; 
                        float:left; margin:10px 0 5px 0;">
                <span style="display:block; width:50%; text-align: left; float:left; 
                                font-size:12px;">리뷰(${reviewTot }건)</span>
                <span style="display:block; width:50%; text-align: right; float:left;
                                font-size: 12px;">더보기></span>
            </div>
            <div style=" width:100%; height:85px; 
                        float:left; margin:5px 0 10px 0; padding:5px;">
            <div>
                <table>
                    <tr>
                        <td>
                            <img src="/img/addpic.png" 
                                style="width:70px; height:70px; 
                                    border:1px solid #ccc; padding:5px; margin-right:5px;" 
                                alt="리뷰사진">
                        </td>
                        <td>
                            <img src="/img/addpic.png" 
                                style="width:70px; height:70px; 
                                    border:1px solid #ccc; padding:5px; margin-right:5px;" 
                                alt="리뷰사진">
                        </td>
                        <td>
                            <img src="/img/addpic.png" 
                                style="width:70px; height:70px; 
                                    border:1px solid #ccc; padding:5px; margin-right:5px;" 
                                alt="리뷰사진">
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        </div>
        <!-- 검색/키워드탭-->
        <div style="width:100%; 
                    height:40px; border-bottom: 1px solid #ccc;">
            <ul class="sub_kw_tab">
                <li><img src="/img/mag.png" style="width:12px; height:12px;">검색</li>
                <li>인기메뉴</li>
                <li>추천메뉴</li>
                <li>키워드</li>
                <li>키워드</li>
            </ul>
        </div>
         <!--메뉴-->
         <div style="width:100%;">
            <table style="width:100%; text-align: left;">
            
                <colgroup>
                    <col width="30%" />
                    <col width="*" />
                </colgroup>
               
             	
                <c:forEach var="result" items="${list }">
				
                <tr>
                    <td rowspan="4">
                        <div style="width:130px; height: 130px; border: 1px solid #f8cacc; 
                                    border-radius: 2em;
                        margin:5px 20px 10px 20px; text-align: center;">
                            <img src="/img/addpic.png" alt="업체대표사진" width="100" height="100" name="" id="">
                        </div>
                    </td>
                    <td style="font-weight: bold; font-size:16px;"><span>${result.menuname}</span></td>
                    <td><span style="font-size:25px; font-weight: bold; cursor: pointer;" onclick="fn_addOrder('${result.menuunq }')">+</span></td>
                </tr>
                <tr>
                    <td><span>${result.menuinfo }</span></td>
                </tr>
                <tr>
                    <td>${result.price }</td>
                </tr>
                <tr >
                    <td style="padding-bottom:10px;">한줄평~~~</td>
                </tr>
                
                
				</c:forEach>
				
				
            </table>
             <form name="frm" id="frm">
               <input type="hidden" name="userid" id="userid" value="${vo.userid }">
              <input type="hidden" name="storeunq" id="storeunq" value="${vo.storeunq }">
               <input type="hidden" name="menuunq" id="menuunq" value="">
            </form>
        </div>
    </section>

    <!-- 우측 사이드바 : 주문표, 결제등 -->
    <aside class="sidebar">
        <!-- 주문표 -->
        <div style="border:1px solid #ccc; width:98%; height:auto;">
            <span style="display:inline-block; border-radius: 0.5em;
                    background: #f8cacc; padding: 5px 10px 5px 10px;
                    margin:5px 0 10px 10px;
                    font-family: jua;
                    ">
                주문표
            </span>
            <div style="width:100%; height:auto; ">
           
            <c:set var="i" value="0" />
         
            <c:forEach var="p" items="${preList }">
           		 
                <div style="width:100%; height: 60px;  margin-bottom:10px;">
                    <div style="padding:0 10px 5px 10px; width:80%; float:left; 
                                font-weight: bold;" >
                        <span id="menunames" class="menunames">${p.menuname }</span> 
                    </div>
                    <div style="width:10%; float:left; cursor: pointer;" onclick="fn_delete('${p.menuunq}')"> 
                        <img src="img/x.png" alt="x"
                        style="text-align:right; width:15px; height:15px;" />
                    </div>
                    <div style="padding:0 10px 5px 10px; width:60%; float:left;">
                        ${p.price }  
                    </div>
                    <div style="width:35%; float:right; font-size: 14px;"> 
                        
                      	<img src="img/minus.png" alt="-"
                       			style="text-align:right; width:14px; height:14px; cursor: pointer;" 
                       			onclick="fn_update('-','${p.price}','${p.menuunq }')"/>
                      
                        <input type="text" class="qty" name="qty_${p.menuunq }" id="qty" value="${p.qty }" size ="2" readonly>
                        
                        <img src="img/plus.png" alt="+"
	                        	style="text-align:right; width:13px; height:13px; cursor: pointer;" 
	                        	onclick="fn_update('+','${p.price}','${p.menuunq }')" />
	                  
	             	<input type="hidden" class = "t_price" id="e_price" name="e_price${p.menuunq }" value="${p.price }"> 
           
                    </div>
                </div>
             
			</c:forEach>
               
            	
            </div>
        </div>

        <!-- 결제금약 -->
        <div style="border:1px solid #ccc; width:98%; height:auto; 
                    margin:10px 0 10px 0;">
            <span style="display:inline-block; border-radius: 0.5em;
                    background: #f8cacc; padding: 5px 10px 5px 10px;
                    margin:5px 0 10px 10px;
                    font-family: jua;">
                결제금액
            </span>
            <div style="width:100%; height:auto; ">
                <table style="width:98%;margin:5px 0 10px 10px;">
                    <colgroup>
                        <col width="70%" />
                        <col width="*" />
                    </colgroup>
                    <tr>
                        <td>배달비</td>
                        <td>${vo.fee }</td>
                    </tr>
                    <tr>
                        <td>쿠폰</td>
                        <td>
                            <button type="button" class="" id="">
                                조회</button>
                        </td>
                    </tr>
                    <tr>
                        <td>총주문금액(배달비 포함)</td>
                        <td><span id="totalPrice">${vo.total + vo.fee}</span></td>
                    </tr>
                </table>
                
               
            </div>
        </div>
        <!-- 결제하기 -->

        <div style="border:1px solid #ccc; width:98%; height:auto; 
                    margin:10px 0 10px 0;">
            <span style="display:inline-block; border-radius: 0.5em;
                    background: #f8cacc; padding: 5px 10px 5px 10px;
                    margin:5px 0 10px 10px;
                    font-family: jua;
                    ">
                주문하기
            </span>
            <form name="orderFrm" id="orderFrm">
            
            <input type="hidden" name="userid" id="userid" value="${vo.userid }">
            <input type="hidden" name="storeunq" id="storeunq" value="${vo.storeunq }">
            <input type="text" id="s_totalPrice" name="s_totalPrice" value="${vo.total }">
        
            
            
            <div style="width:100%; height:auto; ">
                <table style="width:98%;margin:5px 0 10px 10px; line-height: 1.5;">
                    <colgroup>
                         <col width="33%" />
                        <col width="33%" />
                        <col width="*" />
                    </colgroup>
                    <tr>
                        <td colspan="3">${mvo.useraddr1 }</td>
                    </tr>
                    <tr>
                        <td colspan="3"><span style="font-size:14px;">${mvo.userphone }</span></td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <div style="line-height: 1.3; "> 
                                <span style="font-weight: bold;">(요청사항) 사장님께 </span>
                                <br>
                                <span style="font-size: 14px;">
                                <input type="text" class="" id="comment1" name="comment1">         
                                </span>
                            </div>
                        </td>
                    </tr>
                     <tr>
                        <td colspan="3">
                            <div style="line-height: 1.3; "> 
                                <span style="font-weight: bold;">(요청사항) 라이더님께 </span>
                                <br>
                                <span style="font-size: 14px;">
                                <input type="text" class="" id="comment2" name="comment2">         
                                </span>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3"><span style="font-weight: bold;">결제수단</span></td>
                    </tr>
                    <tr>
                        <td>
	                        <div style="width:100%; height: auto; 
	                  			 margin:5px; text-align: center;
	                   			cursor: pointer;" 
	                   			onclick="">
	                       <img src="<c:url value='/img/cardpay.png'/>" alt="카드결제" width="50" height="50" name="" id="">
	                   		카드
	                   		</div>
                        </td>
                        	
                        <td>
                        	<div style="width:120px; height: auto; 
                  			 margin:5px; text-align: center;
                   			cursor: pointer;" 
                   			onclick="">
	                       <img src="<c:url value='/img/kakaopay.png'/>" alt="카카오페이" width="90" name="" id="">
	                   		
	                   		</div>
                        
                        </td>
                        <td>
                        	<div style="width:120px; height: auto; 
                  			 margin:5px; text-align: center;
                   			cursor: pointer;" 
                   			onclick="">
	                       <img src="<c:url value='/img/npay.png'/>" alt="네이버페이" width="90" name="" id="">
	                   		
	                   		</div>
                        
                        </td>
                    </tr>
                </table>
                <div style="text-align: right; padding-right: 10px; cursor: pointer;"
                		onclick="fn_pay()"> 
                    <span style="display:inline-block; border-radius: 0.5em;
                    background: #f8cacc; padding: 5px 10px 5px 10px;
                    margin:5px 0 10px 10px;
                    font-family: jua; ">
                결제하기
            </span>
                </div>
            </div>
            </form>
        </div>
    </aside>

    </div>
    </div>
    <footer>
             <%@include file = "../include/main_footer.jsp" %>

    </footer>

</div>
</body>
</html>
