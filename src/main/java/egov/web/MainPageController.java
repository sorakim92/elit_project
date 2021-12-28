package egov.web;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import egov.service1.NBoardService;
import egov.service1.NBoardVO;

@Controller
public class MainPageController {

	@Resource(name = "nboardService")
	NBoardService nboardService;
	
	
	/*
  메인페이지 (소라)
  */
	@RequestMapping("mainPage.do")
	public String mainPage(NBoardVO vo, Model model) throws Exception {
		
		//메인페이지 하단 공지사항, 자주묻는질문 보이기 
		
		List<?> list = nboardService.selectNboardList(vo);
		
		List<?> flist = nboardService.selectFAQList(vo);

		
		model.addAttribute("list",list);
		model.addAttribute("flist",flist);

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
