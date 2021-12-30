<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>회원가입 화면 샘플</title>
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="css/memberSignin.css">
  <style>
    body {
      min-height: 100vh;
      
    }
    .input-form {
      max-width: 680px;
      margin-top: 80px;
      padding: 32px;
      background: #fff;
      -webkit-border-radius: 10px;
      -moz-border-radius: 10px;
      border-radius: 10px;
      -webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      -moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
    }
  </style>
  
  <script>
   
  $(function() {
	  $("#btn_popupid").click(function(){
		var userid = $("#userid").val();
		window.open("Pop_doubleCheck.do","_blank","width=500px,height=500px,toolbars=no,scrollbars=no");
	});
});
  /* $(function() {
	  $("#useraddr1").click(function(){
		window.open("Pop_addr.do","_blank","width=500px,height=772px,toolbars=no,scrollbars=no");
	});
}); */

  $(function() {
	  
		$("#btn_submit").click(function(){
						
			var userid = $("#userid").val();
			var userpw = $("#userpw").val();
			var reuserpw = $("#reuserpw").val();
			var username = $("#username").val();
			var email = $("#email").val();
			var userphone = $("#userphone").val();
			userid = $.trim(userid);
			userpw = $.trim(userpw);
			reuserpw = $.trim(reuserpw);
			username = $.trim(username);
			email= $.trim(email);
			userphone = $.trim(userphone);
			if(userid == "") {
				alert("아이디를 입력해주세요.");
				$("#userid").focus();
				return false;
			}
			if(userpw == "") {
				alert("비밀번호를 입력해주세요.");
				$("#userpw").focus();
				return false;
			}
			if(reuserpw == "") {
				alert("재확인 비밀번호를 입력해주세요.");
				$("#reuserpw").focus();
				return false;
			}
			if(username == "") {
				alert("이름을 입력해주세요.");
				$("#username").focus();
				return false;
			}
			if(email == "") {
				alert("이메일을 입력해주세요.");
				$("#email").focus();
				return false;
			}
			if(userphone == "") {
				alert("휴대폰번호를 입력해주세요.");
				$("#userphone").focus();
				return false;
			}
			
			if(userpw != reuserpw) {
				alert("비밀번호와 재확인비밀번호가 같지 않습니다.");
				$("#userpw").focus();
				return false;
			}
			if($("#business").is(":checked") {
				 alert("트루");
			 } else {
				alert("펄스");
			 }
						
			var formData = $("#frm").serialize();
			alert(formData);
			$.ajax ({
	    		/* 전송 전 셋팅 */
	    		type : "POST",
	    		data : formData,
	    		url  : "memberwriteSave.do",
	    		dataType : "text",                         //리턴 타입

	    		// 전송 후 셋팅
	    		success: function(data) {
					if(data == "ok") {
						alert("회원가입 성공.");
						location="memberlogin.do";
					} else {
						 alert("회원가입 실패.");
					}
				},
				error: function() { //장애발생
					alert("오류발생");
		
				}
	    	});
		});
	});
  
  // 다음 주소 펑션
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
  
  </script>
</head>

<body>
  <div class="container " style="font-family:'fonts\BMHANNAPro.ttf'; font-size:16px;">
    <div class="input-form-backgroud row" style="width:100%; height: 10%;">
      <div class="input-form col-md-12 mx-auto " style="width:100%; height: 10%;">
        <h4 class="mb-3">회원가입</h4>
        <form id="frm" name="frm" method="POST">
          <div>
            <div>
               <input type="button" value="중복확인" 
               style="float:right; margin-right:0px; margin-top:38px; width:20%;" id="btn_popupid" 
               >
            </div>
            <div class="" style="width:80%; height: 10%;">
                <label for="name">아이디</label>
                <input type="text" class="form-control" id="userid" name="userid" placeholder="아이디를 입력해주세요" value="${userid1 }" required>
              </div>
                <div class="invalid-feedback">
                  아이디를 입력해주세요.
                </div>
            </div>
                <div class="" style="float:left;width: 50%; ">
                  <label for="name">비밀번호</label>
                  <input type="password" class="form-control" id="userpw" name="userpw" placeholder="비밀번호를입력해주세요" value="" required>
                  <div class="invalid-feedback" >
                    비밀번호를 입력해주세요.
                  </div>
                </div>
                <div class="" style="float:right;width: 50%;">
                  <label for="name">비밀번호확인</label>
                  <input type="password" class="form-control" id="reuserpw" name="reuserpw" placeholder="비밀번호확인을해주세요" value="" required>
                  <div class="invalid-feedback" >
                    비밀번호확인을 입력해주세요.
                  </div>
                </div>
              <div class="" style="float:left;width: 50%;">
                <label for="name">이름</label>
                <input type="text" class="form-control" id="username" name="username" placeholder="이름을 입력해주세요" value="" required>
                <div class="invalid-feedback">
                  이름을 입력해주세요.
                </div>
              </div>
              <div style="float:left; width: 50%;">&nbsp;</div>
              <div class="" style="float:left;width: 45%; margin-left: 10px; margin-top:15px; ">
                사업자체크
                <input type="checkbox" id="business" name="business" value="N">
              </div>
              
            <div class="" style="float:left;width: 100%;">
              <label for="email">이메일</label>
              <input type="email" class="form-control" id="email" name="email" placeholder="you@example.com" required>
              <div class="invalid-feedback">
                이메일을 입력해주세요.
              </div>
            </div>
            
            <div class="" style="float:right;width: 50%;">
              <label for="name">휴대폰</label>
              <input type="text" class="form-control" id="userphone" name="userphone" placeholder="휴대폰번호입력" value="" required>
              <div class="invalid-feedback">
                휴대폰번호를입력해주세요.
              </div>
            </div>
            
            <div class="" style="width:40%">
              <label for="address">우편번호</label>
              <input type="text" class="form-control" onclick="sample4_execDaumPostcode()" id="sample4_postcode" value="" name="useraddr1" placeholder="우편번호" required;>
              <div class="invalid-feedback">
                주소를 입력해주세요.
              </div>
            </div>
            
            <div class="" style="width:100%;">
              <label for="address">주소<span class="text-muted">&nbsp;(필수 입력)</span></label>
              <input type="text" class="form-control" id="sample4_roadAddress" name="useraddr2" placeholder="서울특별시 강남구" required>
              <div class="invalid-feedback">
                주소를 입력해주세요.
              </div>
            </div>
            <div class="" style="width:100%;">
              <label for="address2">상세주소</label>
              <input type="text" class="form-control" id="sample4_detailAddress" name="useraddr3" placeholder="상세주소를 입력해주세요.">
              <span id="guide" style="color:#999;display:none"></span>
              
              <input type="hidden" id="sample4_jibunAddress"  placeholder="지번주소">
              <input type="hidden" id="sample4_extraAddress"  placeholder="참고항목">
            </div>
          	
          	<div style="width:100%; height: 10%;"> &nbsp; </div>
            <div>
            <button type="button" class="" id="btn_submit" style="text-align:center">가입 완료</button>
            <button type="reset" class="" id="btn_reset" style="text-align:center">취소</button>
            </div>
          
        </form>
      </div>
    </div>
  </div>

</body>
</html>