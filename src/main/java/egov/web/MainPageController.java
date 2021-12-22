package egov.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainPageController {

	
	
	
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
	
}
