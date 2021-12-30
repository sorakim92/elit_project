<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
	<script>
	$(function() {
		$("#Withdraw").click(function() {
			window.open("Pop_member_Withdraw.do","_blank","width=1000px,height=500px,toolbars=no,scrollbars=no");
		})
	});

</script>
    
 <div class="footer">
    <div class="ft_ul">
        <ul class="ul1">
            <li><a href="nBoardList.do">공지사항</a></li>
            <li><a href="faqList.do">고객센터</a></li>
            <li><a href="businessEnterList.do">입점문의</a></li>
            <li><a id="Withdraw" name="Withdraw">회원탈퇴</a></li>
        </ul>
        <ul class="ul2">
            <li><a href="termsOfService.do">서비스 이용약관</a></li>
            <li><a href="PrivacyPolicy.do">개인정보처리방침</a></li>
        </ul>
    </div>
    <div class="ft_info">
        <span class="ft_info_sp1">(주) 이릿딜리버리 </span> 
        <span class="ft_info_sp1">사업자등록번호 131-0000-0000 </span>
        <span class="ft_info_sp1"> 주소 서울송파구 이릿로23 이릿빌딩 15F</span><br>
        @&nbsp;COPYRIGHT ELIT ALL RIGHT RESERVED
    </div>
</div>
