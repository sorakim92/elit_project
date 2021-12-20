package egov.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainPageController {

	
	
	
	@RequestMapping("mainPage.do")
	public String mainPage() throws Exception {
		
		
		return "main/mainPage";
	}
	
	
	
	@RequestMapping("termsOfService.do")
	public String termsOfService() throws Exception {
		
		
		return "policy/Terms";
	}
	
	
	@RequestMapping("PrivacyPolicy.do")
	public String PrivacyPolicy() throws Exception {
		
		
		return "policy/PrivacyPolicy";
	}
	
}
