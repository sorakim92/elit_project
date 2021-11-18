package egov.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import egov.service1.MemberService;

@Controller
public class MemberController {
	@Resource(name = "memberService")
	MemberService memberService;
}
