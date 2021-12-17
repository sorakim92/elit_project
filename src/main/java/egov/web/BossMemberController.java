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
	
	@RequestMapping("BossMemberDetail.do")
	public String selectbossmemberDetail(BossMemberVO vo, Model model) 
									throws Exception {
		// 상세보기 서비스
		vo = bossmemberService.selectbossmemberDetail(vo);
		String userid = "test1";
		vo.setuserid(userid);
		
		
		
		model.addAttribute("vo",vo);
		
		
		return "mypage/businessMypage";
	}
	
	@RequestMapping("BossMemberModifySave.do")
	@ResponseBody
	public String updatebossmember(BossMemberVO vo) 
									throws Exception {
		
		int result = bossmemberService.updatebossmember(vo);
		
		String msg = "";
		
		if(result == 0) {
			msg = "modify_fail";
		} else if (result ==1) {
			msg = "ok";
		}
		
		
		return msg;
	}
	
	
	
}
