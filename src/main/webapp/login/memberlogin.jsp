<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
     <link rel="stylesheet" href="css/memberSignin.css">
    <title>로그인 테스트</title>
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
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
      .window{
        position: relative;
        width:100%;
        height:100%;
      }
      .popup{
        position: absolute;
        top:50%;
        transform: translate(-50%,-50%);
        background-color: #ffffff;
        box-shadow: 0 2px 7px rgba(0, 0, 0, 0.3);
        /* 임시 지정 */
        width:50px;
        height:50px;
        /* 초기에 약간 아래에 배치 */
        transform: translate(-50%, -40%);
      }
		.btnBox{
        margin: 10em 0;
        text-align: center;
     }
    .btn_popup{
        border: #555555 solid 1px;
        border-radius: 40px;
        color: #000000;
        padding: 18px 28px;
        text-decoration: none;
        font-size: 1rem;
        font-weight: 600;
    }
    .btn_popup:hover{
        border: #fdd000 solid 2px;
        background-color: #fdd000;
        border-radius: 40px;
        color: #000000;
        padding: 18px 28px;
        text-decoration: none;
        font-size: 1rem;
        font-weight: 600;
    }
		
    </style>
    
    <script>
    $(function() {
  	  $("#userpwfd").click(function(){
  		window.open("Pop_memberpassfind.do","_blank","width=500px,height=500px,toolbars=no,scrollbars=no");
  	});
  });
    $(function() {
    	  $("#useridfd").click(function(){
    		window.open("Pop_useridfd.do","_blank","width=500px,height=500px,toolbars=no,scrollbars=no");
    	});
    });   
    
	$(function() {
		$("#btn_submit").click(function(){
			
			var userid = $("#userid").val();
			var pass = $("#userpw").val();
			userid = $.trim(userid);
			pass = $.trim(pass);
			$("#userid").val(userid);
			$("#userpw").val(pass);
			
			if(userid == "") {
				alert("아이디를 입력해주세요.");
				$("#userid").focus();
				return false;
			}
			
			if(pass == "") {
				alert("비밀번호를 입력해주세요.");
				$("#userpw").focus();
				return false;
			}
			
			
			var formData = $("#frm").serialize();
			
		   	$.ajax ({
	    		/* 전송 전 셋팅 */
	    		type : "POST",
	    		data : formData, //josn (전송타입)
	    		url  : "memberloginSub.do",
	    		dataType : "text",                         //리턴 타입

	    		// 전송 후 셋팅
	    		success: function(data) {
					if(data == "ok") {
						alert(userid+"님이 로그인 되었습니다.");
						location="mainPage.do";
					} else {
						 alert("로그인정보를 다시 확인해주세요.");
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


<div class="container" >
  <div class="input-form-backgroud row" >
    <div class="input-form col-md-12 mx-auto">
      <div class="row">
        <div style="width:35%">  &nbsp; </div>
      <div class="main">
        <form name="frm" id="frm" method="post">
        <div class="form-group" >
          <label for="inputUsernameEmail">아이디</label>
          <input type="button" value="아이디 찾기" id="useridfd" name="useridfd" style="float:right;">
          <input type="text" class="form-control" id="userid" name="userid">
        </div>
        <div class="form-group">
          <label for="inputPassword">비밀번호</label>
          <input type="button" value="비밀번호 찾기" id="userpwfd" name="userpwfd" style="float:right;">
          <input type="password" class="form-control" id="userpw" name="userpw">
        </div>
        <div class="checkbox pull-right" style="width:100%;">
          <label>
            <input type="checkbox">자동로그인
          </label>
        </div>
        <div style="width:100%; text-align:center;">
        <button type="button" class="btn btn btn-primary" id="btn_submit" >
          로그인
        </button>
        <!-- 로그인버튼과 sns로그인 공간 확보용 -->
        <div style="width:100%">&nbsp;</div>
        
        </div>
        <div class="row">
            <div class="col-sm-6 col-sm-6 col-sm-6">
              <a href="#" class="btn btn-lg btn-success btn-block" text-align="center">네이버</a>
            </div>
            <div class="col-sm-6 col-sm-6 col-sm-6">
              <a href="#" class="btn btn-lg btn-warning btn-block" text-align="center">카카오</a>
            </div>
        </div>
        </form>
      </div>
      </div>
    </div>
  </div> 
</div> 
</body>
</html>