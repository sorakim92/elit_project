<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>비밀번호 찾기</title>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>

<script>
	$(function(){
		$("#btn_submit").click(function(){
			var email = $("#email").val();
			var userid = $("#userid").val();
			email= $.trim(email);
			userid= $.trim(userid);
			if(userid == "") {
				alert("아이디을 입력해주세요.");
				$("#uesrid").focus();
				return false;
			}
			if(email == "") {
				alert("이메일을 입력해주세요.");
				$("#email").focus();
				return false;
			}
			
			var formData = $("#pwd_form").serialize();
			
			$.ajax ({
	    		/* 전송 전 셋팅 */
	    		type : "POST",
	    		data : formData,
	    		url  : "Pop_memberpassfindSave.do",
	    		dataType : "text",                         //리턴 타입
	    		
	    		// 전송 후 셋팅
	    		success: function(data) {
	    			
	    			//alert(data);
	    			
	    			var data_array = data.split(":");
	    			
					 if(data_array[0] == "ok") {
						location="Pop_newuserpw.do?userid="+data_array[1]+"&email="+data_array[2];
					} else {
						 alert("이메일or아이디가 등록된 정보와 일치하지않습니다.");
					} 
				},
				error: function() { //장애발생
					alert("오류발생");
		
				}
	    	});
		});
	});              
</script>
    
</head>
<body>
<img src="img\logo.png" style="width:30%;">
    <div style="text-align:center">
        <form id = "pwd_form" method="POST">
      			아이디 : <input type="text" id ="userid"  name ="userid" placeholder="Enter Your ID">      
            <br><br>
            	이메일 : <input type="text" id ="email"  name ="email" placeholder="Enter Your EMAIL">
            <br><br>
            <input type="hidden" value="1" name = "check">
            <button type="button" class="" id="btn_submit">다음</button>
            <br>
        
        </form>
    </div>
</body>

</html>