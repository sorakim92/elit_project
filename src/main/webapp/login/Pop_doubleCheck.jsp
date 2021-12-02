<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>중복확인</title>
    
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
    
</head>

<script>
$(function() {
$("#id_input").click(function() {
	var userid = $("#userid").val(); //현재 창에 입력된 값
	//console.log(userid);
	
	if(userid == "") {
		alert("아이디를 입력해주세요.");
		$("#userid").focus();
		return false;
	}
	
	var formdata = $("#idck").serialize();
	//alert(formdata);
	$.ajax({
		/* 전송 전 셋팅 */
		type : "POST",					//json(전송)타입
		url  : "Pop_doubleCheckSave.do",
		data : formdata,
		
		datatype : "text",                         //리턴 타입

		// 전송 후 셋팅
		success: function(data) {
			if(data == "ok") {
				alert("사용가능한 아이디입니다.");
			} else {
				 alert("중복된 아이디입니다.");
			}
		},
		error: function() { //장애발생
			alert("오류발생")

		}
	});
});//중복체크 버튼 제어
});
</script>

<body>
    <img src="img\logo.png" style="width:30%;">
        <div class="wrap">
            <form id="idck" method="post">
	            <div>
	                <p>아이디 중복확인</p>
	                <input type="text" class="" name="userid" id="userid"
	                	value="${userid1 }" placeholder="아이디를 입력해주세요.">
	                <button value="button" id="id_input">중복확인</button>
	            </div>
	       <!--      <div>
	            	<span class="id_input_re_1">사용 가능한 아이디입니다.</span>
	            	<span class="id_input_re_2">아이디가 이미 존재합니다.</span>
	            </div> -->
	      	</form>
        </div>
</body>
</html>