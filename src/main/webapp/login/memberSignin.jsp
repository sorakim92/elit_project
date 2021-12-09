<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>회원가입 화면 샘플</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>

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

  $(function() {
	  
		$("#btn_submit").click(function(){
			var userid = $("#userid").val();
			var userpw = $("#userpw").val();
			var reuserpw = $("reuserpw").val();
			var name = $("username").val();
			var email = $("#email").val();
			var userphone = $("userphone").val();
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
			if(userpw == "") {
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
			$("#userid").val(userid);
			$("#userpw").val(userpw);
			$("#reuserpw").val(reuserpw);
			$("#username").val(username);
			$("#email").val(email);
			$("#userphone").val(userphone);
			
			var formData = $("#frm").serialize();
			
			$.ajax ({
	    		/* 전송 전 셋팅 */
	    		type : "POST",
	    		data : formData,
	    		url  : "memberWriteSave.do",
	    		dataType : "text",                         //리턴 타입

	    		// 전송 후 셋팅
	    		success: function(result) {
					if(result == "ok") {
						alert("회원가입 성공.");
						location="memberlogin.do";
					} else {
						 alert("회원가입 실패.");
					}
				},
				error: function() { //장애발생
					alert("오류발생")
		
				}
	    	});
		});
	});
  
  </script>
</head>

<body>
  <div class="container " style="font-family:'fonts\BMHANNAPro.ttf'; font-size:16px;">
    <div class="input-form-backgroud row" style="width:100%; height: 10%;">
      <div class="input-form col-md-12 mx-auto " style="width:100%; height: 10%;">
        <h4 class="mb-3">회원가입</h4>
        <form name="frm" method="post">
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
                  <input type="text" class="form-control" id="userpw" name="userpw" placeholder="비밀번호를입력해주세요" value="" required>
                  <div class="invalid-feedback" >
                    비밀번호를 입력해주세요.
                  </div>
                </div>
                <div class="" style="float:right;width: 50%;">
                  <label for="name">비밀번호확인</label>
                  <input type="text" class="form-control" id="reuserpw" name="reuserpw" placeholder="비밀번호확인을해주세요" value="" required>
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
                <input type="checkbox" value="" name="">
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
              <input type="text" class="form-control" id="useraddr1" value="1234" name="useraddr1" placeholder="우편번호" required; onClick="window.open('addr2.html','addr2','width=500px,height=500px,toolbars=no,scrollbars=no');return false;">
              <div class="invalid-feedback">
                주소를 입력해주세요.
              </div>
            </div>
            
            <div class="" style="width:100%;">
              <label for="address">주소<span class="text-muted">&nbsp;(필수 입력)</span></label>
              <input type="text" class="form-control" id="useraddr2" name="useraddr2" placeholder="서울특별시 강남구" required>
              <div class="invalid-feedback">
                주소를 입력해주세요.
              </div>
            </div>
            <div class="" style="width:100%;">
              <label for="address2">상세주소</label>
              <input type="text" class="form-control" id="useraddr3" name="useraddr3" placeholder="상세주소를 입력해주세요.">
            </div>
          
          	<div style="width:100%; height: 10%;"> &nbsp; </div>
            <div>
            <button type="submit" class="" id="btn_submit" style="text-align:center">가입 완료</button>
            <button type="reset" class="" style="text-align:center">취소</button>
            </div>
          
        </form>
      </div>
    </div>
  </div>

</body>
</html>