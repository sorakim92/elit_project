<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>    
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>sample</title>
  	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<link rel="stylesheet" href="css/headFooter.css">
  
  
  
</head>
<style>
@font-face {
    font-family: "hanna";
    src: url("../fonts/BMHANNAAir_otf.otf");
}
@font-face {
    font-family: "jua";
    src: url("../fonts/BMJUA_otf.otf");
}
html{
    height: 100%;
}
body {
    font-size: 16px;
    font-family: hanna;
    padding-left:100px;
    height:100%;
}
header {
	width:1000px;
	height:100px;
	/*background-color:#ffcc99;*/
	/*line-height:5.0;*/
}
nav {
	width:1000px;
	height:100px;
	/*background-color:#f8cacc;*/
	text-align:center;
	line-height:3.5;
}
.wrapper {
    width: 1000px;
    min-height: calc(100vh-70px);
    position: relative;
    /*background-color: beige;*/
    padding: 10px;
    flex-direction: column;
    display: flex;
    margin: auto;
}
.logo {
    width:  300px;
    height: 50px; 
    float : left;
}
.search {
    width: 500px;
    height: 50px;
    float : left;
    margin: 20px 0 0 0;
    text-align: right;
}
.login {
    width: 150px;
    height: 50px;
    float: left;
    margin: 20px 50px 0 0;
    text-align: right;
}


section {
	width:1000px;
	height:900px;
	/*background-color:#92a8d1;*/
	text-align:center;
}


.footer {
	width:100%;
    height:100px;
	background-color:#ccc;
    position: absolute;
    bottom: 0;
    left: 0;
}
.ft_ul {
    width:100%;
    height:50px;
}
.ft_info {
    width:100%;
    height:50px;
    text-align: center;
    font-size:14px;
    padding-bottom:20px;
}
.ul1{
    float:left;
    padding-top:7px;
}

.ul1 li{
    font-size:14px;
    list-style:none;
    float:left;
    border-left:1px solid #ccc;
    padding-left:10px;
    padding-right:10px;
}

.ul2{
    float:right;
    padding-top:7px;
}

.ul2 li{
    font-size:14px;
    list-style:none;
    float:left;
    border-left:1px solid #ccc;
    padding-left:10px;
    padding-right:10px;
}
</style>




<script>

$(function() {
		$("#btn3").click(function(){ 	
			
			if( $("#b_userid").val() == "" ) {
				alert("아이디를 입력해주세요.");
				$("#b_userid").focus();
				return false;
			}
			if( $("#userpw").val() == "" ) {
				alert("암호을 입력해주세요.");
				$("#userpw").focus();
				return false;
			}
			if( $("#userpw2").val() == "" ) {
				alert("암호 확인를 입력해주세요.");
				$("#userpw2").focus();
				return false;
			}
			if( $("#userpw2").val() != $("#userpw").val() ) {
				alert("암호확인를 확인해주세요.");
				$("#userpw2").focus();
				return false;
			}
			if( $("#userphone").val() == "" ) {
				alert("핸드폰 번호를 입력 해주세요.");
				$("#userphone").focus();
				return false;
			}
			if( $("#phone").val() == "" ) {
				alert("핸드폰 번호을 입력해주세요.");
				$("#phone").focus();
				return false;
			}
			if( $("#email").val() == "" ) {
				alert("이메일을 입력해주세요.");
				$("#email").focus();
				return false;
			}
			
			
			var formdata = $("#frm").serialize();
			$.ajax({
				type : "post",
				url  : "bossmemberWriteSave.do",
				data : formdata,
				
				datatype : "text",  // 성공여부 (ok)
				success : function(data) {
					if (data == "ok") {
						alert("저장완료");
						location="bossmemberWrite.do";
					} else {
						alert("저장실패");
					}
				},	
				error : function() {
					alert("오류발생");
				}
			});
		});
	});


</script>
<body>
<div class="wrapper">
    <div class="main" style="min-height: 100%; padding-bottom:100px; flex:1;">
    <header class="width:100%; height:50px;">
         <div class="logo" style=" cursor: pointer;" onclick="location.href='mainPage.do';">
    		<img src="<c:url value='/img/logo.png'/>" width="200px" height="100px" alt="로고"/>
            <h4>사장님 마이페이지</h4>
        </div>
        <div class="search">
            <a href>마이페이지</a>
             <a href>사장님 광장</a>
          
        </div> 
        <!-- 기능: 로그아웃상태에서는 로그인 버튼,  로그인상태에서는 마이페이지 | 로그아웃 -->
        <div class="login">
            <button type="button" class="btn btn-outline-warning" style="border-color: #f8cacc; color: black;">로그인</button>
        </div>
    </header>
        
    <nav>
        <div class="" >
          
            <a href><font size="4">주문내역 | </font></a>
            <a href="businessMypage.jsp"><font size="4">회원정보수정 |</font></a>
            <a href><font size="4">문의내역 |</font></a>
            <a href><font size="4">리뷰관리</font></a>
        </div>
    </nav>
        
    
    <form name="frm" id="frm"> 
   
    <div style="">
        아이디&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="b_userid" id="b_userid" value="${vo.b_userid}" ><br>
        새로운 암호 <input type="text" name="userpw" id="userpw">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        비밀번호 확인 <input type="text" name="userpw2" id="userpw2" > <br>
        핸드폰 번호 <input type="text" id="userphone" name="userphone"> <br>
        이메일 주소 
        <input type="email" name="email" id="email" value="${vo.email}"> <br>
        <br>주소 <br>
        <input type="text" name="storeaddr" id="storeaddr" value="우편번호" readonly> 
        <button>주소검색</button>
        <button>주소추가하기</button><br>
        <div>
            <input type="text" class="form-control" value="기본주소" id="" name="">
        </div>
        <div>
            <input type="text" class="form-control" value="상세주소" id="" name="" value="${vo.storeaddr}">
        </div>
        <div>
            <input type="text" class="form-control" value="참고항목" id="" name="">
        </div><br>
        
    </div> 
        <br>
        <br>
        <br>
        <div style="text-align:center;">
        <button type="reset">취소</button>
        <button type="button" id="btn3" name="btn3" >수정하기</button> 
        </div>
        
       
    </div>
	
    </section>
    </form>
     
    <footer>
      <%@ include file = "../include/main_footer.jsp" %>
    </footer>
   
</div>
</body>
</html>