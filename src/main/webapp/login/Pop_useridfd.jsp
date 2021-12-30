<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>      
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>아이디 찾기</title>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>

<script>
	$(function(){
		$("#btn_submit").click(function(){
			var email = $("#email").val();
			email= $.trim(email);
			if(email == "") {
				alert("이메일을 입력해주세요.");
				$("#email").focus();
				return false;
			}
			$("#email").val(email);
			
			var formData = $("#frm_uesrid").serialize();
			
			$.ajax ({
	    		/* 전송 전 셋팅 */
	    		type : "POST",
	    		data : formData,
	    		url  : "Pop_useridfdSave.do",
	    		dataType : "text",                         //리턴 타입
	    		
	    		// 전송 후 셋팅
	    		success: function(data) {
	    			alert(data);
					if(data == "fail") {
						alert("이메일과 일치하는 아이디가 존재하지 않습니다. ");
					} else {
						//location="Pop_findselectuserid.do?userid="+data;
						opener.document.frm.userid.value=data;
						self.close();
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
    <div style="text-align:center">
        <form id = "frm_uesrid" method="POST">
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