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
    src: url("fonts/BsMJUA_otf.otf");
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
	var data_len = datas.length;
	datas = datas.substring(0,(data_len-2));
	
	$("#menuname").val(datas);
	
	var formdata = $("#orderFrm").serialize();

	console.log(formdata);
	$.ajax({
 		type : "post",
 		url : "orderSub.do",
 		data : formdata,
 		
 		datatype : "text",
 		success :	function(data) {
 			if(data == "ok") {
 				document.location.reload();
 				alert("주문이 전송되었습니다. [ 주문접수 대기중 ]");
 			} else if(date=="er1" ) {
 				alert("로그인해주세요.");
 				location.href="memberlogin.do";
 			} else {
 			
 				alert("시스템 오류입니다. 다시 시도해주세요.");
 			}
 		},
 		error : function() {
 			alert("오류. 처리실패");
 		}	

 	});
}

function fn_delete(u) {
	
	$("#pindex").val(u);
	

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
	$("#price").val(total+${vo.fee});
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
    <section class="content" >
        <!-- 가게 소개 & 리뷰 -->
        <div class="str_div_info1">
            <!-- 가게이름 -->
            <div class="str_div_info2">
                ${vo.storename } (${vo.storerate })</div>
            <!-- 가게 주문시 유의정보 -->
            <div class="str_div_info3">
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
            <div class="str_div_info4">
                <span class="str_sp_info1" style="text-align:left;">리뷰(${reviewTot }건)</span>
                <span class="str_sp_info1" >더보기></span>
            </div>
            <div class="str_div_info5">
            <div>
                <table>
                    <tr>
                        <td>
                            <img src="/img/addpic.png" 
                                class="str_img_reviewtype1"
                                alt="리뷰사진">
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        </div>
        <!-- 검색/키워드탭-->
        <div class="str_keyword" >
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
				<c:if test="${empty list }">
				메뉴 준비중입니다. 
				</c:if>
            </table>
             <form name="frm" id="frm">
               <input type="hidden" name="userid" id="userid" value="${vo.userid }">
              <input type="hidden" name="storeunq" id="storeunq" value="${vo.storeunq }">
               <input type="hidden" name="menuunq" id="menuunq" value="0">
                 <input type="hidden" name="pindex" id="pindex" value="0">
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
                    <div style="width:10%; float:left; cursor: pointer;" onclick="fn_delete('${p.pindex}')"> 
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
            <input type="hidden" id="price" name="price" value="${vo.total + vo.fee} ">
          	<input type="hidden" id="menuname" name="menuname" value="">
        	<input type="hidden" id="phone" name="phone" value="${mvo.userphone }">
            <input type="hidden" id="addr" name="addr" value="${mvo.useraddr1 }">
            
            
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
	                       <img src="<c:url value='/img/kakaopay.png'/>" alt="카카오페이" width="80" name="" id="">
	                   		
	                   		</div>
                        
                        </td>
                        <td>
                        	<div style="width:120px; height: auto; 
                  			 margin:5px; text-align: center;
                   			cursor: pointer;" 
                   			onclick="">
	                       <img src="<c:url value='/img/nPay.png'/>" alt="네이버페이" style="border-radius: 1em;"width="80" name="" id="">
	                   		
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
