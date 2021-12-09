package egov.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import egov.service1.MemberService;
import egov.service1.MemberVO;

@Controller
public class MemberController {
	@Resource(name = "memberService")
	MemberService memberService;
	
	//회원가입화면담당
	@RequestMapping("memberwrite.do")
	public String memberSignin() {
		return "login/memberSignin";
	}
	
	//회원가입 저장소스
	@RequestMapping("memberwriteSave.do")
	public String insertmember(MemberVO vo) throws Exception {
		
		String message = "";
		
		String result = memberService.insertMember(vo);
		// String result = null; (성공)
		if(result == null) {
			message = "ok";
		}
		return message;
	}
	
	@RequestMapping("Pop_doubleCheck.do")
	public String popidckwrite(String userid, Model model) throws Exception {
		
		model.addAttribute("userid1",userid);
		
		return "login/Pop_doubleCheck";
	}
	
	//회원가입 아이디 중복체크화면
	@RequestMapping("Pop_doubleCheckSave.do")
	@ResponseBody
	public String popidck(String userid, Model model) throws Exception{
		//Logger.info("")
		System.out.println(userid);
		
		int result = memberService.popidck(userid);
		
		System.out.println(result);
		
		String msg = "ok";
		if(result != 0) {
			msg= "fail";
		} else {
			msg="ok";
		}
		
		return msg;
	}
	
	//로그인 화면 담당
	@RequestMapping("memberlogin.do")
	public String memberlogin() {
		return "login/memberlogin";
	}
	
	
	@RequestMapping("memberloginSub.do")
	@ResponseBody
	public String memberlogin(MemberVO vo, HttpSession session) throws Exception {
		
		String message = "";
		int count = memberService.selectMemberCount(vo);
		if(count == 1) {
			// session 생성
			session.setAttribute("SessionUserID", vo.getUserid());
			//message 처리
			message = "ok";
		}
		return message;
	}
	
	@RequestMapping("memberlogout.do")
	public String memberlogout(HttpSession session) {
		
		session.removeAttribute("SessionUserID");
		return "login/memberlogin";
	}
	
	@RequestMapping("Pop_memberpassfind.do")
	public String Pop_memberpassfind(String email, Model model) throws Exception {
		
		model.addAttribute("email1",email);
		
		return "login/Pop_memberpassfind";
	}
	
	@RequestMapping("Pop_useridfd.do")
	public String Pop_useridfd(String email, Model model) throws Exception {
		
		model.addAttribute("email1",email);
		
		return "login/Pop_useridfd";
	}
	
}
