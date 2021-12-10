package egov.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import egov.service1.BossMemberService;
import egov.service1.BossMemberVO;

@Controller
public class BossMemberController {
	@Resource(name = "bossmemberService")
	BossMemberService bossmemberService;
	
	@RequestMapping("BossMemberList.do")
	public String selectbossmemeberlist( BossMemberVO vo, Model model ) throws Exception{
		
		List<?> list = bossmemberService.selectbossmemberService(vo);
		
		model.addAttribute("vo",vo);
		model.addAttribute("list",list);
		
		
		return "admin/BossMemberList";
	}
}
