package egov.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import egov.service1.BossMemberService;

@Controller
public class BossMemberController {
	@Resource(name = "bossMemberService")
	BossMemberService bossmemberService;
}
