<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>sample</title>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<style>
.logo {
    width:  300px;
    height: 50px; 
    float : center;
    
}

.article_text {
    float:left;
    text-align: center;
    width:1200px;
    height:120px;

}
.btn3 {
    text-align: center;
    background-color: orange;
    width:70px;
    height:40px;
    color:white;
    border-color: orange;
   
}
.btnloc{
    text-align: center;
}
</style>

<script>

$(function() {
		$("#btn3").click(function(){ 
			if( $("#agree").is(":checked") == true ) {
				$("#agree").focus();
			} else {
				alert("동의 체크 해주세요.");
				return false;
			}	
				
			if( $("#storename").val() == "" ) {
				alert("매장이름을 입력해주세요.");
				$("#storename").focus();
				return false;
			}
			if( $("#region").val() == 0  ) {
				alert("신청 지역을 선택해주세요.");
				$("#region").focus();
				return false;
			}
			if( $("#category").val() == 0) {
				alert("메뉴을 선택해주세요.");
				$("#category").focus();
				return false;
			}
			if( $("#phone_op ").val() == 0 ) {
				alert("핸드폰 앞자리 번호을 입력해주세요.");
				$("#phone_op").focus();
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
			if( $("#address").val() == "" ) {
				alert("매장 주소 입력해주세요.");
				$("#address").focus();
				return false;
			}
			if( $("#name").val() == "" ) {
				alert("문의자 이름을 입력해주세요.");
				$("#name").focus();
				return false;
			}
			if( $("#inquire").val() == "" ) {
				alert("문의사항  입력해주세요.");
				$("#inquire").focus();
				return false;
			}
			
			
			var formdata = $("#frm").serialize();
			$.ajax({
				type : "post",
				url  : "business_businessEnterSave.do",
				data : formdata,
				
				datatype : "text",  // 성공여부 (ok)
				success : function(data) {
					if (data == "ok") {
						alert("저장완료");
						location="business_businessEnter.do";
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
</head>



<header>
    <div class="logo" >
    <img src="../img/banner.PNG" width="300px" height="100px">
    </div>    
</header>
<br><br>

<body>
 <form name="frm" id="frm">
	
    <font size="4"><b>입점문의</b></font><br>
    <div class="text-align:left" >
   
    <font size="3">1. ELIT 이용약관과 개인정보 수집 및 동의 페이지입니다. (ELIT’s Terms and Privacy Policy)</font><br>
    <textarea  class="article_text"   readonly>
    제 1 장 총 칙
    제 1 조 (목적) 
    이 이용약관(이하 약관이라 합니다)은 제주렌터카 (상호명 : 제주허브닷컴, 이하 회사라 합니다)와 이용 고객(이하 회원이라 합니다)간에 회사가 제공하는 서비스의 가입조건 및 이용에 관한 제반 사항과 기타 필요한 사항을 구체적으로 규정함을 목적으로 합니다.
    
    제 2 조 (용어의 정의) 
    (1) 이 약관에서 사용하는 용어의 정의는 다음과 같습니다. 
    - 회원이라 함은 이 약관에 동의하고 서비스를 이용하는 이용자를 말합니다.
    - 이용계약이라 함은 이 약관을 포함하여 서비스 이용과 관련하여 회사와 회원 간에 체결하는 모든 계약을 말합니다. 
    - 이용자ID라 함은 회원의 식별 및 서비스 이용을 위하여 회원의 신청에 따라 회사가 회원별로 부여하는 고유한 문자와 숫자의 조합을  말합니다. 
    - 비밀번호라 함은 이용자ID로 식별되는 회원의 본인 여부를 검증하기 위하여 회원이 설정하여 회사에 등록한 고유의 문자와 숫자의 조합을 말합니다. 
    - 단말기라 함은 서비스에 접속하기 위해 회원이 이용하는 개인용 컴퓨터, PDA, 휴대전화 등의 전산장치를 말합니다. 
    - 해지라 함은 회사 또는 회원이 이용계약을 해약하는 것을 말합니다.
    (2) 이 약관에서 사용하는 용어 중 제1항에서 정하지 아니한 것은 관계 법령 및 서비스별 안내에서 정하는 바에 따르며, 그 외에는 일반 관례에 따릅니다.
    제 3 조 (이용약관의 효력 및 변경) 
    (1) 이 약관은 온라인으로 공시하고 회원의 동의와 회사의 승낙으로 효력을 발생하며, 합리적인 사유가 발생할 경우 회사는 관련 법령에 위배되지 않는 범위 안에서 개정할 수 있습니다. 개정된 약관은 정당한 절차에 따라 온라인을 통해 공지함으로써 효력을 발휘합니다.
    (2) 회원은 정기적으로 회사를 방문하여 약관의 변경사항을 확인하여야 합니다. 변경된 약관에 대한 정보를 알지 못해 발생하는 회원의 피해는 회사에서 책임지지 않습니다.
    (3) 회원은 변경된 약관에 동의하지 않을 경우 회원 탈퇴(해지)를 요청할 수 있습니다.
    제 4 조 (약관외 준칙) 
    회사는 필요한 경우 서비스 내의 개별항목에 대하여 개별약관 또는 운영원칙(이하 서비스별 안내라 합니다)를 정할 수 있으며, 이 약관과 서비스별 안내의 내용이 상충되는 경우에는 서비스별 안내의 내용을 우선하여 적용합니다.
    제 2 장 이용계약 체결
    제 5 조 (이용 계약의 성립)
    (1) 이용계약은 이용자의 이용계약 내용에 대한 동의와 이용신청에 대하여 회사의 이용승낙으로 성립합니다.
    (2) 이용계약에 대한 동의는 이용신청 당시 신청서 상의 동의함 버튼을 누름으로써 의사표시를 합니다.
    제 6 조 (서비스 이용 신청) 
    (1) 회원으로 가입하여 서비스를 이용하고자 하는 이용자는 회사에서 요청하는 제반 정보(이용자ID, 비밀번호, 이름, 연락처 등)를 제공하여야 합니다.
    (2) 모든 회원은 반드시 회원 본인의 정보를 제공하여야만 서비스를 이용할 수 있으며, 타인의 정보를 도용하거나 허위의 정보를 등록하는 등 본인의 진정한 정보를 등록하지 않은 회원은 서비스 이용과 관련하여 아무런 권리를 주장할 수 없으며, 관계 법령에 따라 처벌 받을 수 있습니다.
    (3) 회원가입은 반드시 본인의 진정한 정보를 통하여만 가입할 수 있으며 회사는 회원이 등록한 정보에 대하여 확인조치를 할 수 있습니다. 회원은 회사의 확인조치에 대하여 적극 협력하여야 하며, 만일 이를 준수하지 아니할 경우 회사는 회원이 등록한 정보가 부정한 것으로 처리할 수 있습니다.
    (4) 회사는 회원에 대하여 등급별로 구분하여 이용시간, 이용회수, 서비스 메뉴 등을 세분하여 이용에 차등을 둘 수 있습니다.
    제 7 조 (개인정보의 보호 및 사용) 
    (1) 회사는 관계 법령이 정하는 바에 따라 회원의 개인정보를 보호하기 위해 노력합니다. 개인정보의 보호 및 사용에 대해서는 관련 법령 및 회사의 개인정보 보호정책이 적용됩니다. 단, 회사의 공식 사이트 이외의 링크된 사이트에서는 회사의 개인정보 보호정책이 적용되지 않습니다. 또한, 회원은 비밀번호 등이 타인에게 노출되지 않도록 철저히 관리해야 하며 회사는 회원의 귀책사유로 인해 노출된 정보에 대해서  책임을 지지 않습니다.
    (2) 회사는 다음과 같은 경우에 법이 허용하는 범위 내에서 회원의 개인정보를 제3자에게 제공할 수 있습니다.
    - 수사기관이나 기타 정부기관으로부터 정보제공을 요청 받은 경우
    - 회원의 법령 또는 약관의 위반을 포함하여 부정행위 확인 등의 정보보호 업무를 위해 필요한 경우
    - 기타 법률에 의해 요구되는 경우 
    </textarea><br></div><br><br><br><br><br>
    <div class="mw_agree1">
        <span>회원가입약관의 내용에 동의합니다.</span>
        <input type="checkbox" name="agree" id ="agree" value="t1">
    </div><br>

    <div>
        2. 매장 이름을 알려주세요.*
        <input type="text" size="145" name="storename" id="storename">
    </div><br>
    <div>
        3. 신청 지역을 선택주세요.*
        <select name="region" id="region">
            <option value="0" >지역선택</option>
            <option>강남</option>
            <option>홍대</option>

        </select>
    </div><br>
    <div>
        4. 매뉴 카테고리를 선택해주세요.*<br>(최대 3개선택가능) &nbsp;&nbsp;&nbsp;&nbsp;
        <select name="category" id="category">
            <option value="0">카테고리 선택</option>
            <option>한식</option>
            <option>중식</option>
            <option>치킨</option>   
        </select>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <select name="" id="">&nbsp;&nbsp;&nbsp;&nbsp;
            <option>카테고리 선택</option>
            <option>한식</option>
            <option>치킨</option>
            <option>중식</option>
        </select>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <select name="" id="">
            <option>카테고리 선택</option>
            <option>한식</option>
            <option>치킨</option>
            <option>중식</option>
        </select>
    </div><br>
    <div>
        5. 휴대폰 입력 해주세요.*
        <select name="" id= "phone_op" >
            <option value="0">선택</option>
            <option>010</option>
            <option>011</option>
            <option>017</option>
        </select>
        <input type="number" size="40" name="phone" id="phone">
    </div><br>
    <div>
        6. 이메일 알려주세요.*
        <input type="email" size="50"  name="email" id="email">
    </div><br>
    <div>
        7. 매장 주소 알려주세요.*
        <input type="text" size="145" name="address" id="address">
    </div><br>
    <div>
        8. 문의자 이름 알려주세요.*
        <input type="text" size="45"  name="name" id="name">
    </div><br>
    <div>
        9. 기타사항 알려주세요.*
        <input type="text" size="145" name="inquire" id="inquire">
    </div>

<br>
<div class="btnloc">
    <button class="btn3" id="btn3">확인</button>
</div>
</form>
</body>
</html>