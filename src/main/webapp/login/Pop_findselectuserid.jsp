<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 확인</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
</head>
<script>
$(function() {
	$("#btn_submit").click(function() {
		self.close();
	});
});
</script>
<body>
    <div style="text-align:center">
        <form id = "frm_uesrid" name="frm_uesrid" method="POST">
            <br><br>
            	아이디 : <input type="text" id ="userid"  name ="userid" value="${Userid}">
            <br><br>
            <button type="button" class="" id="btn_submit">확인</button>
            <br>
        
        </form>
    </div>
</body>