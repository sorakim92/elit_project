package egov.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import egov.service1.MemberService;
import egov.service1.MemberVO;

@Controller
public class MemberController {
	@Resource(name = "memberService")
	MemberService memberService;
	
	@RequestMapping(value="memberSignin.do")
	public String memberSignin() {
		return "login/memberSignin";
	}
	
	@RequestMapping(value="memberSigninSave.do")
	public String insertmember(MemberVO vo) throws Exception {
		
		String result = memberService.insertMember(vo);
		
		System.out.println(vo.getUserid());
		System.out.println(vo.getUserpw());
		System.out.println(vo.getUsername());

		return "login/memberSignin";
		
		
	}
}
