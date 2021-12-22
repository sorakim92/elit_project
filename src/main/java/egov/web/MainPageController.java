package egov.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainPageController {

	
	
	/*
  메인페이지 (소라)
  */
	@RequestMapping("mainPage.do")
	public String mainPage() throws Exception {
		
		
		return "main/mainPage";
	}
	
	

	/*
	 *  로그인 유저 마이페이지
	 */
	@RequestMapping("myPage.do")
	public String myPage() throws Exception {
		
		return "mypage/myPage";
	}
	/*
  이용약관 (소라)
  */
	@RequestMapping("termsOfService.do")
	public String termsOfService() throws Exception {
		
		
		return "policy/Terms";
	}
	
	/*
  개인정보방침(소라)
  */
	@RequestMapping("PrivacyPolicy.do")
	public String PrivacyPolicy() throws Exception {
		
		
		return "policy/PrivacyPolicy";

	}
	
}
