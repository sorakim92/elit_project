<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
<style>

</style>
<script>

	function fn_logout() {
		
		if(confirm("로그아웃 하시겠습니까?")) {
		
		$.ajax({
			type : "post",
			data : "",
			url : "memberlogout.do",
			
			datatype : "text",
			success : function(data) {
				if(data == "ok") {
					alert("로그아웃되었습니다.");
					location = "mainPage.do";
				} else {
					alert("로그아웃을 다시 시도해주세요.");
				}
			},
			error : function() {
				alert("접속 에러");
			}
		});
		
		}
	}

</script>

<%
String USERID = (String) session.getAttribute("SessionUserID");
String BOSSUSERID = (String) session.getAttribute("BossmemberSessionID");
String ADMINID= (String) session.getAttribute("AdminSessionID");
%>
<div class="login">
	<ul class="login_ul">

<!-- 기능: 로그아웃상태에서는 로그인 버튼,  로그인상태에서는 마이페이지 | 로그아웃 -->

<%
	if(USERID != null && !USERID.equals("") ) {
%>
	
	    <li ><a href="javascript:fn_logout();" class="header_a">로그아웃</a></li>
		<li ><a href="myPage.do" class="header_a">마이페이지</a></li>
	
<% 
	} else if(ADMINID != null && !ADMINID.equals("")) {
%>
	
		 <li ><a href="javascript:fn_logout();" class="header_a">로그아웃</a></li>
		<li ><a href="AdminMain.do" class="header_a">관리자페이지</a></li>
	
<%
	} else if(BOSSUSERID != null && !BOSSUSERID.equals("")) {
%>	
		<div class="search" text-align="right">
		&nbsp;&nbsp;<a href="BossMemberDetail.do"><font color="black">사업자 마이페이지 |</font></a>
        &nbsp;&nbsp;<a href="progressorderList.do"><font color="black">사장님 광장 |</font></a>
		&nbsp;&nbsp;<a href="javascript:fn_logout();" class="header_a"><font color="black">로그아웃</font></a>
		</div>
			
<%
	} else {
%>
		
    	<a href="memberlogin.do" class="header_a">로그인</a>
    	<a href="memberwrite.do" class="header_a">회원가입</a>
    	
<%
	}
%>
	</ul>
	</div>

