<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원탈퇴</title>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
<script>
$(function() {
	$("#btn_draw").click(function() {
		
		if(document.frm.chk.checked==false){
			alert("유의사항을 체크해주세요.");
			return false;
			
		}
		
		
		var userid = $("#userid").val();
		var userpw = $("#userpw").val();
		userid= $.trim(userid);
		userpw= $.trim(userpw);
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
    		data : formData,
    		url  : "Pop_member_WithdrawSave.do",
    		dataType : "text",                         //리턴 타입
			
    		

    		// 전송 후 셋팅
    		success: function(data) {
    			alert(data);
				if(data == "ok") {
					alert("회원탈퇴 성공.");
					self.close();
				} else {
					alert("회원탈퇴 실패.");
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
    <img src="img\logo.png" style="width:20%;">
    <div style="width:100%">
        <div style="width:50%;  margin-left: 35%; margin-top:5%">
            <h3>회원탈퇴</h3>
            
            <textarea readonly="readonly" rows="5" cols="66">제 1 조 (목적)
이 약관은 네이버 주식회사 ("회사" 또는 "ELIT")가 제공하는 서비스의 이용과 관련하여 회사와 회원과의 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다.
제 2 조 (정의)
이 약관에서 사용하는 용어의 정의는 다음과 같습니다.
①"서비스"라 함은 구현되는 단말기(PC, TV, 휴대형단말기 등의 각종 유무선 장치를 포함)와 상관없이 "회원"이 이용할 수 있는 서비스를 의미합니다.
②"회원"이라 함은 회사의 "서비스"에 접속하여 이 약관에 따라 "회사"와 이용계약을 체결하고 "회사"가 제공하는 "서비스"를 이용하는 고객을 말합니다.
③"아이디(ID)"라 함은 "회원"의 식별과 "서비스" 이용을 위하여 "회원"이 정하고 "회사"가 승인하는 문자와 숫자의 조합을 의미합니다.
④"비밀번호"라 함은 "회원"이 부여 받은 "아이디와 일치되는 "회원"임을 확인하고 비밀보호를 위해 "회원" 자신이 정한 문자 또는 숫자의 조합을 의미합니다.
⑤"유료서비스"라 함은 "회사"가 유료로 제공하는 각종 온라인디지털콘텐츠(각종 정보콘텐츠, VOD, 아이템 기타 유료콘텐츠를 포함) 및 제반 서비스를 의미합니다.
⑥"포인트"라 함은 서비스의 효율적 이용을 위해 회사가 임의로 책정 또는 지급, 조정할 수 있는 재산적 가치가 없는 "서비스" 상의 가상 데이터를 의미합니다.
⑦"게시물"이라 함은 "회원"이 "서비스"를 이용함에 있어 "서비스상"에 게시한 부호ㆍ문자ㆍ음성ㆍ음향ㆍ화상ㆍ동영상 등의 정보 형태의 글, 사진, 동영상 및 각종 파일과 링크 등을 의미합니다. 
            </textarea> 
                <form id = "frm" name="frm" method="POST">
                <p>
                    <input type="checkbox" name="chk" value=""> 유의사항을 확인하였으며, 회원 탈퇴합니다.
                </p>
                
                <p>아이디 입력
                <input type="text" value="" name="userid" id="userid" placeholder="아이디">
                </p>
                <p>비밀번호 입력
                <input type="text" value="" name="userpw" id="userpw" placeholder="비밀번호">
                </p>
                <button type="button" id="btn_draw" name="btn_draw">회원탈퇴</button>
        </div>
    </div>
    </form>
</body>
</html>