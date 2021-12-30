package egov.web;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import egov.service1.NBoardService;
import egov.service1.NBoardVO;
import egov.service1.ProgressOrderService;
import egov.service1.ProgressOrderVO;

@Controller
public class MainPageController {

	@Resource(name = "nboardService")
	NBoardService nboardService;
	
	@Resource(name = "progressorderService")
	ProgressOrderService progressorderService;
	
	
	/*
  메인페이지 (소라)
  */
	@RequestMapping("mainPage.do")
	public String mainPage(NBoardVO vo,	ProgressOrderVO pvo, Model model, HttpSession session) throws Exception {
		
		/* 현재진행중인 주문내영보기 (로그인시 , 주문있을 시) */
		    // 1. 로그인 인증은 jsp 내에서 session 있는지 확인해보기 ! 
			// 2. 현재주문있는지 확인 
		String userid = (String) session.getAttribute("SessionUserID");
		//System.out.println("===========아이디!!!"+userid);
		if(userid != null ) {
			List<?> plist = progressorderService.selectMainProOrder(userid);
			model.addAttribute("plist",plist);
		}
		
		
		
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
