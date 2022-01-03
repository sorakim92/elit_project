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
article {
    text-align:center;
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


.th {
    text-align:left;
}

.phonecode {
    width:100px;
	height:30px;
    float:left;
}
.phone1 {
    float:left;
    width:384px;
}
.article_text {
    float:left;
    text-align: center;
    width:1000px;
    height:200px;

}
.btn3 {
    text-align: center;
    background-color: orange;
    width:100px;
    height:40px;
    color:white;
    border-color: orange;
   
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
				
			
			if( $("#email").val() == "" ) {
				alert("이메일을 입력해주세요.");
				$("#email").focus();
				return false;
			}
			if( $("#name").val() == "" ) {
				alert("이름을 입력해주세요.");
				$("#first_name").focus();
				return false;
			}
			if( $("#userid").val() == "" ) {
				alert("아이디를 입력해주세요.");
				$("#userid").focus();
				return false;
			}
			if( $("#phonecode").val() == "" ) {
				alert("핸드폰 앞자리를 선택 해주세요.");
				$("#phonecode").focus();
				return false;
			}
			if( $("#phone1").val() == "" ) {
				alert("핸드폰 번호을 입력해주세요.");
				$("#phone1").focus();
				return false;
			}
			if( $("#service").val() == "" ) {
				alert("서비스 선택을 입력해주세요.");
				$("#service").focus();
				return false;
			}
			if( $("#ment").val() == "" ) {
				alert("문의사항을 입력해주세요.");
				$("#ment").focus();
				return false;
			}
			
			var ph1 = $("#phonecode").val();
			var ph2 = $("#phone1").val();
			
			$("#phone").val(ph1+"-"+ph2+"");
			
			
			var formdata = $("#frm").serialize();
			$.ajax({
				type : "post",
				url  : "adWriteSave.do",
				data : formdata,
				
				datatype : "text",  // 성공여부 (ok)
				success : function(data) {
					if (data == "ok") {
						alert("저장완료");
						location="adWrite.do";
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
	    <h4>사장님광장</h4>
	    </div>      
        
        <div class="search">    
           <%@include file = "../include/main_header2.jsp" %>
        </div> 
        <!-- 기능: 로그아웃상태에서는 로그인 버튼,  로그인상태에서는 마이페이지 | 로그아웃 -->
        
    </header>
        
    <nav>
        <div class="">
          
            <a href="progressorderList.do"><font size="4" color="black">주문관리 |</font></a>
            <a href="menuList.do"><font size="4" color="black">메뉴관리 |</font></a>
            <a href="adWrite.do"><font size="4">광고신청/관리 |</font></a>
            <a href="b_consumerList.do"><font size="4" color="black">커뮤니티</font></a>
        </div>
    </nav>
        
    
<section>
      <div style="width:100%; height:auto; padding:10px;  margin: -40px;">
            <div style="width:70%; text-align: left; margin-left:40px;
                        font-family: jua; float:left;">
          광고신청
            </div>
     </div>
     <div style="width:100%; height:auto; padding:10px;  margin: -40px;">
            <div style="width:70%; text-align: right; margin-left:40px;
                        font-family: jua; float:right;">
          <a href="businessEnterWrite.do">ELIT 에 아직 입점 안하셨어요? 지금 바로 입점문의 하기</a>
           </div>
     </div><br><br><br><br><br><br>

     <div class="" >
                아래 항목을 작성해서 제출해주시면,
                담당자가 24시이내로 빠른 연락드리겠습니다
    </div>
            
   
                    
<form name="frm" id="frm">
	<input type="hidden" name="phone" id="phone" value="">
            <article class="text-align:left" >
                <font size="3">ELIT 이용약관과 개인정보 수집 및 동의 페이지입니다. (ELIT’s Terms and Privacy Policy)</font><br>
                <textarea  class="article_text"   readonly>
                제 1 장 총 칙
                제 1 조 (목적) 
                이 이용약관(이하 약관이라 합니다)은 ELIT (상호명 : ELIT, 이하 회사라 합니다)와 이용 고객(이하 회원이라 합니다)간에 회사가 제공하는 서비스의 가입조건 및 이용에 관한 제반 사항과 기타 필요한 사항을 구체적으로 규정함을 목적으로 합니다.
                
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
                </textarea><br><br><br><br>
                <div class="mw_agree1" ><br><br><br>
                    <span >회원가입약관의 내용에 동의합니다.</span>
                    <input type="checkbox" name="agree" id="agree" value="t1">
                </div><br>
                  
            </article><br><br>
               <div class="row">
                <div class="col-sm-6">
                    <div class="form-group">
                        <label for="email" class="fieldTitle">이메일 </label>
                        <input type="email" class="emailField form-control" name="email" id="email" value="" >
                    </div>
                </div>
                 <div class="col-sm-6">
                    <div class="form-group">
                        <label class="fieldTitle" for="" >이름</label>
                        <input type="text" placeholder="" value="" class="emailField form-control"  name="name" id="name">
                    </div>
                 </div>   
            </div>
           

            <div class="row">
                <div class="col-sm-6">
                    <div class="form-group">
                    	<label class="fieldTitle" for="'">아이디</label>
                        <input type="text" placeholder="" value="" class="emailField form-control"  name="userid" id="userid">
                    </div>
                </div>    
                <div class="col-sm-6">
                    <div class="form-group">
                        <label class="fieldTitle" for="last_name">휴대폰</label><br>
                          <select name="phonecode" id="phonecode" class=" phonecode">
                        	<option value="">  선택 </option>
                            <option value="010">  010 </option>
                            <option value="011">  011 </option>
                            <option value="017">  017 </option>
                            <option value="019">  019 </option>
                          </select>
                            <input type="text" class="phone1" name="phone1" id="phone1" placeholder="0000-0000"   >    
                      
                    </div>
                </div>
            </div>
                                  
            <div class="row">
                <div class="col-sm-6">
                    <div class="row">
                        <div class="col-sm-12">
                            <label class="fieldTitle" for="phone1">서비스 선택</label>
                            <select class="form-control" name="service" id="service" style="width:205%">
                                    
                                    <option value="">서비스 선택하세요</option>
                                    <option value="U">메인  상단</option>
                                    <option value="L">메인  하단</option>
                            </select><br>



         	<div class="row">
                 <div class="col-sm-12">
                       <div class="form-group">
                                 <label  class="" style="margin-top:2px">추가문의사항</label>
                                 <textarea placeholder="" class="form-control" name="ment" id="ment" style="width:205%; margin-top:3px"></textarea>
                      </div>
                 </div>
         </div>  <br>
     
    </div>          
            
                
           
      </section><br><br><br><br><br><br><br>
   
    
       
        <div style ="text-align:center;">
            <button type="button" class="btn3" id="btn3" >제출</button>
        </div>                         
</form>
     		
     		
</div>
    <footer>
      <%@ include file = "../include/main_footer.jsp" %>
    </footer>
</div>
</body>
</html>
