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
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
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
		$("#btn_submit").click(function(){
			
			var userid = $("#userid").val();
			var pass = $("#userpw").val();
			userid = $.trim(userid);
			userpw = $.trim(userpw);
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
			$("#userid").val(userid);
			$("#userpw").val(userpw);
			
			var formData = $("#frm").serialize();
			
		   	$.ajax ({
	    		/* 전송 전 셋팅 */
	    		type : "POST",
	    		data : "userid="+userid+"&userpw="+userpw, //josn (전송타입)
	    		url  : "memberlogin.do",
	    		dataType : "text",                         //리턴 타입

	    		// 전송 후 셋팅
	    		success: function(result) {
					if(result == "ok") {
						alert(userid+"님이 로그인 되었습니다.");
						location="main.do";
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
    <title>로그인 테스트</title>
  </head>

  <body>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<div class="container" >
  <div class="input-form-backgroud row" >
    <div class="input-form col-md-12 mx-auto">
      <div class="row">
        <div style="width:35%">  &nbsp; </div>
      <div class="main">
        <form name="frm" method="post" action="memberlogin.do" >
        <div class="form-group" >
          <label for="inputUsernameEmail">아이디</label>
          <input type="text" class="form-control" id="userid" name="userid">
        </div>
        <div class="form-group">
          <a class="pull-right" href="Pop_memberpassfindpopup.html" onclick="javascript:window.open(this.href, '_blank', 'width=500px,height=500px,toolbars=no,scrollbars=no'); return false;">
            비밀번호찾기
          </a>
          <label for="inputPassword">비밀번호</label>
          <input type="text" class="form-control" id="userpw" name="userpw">
        </div>
        <div class="checkbox pull-right" style="width:100%; ">
          <label>
            <input type="checkbox">자동로그인
          </label>
        </div>
        <div style="width:100%; text-align:center;">
        <button type="submit" class="btn btn btn-primary" id="btn_submit" >
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