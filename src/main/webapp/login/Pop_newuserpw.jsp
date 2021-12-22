<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 변경</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
</head>
<script>
$(function() {
	$("#btn_submit").click(function(){
		var userpw = $("#userpw").val();
		var reuserpw = $("#reuserpw").val();
		userpw= $.trim(userpw);
		reuserpw= $.trim(reuserpw);
		
		if(userpw == "") {
			alert("비밀번호를 입력해주세요.");
			$("#userpw").focus();
			return false;
		}
		if(reuserpw == "") {
			alert("재비밀번호 입력해주세요.");
			$("#reuserpw").focus();
			return false;
		}
		
		var formData = $("#frm").serialize();
		
		$.ajax({
		//전송전 셋팅
			type : "POST",
    		data : formData,
    		url  : "Pop_newuserpwSave.do",
    		dataType : "text",
    		
    		//전송후 셋팅
    		success: function(data) {
    			alert("비밀번호가 변경되었습니다.");
    			self.close();
    		},
    		error: function() { //장애발생
				alert("오류발생");
	
			}//error
			
		});//$.ajax
		
	});//#btn_submit
	
});//function
</script>
<body>
 
<table border="1" width="300" height="300" align= "center">
<center>
<span style="color: green; font-weight: bold;">변경할 비밀번호를 입력해주세요.</span>   
        <br> <br>
        
    <div style="text-align:center;">
        <tr>        
            <td><form id="frm" method="post">
                <div style="text-align:center;">
            변경할 비밀번호 입력 : <input type = "text" name = "userpw" id="userpw" placeholder = "비밀번호를 입력하세요." >
            <br> <br>
           비밀번호 재입력 : <input type = "text" name = "reuserpw" id="reuserpw" placeholder = "비밀번호를 입력하세요." >
            <br> <br>
            <input type="hidden" id="userid" name="userid" value="${userid}">
            <input type="hidden" id="email" name="email" value="${email}">
            
            <button type="button" name="btn_submit" id="btn_submit">비밀번호 변경</button>
            </div>
                </form>
                </td>
            </tr>
    </div>
</center>
</table>
 
</body>
</html>