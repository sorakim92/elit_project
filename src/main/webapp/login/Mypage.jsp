<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>    
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원정보수정</title>
  	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<link rel="stylesheet" href="css/headFooter.css">
  	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  
  
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


section {
	width:1000px;
	height:900px;
	/*background-color:#92a8d1;*/
	text-align:center;
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

//다음 주소 펑션
function sample4_execDaumPostcode() {
	    new daum.Postcode({
	        oncomplete: function(data) {
	            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

	            // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
	            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	            var roadAddr = data.roadAddress; // 도로명 주소 변수
	            var extraRoadAddr = ''; // 참고 항목 변수

	            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                extraRoadAddr += data.bname;
	            }
	            // 건물명이 있고, 공동주택일 경우 추가한다.
	            if(data.buildingName !== '' && data.apartment === 'Y'){
	               extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	            }
	            // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	            if(extraRoadAddr !== ''){
	                extraRoadAddr = ' (' + extraRoadAddr + ')';
	            }

	            // 우편번호와 주소 정보를 해당 필드에 넣는다.
	            document.getElementById('sample4_postcode').value = data.zonecode;
	            document.getElementById("sample4_roadAddress").value = roadAddr;
	            document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
	            
	            // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
	            if(roadAddr !== ''){
	                document.getElementById("sample4_extraAddress").value = extraRoadAddr;
	            } else {
	                document.getElementById("sample4_extraAddress").value = '';
	            }

	            var guideTextBox = document.getElementById("guide");
	            // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
	            if(data.autoRoadAddress) {
	                var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
	                guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
	                guideTextBox.style.display = 'block';

	            } else if(data.autoJibunAddress) {
	                var expJibunAddr = data.autoJibunAddress;
	                guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
	                guideTextBox.style.display = 'block';
	            } else {
	                guideTextBox.innerHTML = '';
	                guideTextBox.style.display = 'none';
	            }
	        }
	    }).open();
	}

$(function() {
		$("#btn3").click(function(){ 	
			
			
			if( $("#userpw").val() == "" ) {
				alert("암호을 입력해주세요.");
				$("#userpw").focus();
				return false;
			}
			if( $("#reuserpw").val() == "" ) {
				alert("암호 확인를 입력해주세요.");
				$("#reuserpw").focus();
				return false;
			}
			if( $("#reuserpw").val() != $("#userpw").val() ) {
				alert("암호확인를 확인해주세요.");
				$("#userpw").focus();
				return false;
			}
			if( $("#userphone").val() == "" ) {
				alert("핸드폰 번호를 입력 해주세요.");
				$("#userphone").focus();
				return false;
			}
			if( $("#email").val() == "" ) {
				alert("이메일을 입력해주세요.");
				$("#email").focus();
				return false;
			}
			
			
			var formData = $("#frm").serialize();
			$.ajax({
				type : "post",
				url  : "memberMypageSave.do",
				data : formData,
				dataType : "text",  // 성공여부 (ok)
				
				
				success : function(data) {
					if (data == "ok") {
						alert("저장완료");
						location="memberMypage.do";
					} else {
						alert("저장실패");
					}
				},	
				error : function() {
					alert("오류발생");
				}
			});
		});
	});



</script>
<body>
<div class="wrapper">
    <div class="main" style="min-height: 100%; padding-bottom:100px; flex:1;">
    <header class="width:100%; height:50px;">
         <div class="logo" style=" cursor: pointer;" onclick="location.href='mainPage.do';">
    		<img src="<c:url value='/img/logo.png'/>" width="200px" height="100px" alt="로고"/>
            <h4>마이페이지</h4>
        </div>
        <div class="search">
            
          
        </div> 
        <!-- 기능: 로그아웃상태에서는 로그인 버튼,  로그인상태에서는 마이페이지 | 로그아웃 -->
        <div class="login">
            <button type="button" class="btn btn-outline-warning" style="border-color: #f8cacc; color: black;">로그인</button>
        </div>
    </header>
        
    <nav>
        <div class="" >
          
            <a href="progressorderList.do"><font size="4" color="black">주문내역 | </font></a>
            <a href="membermypage.do"><font size="4">회원정보수정 |</font></a>
            <a href=""><font size="4" color="black">문의내역 |</font></a>
            
        </div>
    </nav>
        
    
    <form name="frm" id="frm"> 
   
    <div style="">
        아이디&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="userid" id="userid" placeholder="${vo.userid}"value="${vo.userid}" readonly><br>
        새로운 암호 <input type="password" name="userpw" id="userpw" value="" style="font-family: monospace;"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        비밀번호 확인 <input type="password" name="reuserpw" id="reuserpw" value="" style="font-family: monospace;"/> <br>
        핸드폰 번호 <input type="text" name="userphone" id="userphone" value="${vo.userphone}"> <br>
        이메일 주소 
        <input type="email" name="email" id="email" value="${vo.email}"> <br>
        <br>주소 <br>
        <input type="text" name="useraddr1" id="sample4_postcode" placeholder="우편번호" value="${vo.useraddr1}"> 
        <button type="button" onclick="sample4_execDaumPostcode()" >검색</button>
        <br>
        <div>
            <input type="text" class="form-control" placeholder="기본주소" id="sample4_roadAddress" name="useraddr2" value="${vo.useraddr2}">
        </div>
        <div>
            <input type="text" class="form-control" placeholder="상세주소" id="sample4_detailAddress" name="useraddr3" value="${vo.useraddr3}">
        </div>
        <div>
        	<input type="hidden" id="sample4_jibunAddress"  placeholder="지번주소">
            <input type="hidden" class="form-control" placeholder="참고항목" id="sample4_extraAddress" name="">
            <span id="guide" style="color:#999;display:none"></span>
        </div><br>
        
    </div> 
        <br>
        <br>
        <br>
        <div style="text-align:center;">
        <button type="reset">취소</button>
        <button type="button" id="btn3" name="btn3" >수정하기</button> 
        </div>
        
       
    </div>
	
    </section>
    </form>
     
    <footer>
      <%@ include file = "../include/main_footer.jsp" %>
    </footer>
   
</div>
</body>
</html>