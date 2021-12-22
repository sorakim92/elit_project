<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>

 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>개인정보처리방침</title>
	    
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<!-- footer header css -->
	<link rel="stylesheet" href="css/headFooter.css">

</head>
<style>
@font-face {
    font-family: "hanna";
    src: url("fonts/BMHANNAAir_otf.otf");
}
@font-face {
    font-family: "jua";
    src: url("fonts/BMJUA_otf.otf");
}
html{
    height: 100%;
}
body {
    font-size: 16px;
    font-family: "hanna";
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


section {
	width:1000px;
	height:auto;
	min-height: 450px;
	/*background-color:#92a8d1;*/
	text-align:center;
}



.article_nav {
   display: inline-block;

}
.article_nav li {
    font-size:16px;
    list-style:none;
    float:left;
    padding-left:10px;
    padding-right:20px;
    padding-bottom: -10px;
}

table td {
	border: 1px solid #ccc;
	text-align: left;
	padding: 10px;
}
table th {
	border: 1px solid #ccc;
	text-align: center;
	height:50px;
	background : #ededed;
}
</style>
<script>

</script>
<body>
<div class="wrapper">
    <div class="main" style="min-height: 100%; padding-bottom:100px; flex:1;">
    <header class="width:100%; height:50px;">
       <%@include file = "../include/main_header.jsp" %>
    </header>
        
    <nav>
        <div style="width:100%; 
                    height:50px; border-bottom: 1px solid #ccc;">
           <%@include file = "../include/policy_subTab.jsp" %>
       </div>
    </nav>
        




    <section >
        <div style="width:100%; height:auto; padding:10px; margin-top:-40px;">
            <div style="width:50%; text-align: left; 
                        font-family: jua; float:left;">
                개인정보처리방침
            </div>
        </div>
 <div style="width:100%; float:left; margin-top:20px; font-size:13px; text-align:left; padding-left:10px;">
개인정보 처리방침<br>
유한책임회사 이리이잇(이하 ‘회사’라고 합니다)은 이용자의 개인정보를 안전하게 관리하고 있으며, 이용자가 언제든지 쉽게 확인할 수 있도록 개인정보 처리방침을 공개하고 있습니다.<br>
1. 개인정보의 수집 ∙ 이용<br>
2. 개인정보 보유 ∙ 이용 기간<br>
3. 개인정보처리의 위탁<br>
4. 개인정보 제3자 제공<br>
5. 이용자 및 법정대리인의 권리 ∙ 의무 및 행사방법<br>
6. 아동의 개인정보보호<br>
7. 개인정보 자동 수집 장치의 설치 ∙ 운영 및 거부<br>
8. 개인정보의 파기<br>
9. 개인정보의 안전성 확보조치<br>
10. 링크 사이트<br>
11. 의견수렴 및 불만처리<br>
12. 개인정보보호책임자<br>
13. 고지의 의무<br>
<br>

1. 개인정보의 수집 ∙ 이용<br>
① 회사는 다음과 같은 개인정보를 수집 · 이용합니다.
<table style="width: 90%; border:1px solid #ccc;">
	<colgroup>
		<col width="30%"/>
		<col width="*" />
	</colgroup>
	<tr>
		<th>구분</th>
		<th>수집 ∙ 이용항목</th>
	</tr>
	<tr>
		<td rowspan="3">회원가입 </td>
		<td>[e-mail 가입] <br>
		(필수) 이메일 주소, 비밀번호, 휴대전화번호 <br>
		(선택) 닉네임
		</td>
	</tr>
	<tr>
		<td>[SNS 회원가입 – 네이버] <br>
		(필수) 이메일 주소, 이용자 식별값, 휴대전화번호 <br>
		(선택) 별명, 생일, 성별, 연령대</td>
	</tr>
	<tr>
		<td>[SNS 회원가입 – 네이버] <br>
		(필수) 이메일 주소, 이용자 식별값, 휴대전화번호 <br>
		(선택) 별명, 생일, 성별, 연령대
	</td>
	</tr>
	<tr>
		<td>주문</td>
		<td>(필수) 수령인 정보(휴대전화번호, 주소)<br>
			* 포장 주문 시 주소 제외
		</td>
	</tr>
	<tr>
		<td>본인인증</td>
		<td>[휴대전화 본인인증기관으로부터 제공받는 정보]<br>
			(필수) 휴대전화번호, CI(연계정보), DI(중복가입확인정보), 생년월일, 성별, 내/외국인 여부
		</td>
	</tr>
	<tr>
		<td>결제</td>
		<td>결제	[결제대행업체(PG사)로부터 제공받는 정보]<br>
			(필수) 결제 처리 결과, 부분 마스킹 처리된 카드/계좌번호, 카드사, 은행명
		</td>
	</tr>
	<tr>
		<td>선물하기</td>
		<td>- 상품권 구매 시: (필수) 구매자/수신자 정보(성명, 휴대전화번호)<br>
			- 상품권 사용 시: (선택) 현금영수증 신청 정보(휴대전화번호, 사업자등록번호)<br>
  			* 현금영수증 발행 업체에 전달 후 서버에는 별도 저장하지 않음
		</td>
	</tr>
	<tr>
		<td>식품 이물 발견 신고</td>
		<td>(필수) 성명, 연락처, 주소
		</td>
	</tr>
	<tr>
		<td>상담 ∙ 민원</td>
		<td>- 콜센터 이용 시: (필수) 발신자번호, 상담내용(녹취 포함), 필요 시 본인확인을 위한 정보(휴대전화번호, 이메일 주소)<br>
			- 상담톡/챗봇 이용 시: (필수) 카카오톡 이용자 식별값, 채팅내용, 필요 시 본인확인을 위한 정보(휴대전화번호, 이메일 주소)
		</td>
	</tr>
	<tr>
		<td>자동 생성 정보</td>
		<td>(필수) 서비스 이용 기록, 접속 로그, 쿠키, 접속 IP 주소, 기기정보(모델명, OS 버전, 기기고유번호), 광고ID
		</td>
	</tr>
	<tr>
		<td>이벤트 참여 및 당첨</td>
		<td>(선택) 이메일 주소, 휴대전화번호, 주소<br>
			* 이벤트마다 수집 항목이 다를 수 있으며, 별도 동의를 받습니다.
		</td>
	</tr>
</table>
<br>
② 회사가 수집 ∙ 이용하는 개인정보는 다음의 목적으로 이용됩니다.<br>
- 회원가입 의사 확인, 회원 식별 및 관리, 회원제 서비스 제공<br>
- 서비스 이용자 본인확인, 주류 구매 이용자 성인여부 확인<br>
- 서비스 제공, 서비스 이용에 대한 리뷰 작성 권유, 서비스 이용 만족도 조사, 각종 고지 ∙ 통지 ∙ 안내<br>
- 상담 ∙ 민원 처리 시 개인 식별, 후속 응대 및 처리<br>
- 서비스 방문 ∙ 이용 기록 분석 및 통계, 서비스 개선, 신규 서비스 개발<br>
- 서비스 부정 이용 방지, 서비스 부정 이용자 차단 및 관리<br>
- 개인화 서비스 제공<br>
- 맞춤형 광고 게재, 프로모션 ∙ 혜택 소식 알림, 이벤트 경품 지급
<br>
<br>
2. 개인정보 보유 ∙ 이용 기간<br>
① 회사는 이용자로부터 개인정보 수집 시에 동의 받은 보유 ∙ 이용기간 내에서 개인정보를 처리 ∙ 보유합니다.<br>
a. 회원 정보: 회원탈퇴 후 90 일까지(단, 전자상거래 등에서의 소비자보호에 관한 법률 등 관련 법령의 규정에 따라 거래 관계 확인을 위한 소비자 식별정보(휴대전화번호, DI(중복가입확인정보))는 5년 간 보관 후 파기)<br>
* 회원 탈퇴 또는 회원 자격 정지 후 회원 재가입, 임의 해지 등을 반복적으로 행하여 회사가 제공하는 할인쿠폰, 이벤트 혜택 등으로 경제상의 이익을 취하거나 이 과정에서 명의를 무단으로 사용하는 등 편법 행위 또는 불법행위를 하는 회원을 차단하고자 회사는 회원 탈퇴 후 90 일 간 회원의 정보를 보유합니다.<br>
b. 식품 이물 발견 신고: 이물 통보 완료 시까지<br>
c. 법령 위반에 따른 수사 ∙ 조사 등이 진행중인 경우에는 해당 건 종료 시까지<br>
d. 서비스 이용에 따른 채권 ∙ 채무관계 정산 시까지<br>
② 1 년 간 회원의 서비스 이용 기록이 없는 경우, 『개인정보 보호법』 제39조의6에 근거하여 회원에게 사전 통지하고 휴면계정으로 전환합니다. 또한, 휴면계정의 개인정보는 다른 이용자의 개인정보와 분리하여 5년 간 별도 저장, 관리 됩니다.<br>
단, 전자상거래 등에서의 소비자보호에 관한 법률 등 관련 법령의 규정에 따라 거래 관계 확인을 위해 개인정보를 일정기간 보유합니다.

<table style="width: 90%; border:1px solid #ccc;">
	<colgroup>
		<col width="35%"/>
		<col width="*" />
		<col width="20%" />
	</colgroup>
	
	<tr>
		<th>법령</th>
		<th>항목</th>
		<th>기간</th>
	</tr>
	<tr>
		<td rowspan="3">전자상거래 등에서의 소비자보호에 관한 법률	</td>
		<td>계약 또는 청약철회 등에 관한 기록</td>
		<td>5년</td>
	</tr>
	<tr>
		<td>대금결제 및 재화 등의 공급에 관한 기록</td>
		<td>5년</td>
	</tr>
	<tr>
		<td>소비자의 불만 또는 분쟁 처리에 관한 기록	</td>
		<td>3년</td>
	</tr>
	<tr>
		<td>전자금융거래법</td>
		<td>전자금융 거래에 관한 기록	</td>
		<td>5년</td>
	</tr>
	<tr>
		<td>통신비밀보호법</td>
		<td>서비스 이용 관련 개인정보(로그기록)	</td>
		<td>3개월</td>
	</tr>
	
</table>
<br>
<br>
3. 개인정보처리의 위탁<br>
① 회사는 원활한 개인정보 업무처리를 위하여 다음과 같이 개인정보 처리 업무를 위탁하고 있습니다.

<table style="width: 90%; border:1px solid #ccc;">
	<colgroup>
		<col width="60%"/>
		<col width="*" />
	</colgroup>
	
	<tr>
		<th>수탁 업체	</th>
		<th>위탁업무 내용</th>
	</tr>
	<tr>
		<td>㈜케이지이니시스, ㈜카카오 페이, 네이버파이낸셜㈜, 엔에이치엔페이코㈜, ㈜이베이코리아, ㈜차이코퍼레이션, ㈜비바리퍼블리카</td>
		<td>전자결제 수단 제공</td>
	</tr>
	<tr>
		<td>㈜케이지모빌리언스</td>
		<td>본인인증</td>
	</tr>
	<tr>
		<td>효성ITX, SK앰엔서비스㈜, ㈜유세스파트너스	</td>
		<td>고객 상담, 주문 중개 및 민원 응대 업무</td>
	</tr>
	<tr>
		<td>SK텔링크	</td>
		<td>안심번호 서비스</td>
	</tr>
	<tr>
		<td>㈜푸드테크	</td>
		<td>주문 정보 중개</td>
	</tr>
	<tr>
		<td>엔에이치엔㈜, ㈜엠티에스컴퍼니	</td>
		<td>카카오 비즈메시지 및 문자 서비스 운영</td>
	</tr>
	<tr>
		<td>(유)플라이앤컴퍼니	</td>
		<td>요기요 익스프레스 배달 대행</td>
	</tr>
	<tr>
		<td>㈜이씨에스텔레콤	</td>
		<td>상담시스템 유지보수 업무 대행</td>
	</tr>
	<tr>
		<td>㈜스켈터랩스	</td>
		<td>카카오 챗봇 서비스</td>
	</tr>
	<tr>
		<td>㈜즐거운	</td>
		<td>선물하기 서비스</td>
	</tr>
</table>
<br>
② 회사는 다음과 같이 개인정보를 국외 이전하고 있습니다.
<table style="width: 90%; border:1px solid #ccc;">
	<colgroup>
		<col width="60%"/>
		<col width="*" />
	</colgroup>
	
	<tr>
		<th>이전받는 자	</th>
		<td>Delivery Hero SE<br>
			(+49 (0)30 5444 59 000)</td>
	</tr>
	<tr>
		<th>국가	</th>
		<td>독일</td>
	</tr>
	<tr>
		<th>이전되는 개인정보 항목	</th>
		<td>서비스 이용 시 수집하는 정보</td>
	</tr>
	<tr>
		<th>이전일시 및 이전방법	</th>
		<td>서비스 이용 시 네트워크를 통한 이전</td>
	</tr>
	<tr>
		<th>이용목적 및 보유기간	</th>
		<td>업무시스템 유지보수 및 개선, 통계/분석<br>
			회원탈퇴일로부터 90일까지</td>
	</tr>
</table>
<br>



③ 회사는 위탁계약 체결 시 위탁업무 수행 목적 외 개인정보 처리 금지, 기술적 ∙ 관리적 보호조치, 재 위탁 제한, 수탁자에 대한 관리 ∙ 감독, 손해배상 등 책임에 관한 사항을 계약서 등 문서에 명시하고, 수탁자가 개인정보를 안전하게 처리하는지를 감독하고 있습니다.<br>
④ 위탁 업무의 내용이나 수탁자가 변경될 경우에는 지체없이 본 개인정보 처리방침을 통하여 공개하도록 하겠습니다.
<br>
<br>
4. 개인정보 제3자 제공 및 공유<br>
① 회사는 이용자의 개인정보를 명시한 범위 내에서만 처리하며, 정보주체의 동의, 법률의 특별한 규정에 해당하는 경우에만 개인정보를 제3자에게 제공합니다.<br>
② 회사는 다음과 같이 개인정보를 제3자에게 제공하고 있습니다.<br>
&nbsp;&nbsp;a. 가게
<table style="width: 90%; border:1px solid #ccc;">
	<colgroup>
		<col width="60%"/>
		<col width="*" />
	</colgroup>
	
	<tr>
		<th>개인정보를 제공받는 자	</th>
		<td>제휴 가게(리스트)</td>
	</tr>
	<tr>
		<th>제공받는 자의 개인정보 이용 목적	</th>
		<td>주문 관리, 음식 배달 서비스 제공, 민원 응대</td>
	</tr>
	<tr>
		<th>제공하는 개인정보의 항목	</th>
		<td>주소, 휴대전화번호(안심번호 적용 시 제외), 주문내역, 요청사항</td>
	</tr>
	<tr>
		<th>개인정보 보유 및 이용기간	</th>
		<td>48시간(단, 관련 법령에 따라 보관이 필요한 경우 해당기간까지 보관)</td>
	</tr>
</table>


&nbsp;&nbsp;b. 배달 대행(가게 자체 배달 시 제외)
<table style="width: 90%; border:1px solid #ccc;">
	<colgroup>
		<col width="60%"/>
		<col width="*" />
	</colgroup>
	
	<tr>
		<th>개인정보를 제공받는 자	</th>
		<td>제휴 배달 대행 업체(리스트)</td>
	</tr>
	<tr>
		<th>제공받는 자의 개인정보 이용 목적	</th>
		<td>음식 배달 서비스 제공</td>
	</tr>
	<tr>
		<th>제공하는 개인정보의 항목	</th>
		<td>주소, 휴대전화번호(안심번호 적용 시 제외), 주문내역, 요청사항 </td>
	</tr>
	<tr>
		<th>개인정보 보유 및 이용기간	</th>
		<td>제공 목적 달성 후 지체없이 파기(단, 관련 법령에 따라 보관이 필요한 경우 해당기간까지 보관)</td>
	</tr>
</table>
&nbsp;&nbsp;c. 다회용기 수거 업체(다회용기 이용시에 한함)
<table style="width: 90%; border:1px solid #ccc;">
	<colgroup>
		<col width="60%"/>
		<col width="*" />
	</colgroup>
	<tr>
		<th>개인정보를 제공받는 자	</th>
		<td>주식회사 잇</td>
	</tr>
	<tr>
		<th>제공받는 자의 개인정보 이용 목적	</th>
		<td>다회용기 수거</td>
	</tr>
	<tr>
		<th>제공하는 개인정보의 항목	</th>
		<td>주소, 휴대전화번호</td>
	</tr>
	<tr>
		<th>개인정보 보유 및 이용기간	</th>
		<td>7일<td>
	</tr>
</table>

③ 배달서비스 등 제휴서비스 제공을 위하여 이용자 동의 후 본조 제2항 기재 제3자에게 개인정보를 제공합니다.<br>
④ 회사 서비스의 특성 상 수시로 발생하는 서비스 제공업체와의 제휴로 인하여 “제공 받는 자” 관련 개인정보 처리방침 개정이 어려우므로, 서비스 제공 업체를 위 표 내 제휴사 리스트 부분에 링크하여 안내합니다.<br>
<br>
<br>
5. 이용자 및 법정대리인의 권리 ∙ 의무 및 행사방법<br>
① 이용자는 회사에 대해 언제든지 다음 각 호의 개인정보 보호 관련 권리를 행사할 수 있습니다.<br>
a. 개인정보 열람 요구<br>
b. 오류 등이 있을 경우 정정 요구<br>
c. 삭제 요구<br>
d. 처리 정지 요구<br>
② 위 권리 행사는 회사에 대해 서면, 전화, 전자우편, 모사전송(FAX) 등을 통하여 하실 수 있으며 회사는 내부 절차에 따라 영업일 10 일 이내 처리하도록 하겠습니다. (단, 관련 법령에 따라 일정기간 보관이 필요한 정보는 제외)<br>
③ 이용자가 개인정보의 오류 등에 대한 정정 또는 삭제를 요구한 경우에는 회사는 정정 또는 삭제를 완료할 때까지 당해 개인정보를 이용하거나 제공하지 않습니다.<br>
④ 위 권리 행사는 이용자의 법정대리인이나 위임을 받은 자 등 대리인을 통하여 하실 수 있습니다. 이 경우, 법정대리인은 이용자의 모든 권리를 가집니다.<br>
⑤ 이용자는 정보통신망법, 개인정보보호법 등 관계법령을 위반하여 회사가 처리하고 있는 이용자 본인이나 타인의 개인정보 및 사생활을 침해하여서는 안됩니다.<br>
⑥ 이용자의 개인정보 열람, 정정, 탈퇴는 『마이요기요』를 통해서도 언제든 가능합니다.<br>
⑦ 회원탈퇴는 『마이요기요』 > 『회원탈퇴』를 클릭하거나 개인정보보호책임자에게 팩스, 우편, 고객센터, 전화 등으로 연락하시면 회원탈퇴 신청 시점으로부터 90 일 동안 재가입 방지를 위한 개인정보 보유 
&nbsp;&nbsp;&nbsp;&nbsp;이후 개인정보의 삭제 등 필요한 조치를 하겠습니다.<br>
⑧ 이용자는 개인정보를 최신의 상태로 정확하게 입력 또는 회사에 통보하여 불의의 사고가 발생하지 않도록 예방해야 합니다.<br>
⑨ 이용자가 제공 또는 입력한 정보가 부정확함으로 인해 발생하는 사고의 책임은 이용자에게 있으며, 타인 정보의 도용 등 허위정보를 입력할 경우 요기요 서비스 제공이 중단될 수 있습니다.<br>
⑩ 이용자는 개인정보를 보호받을 권리와 함께 스스로를 보호하고 타인의 정보를 침해하지 않을 의무를 가지고 있으며, 이용자의 개인정보가 유출되지 않도록 조심하고, 타인의 개인정보를 훼손하지 않도록 
&nbsp;&nbsp;&nbsp;&nbsp;유의해야 합니다. 만약 이 같은 책임을 다하지 못하고 타인의 정보 및 존엄성을 훼손할 시에는 「정보통신망 이용촉진 및 정보보호 등에 관한 법률」, 「개인정보보호법」 등에 의해 처벌받을 수 있습니다.<br>
<br>
<br>
6. 아동의 개인정보보호<br>
회사는 만 14세 미만 아동의 개인정보를 보호하기 위하여, 만 14세 미만 아동의 회원가입은 제한합니다.

<br>
<br>
7. 개인정보 자동 수집 장치의 설치 ∙ 운영 및 거부<br>
① 회사는 이용자의 서비스 이용 행태 분석을 통한 서비스 개선과 맞춤형 광고 전송, 광고 성과 측정을 위해 쿠키/픽셀/SDK 등을 설치 ∙ 운영합니다. 이 과정에서 이용자의 광고ID(ADID, IDFA 등) 및 행태정보가 자동으로 수집 ∙ 이용될 수 있으며, 개인식별정보와는 결합하여 이용되지 않습니다. 광고ID는 맞춤형 광고를 위해 모바일 운영체제(OS)에서 부여하는 ID를 말하며, 행태정보는 웹 사이트 방문 이력, 앱 사용 이력, 구매 및 검색 이력 등 이용자의 관심, 흥미, 기호 및 성향 등을 파악하고 분석할 수 있는 온라인상의 이용자 활동정보를 말합니다.<br>
a. 쿠키/픽셀/SDK란<br>
- 쿠키는 웹사이트를 운영하는데 이용되는 서버가 이용자의 웹브라우저에게 보내는 작은 정보 파일이며 이용자들의 단말기에 저장되기도 합니다.<br>
- 픽셀은 웹사이트에 있는 소량의 코드입니다. 이용자가 특정 콘텐츠에 반응했는지 여부를 알아보기 위해 픽셀을 사용합니다.<br>
- SDK는 앱에서 동작하며 이용자의 앱 이벤트 데이터를 수집합니다. 앱 이벤트 데이터가 이용자들이 앱에서 취하는 행동을 추적하고 측정할 수 있도록 합니다.<br>
b. 회사는 이러한 쿠키/픽셀/SDK를 통하여 광고 사업자를 포함한 타사가 이용자의 광고ID와 행태정보를 수집할 수 있도록 허용하고 있습니다. 타사 쿠키/픽셀/SDK 설치 ∙ 운영 현황은 다음과 같습니다.<br>
- Google Analytics 및 광고 쿠키(Google LLC 정책 바로가기)<br>
- Facebook 픽셀 및 SDK(Facebook, Inc. 정책 바로가기)<br>
- Adjust SDK(Adjust GmbH 정책 바로가기)<br>
- Braze SDK(Braze, Inc. 정책 바로가기)<br>
c. 이용자는 웹브라우저나 스마트폰 설정 기능을 이용하여 언제든지 이를 거부할 수 있습니다.<br>
- IE : 우측 상단 도구 > 인터넷 옵션 > 개인 정보 > 고급 > 차단<br>
- Chrome : 우측 상단 더보기 > 설정 > 개인정보 및 보안 > 쿠키 및 기타 사이트 데이터 > 차단<br>
- Android : 설정 > Google > 광고 > ‘광고 맞춤 설정’ 선택 해제<br>
- iOS : 설정 > 개인 정보 보호 > 추적 > ‘배달요기요’ 비활성화<br>
② 회사는 이용자로부터 직접 수집한 행태정보를 활용하여 자사 서비스 안에서 이루어지는 이용자별 맞춤형 광고를 진행하고 있으며, 이 경우에도 개인식별정보와 결합하여 이용되지 않습니다.
<table style="width: 90%; border:1px solid #ccc;">
	<colgroup>
		<col width="60%"/>
		<col width="*" />
	</colgroup>
	<tr>
		<th>행태 정보의 수집 및 처리광고 사업자	</th>
		<td>유한책임회사 이리리잇</td>
	</tr>
	<tr>
		<th>수집하는 행태정보의 항목	</th>
		<td>이용자의 주문 이력</td>
	</tr>
	<tr>
		<th>행태정보 수집 방법	</th>
		<td>이용자가 앱 서비스 이용 시 생성되는 정보 자동 수집</td>
	</tr>
	<tr>
		<th>행태정보 수집 목적	</th>
		<td>이용자 관심 기반의 맞춤형 광고(할인 혜택 추천 등)</td>
	</tr>
	<tr>
		<th>행태정보 보유 ∙ 이용 기간 및 이후 정보처리 방법	</th>
		<td>이용기간은 1년 미만이며, 이후에는 거래 관계 확인 목적만을 위하여 보유 ∙ 이용됩니다.</td>
	</tr>
	<tr>
		<th>이용자 통제권 행사 방법	</th>
		<td>요기요 앱 『마이요기요』 > 설정에서 『요타임딜 추천 받기』 설정</td>
	</tr>
	<tr>
		<th>이용자 피해구제 방법	</th>
		<td>담당부서: 정보보안팀<br>
			E-mail: privacy@elit.co.kr</td>
	</tr>
</table>

<br>
<br>
8. 개인정보의 파기<br>
① 회사는 개인정보 보유기간의 경과, 처리 목적 달성 등 개인정보가 불필요하게 되었을 때에는 지체없이 개인정보를 파기합니다.<br>
② 이용자로부터 동의 받은 개인정보 보유기간이 경과하거나 처리 목적이 달성되었음에도 불구하고 다른 법령에 따라 개인정보를 계속 보존하여야 하는 경우에는, 해당 개인정보를 별도의 데이터베이스(DB)로 옮기거나 보관장소를 달리하여 보존합니다.<br>
③ 회사는 전자적 파일 형태로 기록 ∙ 저장된 개인정보는 기록을 재생할 수 없도록 파기하며, 종이 문서에 기록 ∙ 저장된 개인정보는 분쇄기로 분쇄하거나 소각하여 파기합니다.<br>

<br>
<br>
9. 개인정보의 안전성 확보조치
① 회사는 이용자의 개인정보를 취급함에 있어 개인정보가 분실, 도난, 누출, 변조 또는 훼손되지 않도록 안전성 확보를 위하여 다음과 같은 보호조치를 이행하고 있습니다.<br>
② 기술적 보호조치<br>
a. 이용자의 개인정보는 비밀번호에 의해 보호되며 파일 및 전송데이터를 암호화하거나 파일 잠금 기능(Lock)을 사용하여 중요한 데이터는 별도의 보안기능을 통해 보호되고 있습니다.<br>
b. 회사는 백신프로그램을 이용하여 컴퓨터바이러스에 의한 피해를 방지하기 위한 조치를 취하고 있습니다. 백신프로그램은 주기적으로 업데이트되며 갑작스런 바이러스가 출현할 경우 백신이 나오는 즉시 이를 제공함으로써 개인정보가 침해되는 것을 방지하고 있습니다.<br>
c. 회사는 암호알고리즘을 이용하여 네트워크 상의 개인정보를 안전하게 전송할 수 있는 보안장치(SSL)를 채택하고 있습니다.<br>
d. 해킹 등 외부침입에 대비하여 각 서버마다 침입차단시스템 및 취약점 분석시스템 등을 이용하여 보안에 만전을 기하고 있습니다.<br>
③ 관리적 보호조치<br>
a. 회사는 이용자의 개인정보에 대한 접근권한을 최소한의 인원으로 제한하고 있습니다. 그 최소한의 인원에 해당하는 자는 다음과 같습니다.<br>
- 이용자를 직접 상대로 하여 마케팅 업무를 수행하는 자<br>
- 고객의 불만 및 이용문의 처리 업무를 수행하는 자<br>
- 개인정보보호책임자 및 담당자 등 개인정보관리업무를 수행하는 자<br>
- 기타 업무상 개인정보의 취급이 불가피한 자<br>
b. 입사 시 전 직원의 보안서약서를 통하여 사람에 의한 정보유출을 사전에 방지하고 개인정보 처리방침에 대한 이행사항 및 직원의 준수여부를 감사하기 위한 내부절차를 마련하고 있습니다.<br>
c. 개인정보 관련 취급자의 업무 인수인계는 보안이 유지된 상태에서 철저하게 이뤄지고 있으며 입사 및 퇴사 후 개인정보 사고에 대한 책임을 명확화하고 있습니다.<br>
d. 회사는 이용자 개인의 실수나 기본적인 인터넷의 위험성 때문에 일어나는 일들에 대해 책임을 지지 않습니다. 회원 개개인이 본인의 개인정보를 보호하기 위해서 자신의 ID 와 비밀번호를 적절하게 관리하고 여기에 대한 책임을 져야 합니다.<br>
e. 그 외 내부 관리자의 실수나 기술관리 상의 사고로 인해 개인정보의 상실, 유출, 변조, 훼손이 유발될 경우 회사는 즉각 이용자에게 사실을 알리고 적절한 대책과 보상을 강구할 것입니다.<br>
<br>
<br>

10. 링크 사이트<br>
회사는 이용자에게 다른 회사의 웹사이트 또는 자료에 대한 링크를 제공할 수 있습니다. 이 경우 회사는 외부사이트 및 자료에 대한 아무런 통제권이 없으므로 그로부터 제공받는 서비스나 자료의 유용성에 대해 책임질 수 없으며 보증할 수 없습니다. 회사가 포함하고 있는 링크를 클릭(click)하여 타 사이트(site)의 페이지로 옮겨갈 경우 해당 사이트의 개인정보 처리방침은 회사와 무관하므로 새로 방문한 사이트의 정책을 검토해 보시기 바랍니다.<br>

<br>
11. 의견수렴 및 불만처리
① 회사는 이용자의 의견을 소중하게 생각하며, 이용자는 의문사항으로부터 언제나 성실한 답변을 받을 권리가 있습니다.<br>
② 회사는 이용자와의 원활한 의사소통을 위해 고객센터를 운영하고 있으며 연락처는 다음과 같습니다.
<table style="width: 90%; border:1px solid #ccc;">
	<colgroup>
		<col width="60%"/>
		<col width="*" />
	</colgroup>
	<tr>
		<th>구분</th>
		<th>내용</th>
	</tr>
	<tr>
		<td>전자우편</td>
		<td>privacy@elit.co.kr</td>
	</tr>
	<tr>
		<td>주소</td>
		<td>서울 서초구 </td>
	</tr>
	
</table>
③ 전자우편을 이용한 상담은 접수 후 성실하게 답변 드리겠습니다. 다만, 근무시간 이후 또는 주말 및 공휴일에는 익일 처리하는 것을 원칙으로 합니다.<br>
④ 기타 개인정보에 관한 상담이 필요한 경우에는 회사의 위 전자우편으로 문의하실 수 있으며, 국가기관에 신고나 상담이 필요한 경우에는 아래의 연락처에 문의하셔서 도움을 받으실 수 있습니다.<br>
<table style="width: 90%; border:1px solid #ccc;">
	<colgroup>
		<col width="60%"/>
		<col width="*" />
	</colgroup>
	<tr>
		<th>개인정보침해신고센터	</th>
		<td>118 / <a href="http://privacy.kisa.or.kr/">http://privacy.kisa.or.kr/</a></td>
	</tr>
	<tr>
		<th>대검찰청 사이버범죄수사단	</th>
		<td>02-3480-3571 / <a href="http://www.spo.go.kr">http://www.spo.go.kr</a></td>
	</tr>
	<tr>
		<th>경찰청 사이버안전국	</th>
		<td>	182 / <a href="https://cyberbureau.police.go.kr/">https://cyberbureau.police.go.kr/</a></td>
	</tr>
	<tr>
		<th>개인정보분쟁조정위원회	</th>
		<td>1833-6972 / <a href="https://www.kopico.go.kr/">https://www.kopico.go.kr/</a></td>
	</tr>
</table>

<br>
<br>
12. 개인정보보호책임자
① 회사는 이용자의 개인정보를 보호하는데 있어 안전하게 보호될 수 있도록 최선을 다하고 있습니다. 개인정보를 보호하는데 있어 이용자께 고지한 사항들에 반하는 사고가 발생할 시에 개인정보보호책임자가 모든 책임을 집니다. 그러나 기술적인 보완조치를 했음에도 불구하고, 해킹 등 기본적인 네트워크상의 위험성에 의해 발생하는 예기치 못한 사고로 인한 정보의 훼손 및 방문자가 작성한 게시물에 의한 각종 분쟁에 관해서는 책임이 없습니다.<br>
② 이용자의 개인정보를 취급하는 책임자 및 담당자는 다음과 같으며 개인정보 관련 문의사항에 신속하고 성실하게 답변해드리고 있습니다.<br>
[개인정보보호책임자]
<table style="width: 90%; border:1px solid #ccc;">
	<colgroup>
		<col width="60%"/>
		<col width="*" />
	</colgroup>
	<tr>
		<th>구분</th>
		<th>내용</th>
	</tr>
	<tr>
		<td>책임자 성명</td>
		<td>***</td>
	</tr>
	<tr>
		<td>담당부서</td>
		<td>정보보안팀</td>
	</tr>
	<tr>
		<td>전자우편</td>
		<td>privacy@elit.co.kr</td>
	</tr>
	
</table>

<br>
<br>
13. 고지의 의무<br>
현 개인정보 처리방침은 정부의 정책 또는 보안기술의 변경에 따라 내용의 추가, 삭제 및 수정이 있을 시에는 개정 최소 7일 전(단, 중요한 내용 변경의 경우 30일 전)부터 회사가 운영 하는 사이트의 '공지'란 또는 이메일을 통해 고지할 것입니다.
<br>
- 고지 일자: 2021.11.11<br>
- 시행 일자: 2021.11.17


        </div>
    </section> 
</div>
    
</div>
</body>
</html>
