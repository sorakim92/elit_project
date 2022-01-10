
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
	
 	//회원가입화면담당 (경석)
	@RequestMapping("memberwrite.do")
	public String memberSignin() {
		return "login/memberSignin";
	}
	
	//회원가입 저장소스 (경석)
	@RequestMapping("memberwriteSave.do")
	@ResponseBody
	public String insertmember(MemberVO vo) throws Exception {
		
		String message = "";
		
//		System.out.println("======================>>>"+vo.getBusiness());
		
		String result = memberService.insertMember(vo);
		// String result = null; (성공)
		if(result == null) {
			message = "ok";
		}
		return message;
	}
	//아이디 중복체크 (경석)
	@RequestMapping("Pop_doubleCheck.do")
	public String popidckwrite(String userid, Model model) throws Exception {
		
		model.addAttribute("userid1",userid);
		
		return "login/Pop_doubleCheck";
	}
	
	//회원가입 아이디 중복체크화면 (경석)
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
	
	//회원가입 주소 (경석)
	/*
	 * @RequestMapping("Pop_addr.do") public String Pop_addr() throws Exception {
	 * return "login/Pop_addr"; }
	 */
	
	//로그인 화면 담당 (경석)
	@RequestMapping("memberlogin.do")
	public String memberlogin() {
		return "login/memberlogin";
	}

	// 로그인 서브 처리창
	@RequestMapping("memberloginSub.do")
	@ResponseBody
	public String memberlogin(MemberVO vo, HttpSession session) throws Exception {
		
		String message = "";
		System.out.println("관리자시도000"+vo.getUserid());
		//관리자 로그인
		int a_count = memberService.selectAdminMemberLogin(vo);
		System.out.println("관리자시도"+vo.getUserid());
		if(a_count == 1) { //관리자인경우 
			System.out.println("관리자!"+vo.getUserid());
			session.setAttribute("AdminSessionID", vo.getUserid());
			message = "ok";
			
		} else if(a_count == 0) { //관리자 아닌경우 
			System.out.println("관리자시도실패"+vo.getUserid());
			//사업자로그인
			int b_count = memberService.selectBusinessMemberCount(vo);
			
			if(b_count == 1) { //사업자인경우 
				session.setAttribute("BossmemberSessionID", vo.getUserid());
				message = "ok";
		
			} else if(b_count == 0) { // 사업자 아닌경우 
				//일반회원 
				int count = memberService.selectMemberCount(vo);
					if(count == 1) {
						// session 생성
						session.setAttribute("SessionUserID", vo.getUserid());
						//message 처리
						message = "ok";
					} else {
						message="er1";
					}
			} 
		} else {
			message = "er1"; 
		}
		return message;
	}
	//로그아웃 화면
	@RequestMapping("memberlogout.do")
	@ResponseBody
	public String memberlogout(HttpSession session) {
		
		String msg = "";
		session.removeAttribute("SessionUserID");
		session.removeAttribute("BossmemberSessionID");
		session.removeAttribute("AdminSessionID");
		msg = "ok";

		return msg;
	}
	//아이디 찾기 (경석)
	@RequestMapping("Pop_useridfd.do")
	public String Pop_useridfd() throws Exception {
		
		return "login/Pop_useridfd";
	}
	
	//아이디 찾기 세이브 (경석)
	@RequestMapping("Pop_useridfdSave.do")
	@ResponseBody
	public String Pop_useridfdSave(MemberVO vo, Model model) throws Exception{
		
		//System.out.println("============"+vo.getUserid());
		String result = memberService.Pop_useridfd(vo);
		String msg = "";
		
		if(result == null) {
			msg="fail";
		} else {
			msg = result;
		}
		
		return msg;
	}
	//아이디 찾기 결과 팝업창 (경석)
	@RequestMapping("Pop_findselectuserid.do")
	public String Pop_findselectuserid(MemberVO vo, Model model) throws Exception {
		
		model.addAttribute("userid",vo.getUserid());
		
		return "login/Pop_findselectuserid";
	}
	
	//비밀번호 찾기 화면 (경석)
	@RequestMapping("Pop_memberpassfind.do")
	public String Pop_memberpassfind() throws Exception {
		
		return "login/Pop_memberpassfind";
	}
	// 비밀번호 세이브 찾기 (경석)
	@RequestMapping("Pop_memberpassfindSave.do")
	@ResponseBody
	public String Pop_memberpassfind(MemberVO vo ,Model model) throws Exception {
		
		int result = memberService.Pop_memberpassfind(vo);
		
		String userid = vo.getUserid();
		String email = vo.getEmail();
		
		
		String msg = "";
		
		System.out.println(userid);
		System.out.println(email);
		
		if(result == 1) {
			msg="ok:"+userid+":"+email;
		}  else  {
			msg = "fail";
		}
//		model.addAttribute("userid",userid); 이건 필요없는 소스
//		model.addAttribute("email",email);
		
		return msg;
		
	}
	//비밀번호 재설정 화면 (경석)
	@RequestMapping("Pop_newuserpw.do")
	public String Pop_newuserpw(String userid, String email, Model model) throws Exception {
		
		model.addAttribute("userid",userid);
		model.addAttribute("email",email);
//		System.out.println(userid);
//		System.out.println(email);
		return "login/Pop_newuserpw";
	}
	
	//비밀번호변경처리 (경석)
	@RequestMapping("Pop_newuserpwSave.do")
	@ResponseBody
	public String Pop_newuserpwSave(MemberVO vo) throws Exception {
		
		int result = memberService.Pop_newuserpw(vo);
		
		String msg = "";
		System.out.println(result);
		if(result == 1) {
			msg = "ok";
		} else {
			msg = "fail";
		}
		
		return msg;
		
	}
	
	//회원탈퇴 팝업창화면(경석)
	@RequestMapping("Pop_member_Withdraw.do")
	public String Pop_member_Withdraw() throws Exception {
		return "login/Pop_member_Withdraw";
	}
	
	//회원탈퇴Save(경석)
	@RequestMapping("Pop_member_WithdrawSave.do")
	@ResponseBody
	public String Pop_member_WithdrawSave(MemberVO vo, HttpSession session) throws Exception {
		
		int b_user = memberService.deleteBossMember(vo);
		int user = memberService.deletememberuser(vo);
		String msg = "";
		
		String userid = vo.getUserid();
		String userpw = vo.getUserpw();
		
		if( user == 1) {
			session.removeAttribute("SessionUserID");
			msg = "ok";
			if( b_user == 1) {
				session.removeAttribute("BossmemberSessionID");
				msg = "ok";
			} else {
				msg = "er";
			}
			
		} else {
			msg = "er";
		}
		
		return msg;
	}
	
	//회원정보 수정 (경석)
	@RequestMapping("memberMypage.do")
	public String membermypage( MemberVO vo, Model model, HttpSession session ) throws Exception {
		
		String userid = (String) session.getAttribute("SessionUserID");
		vo.setUserid(userid);
//		
		vo = memberService.selectmemberuser(vo);
//		
		model.addAttribute("vo",vo);
		
		return "login/Mypage";
	}
	//회원정보 수정save (경석)
	@RequestMapping("memberMypageSave.do")
	@ResponseBody
	public String updatemember(MemberVO vo, HttpSession session) throws Exception {
		System.out.println("테스트"+vo.getUserpw());
		
		String msg = "";
		int result = memberService.updatemember(vo);
		if(result == 0) {
			msg = "modify_fail";
		} else {
			msg = "ok";
		}
		return msg;
	}
}
