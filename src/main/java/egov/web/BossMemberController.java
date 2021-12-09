package egov.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import egov.service1.BossMemberService;
import egov.service1.BossMemberVO;

@Controller
public class BossMemberController {
	@Resource(name = "bossmemberService")
	BossMemberService bossmemberService;
	
	
	@RequestMapping("bossmemberWrite.do")
	public String bossmemberWrite() throws Exception {

		return "mypage/businessMypage";
	}
	
	@RequestMapping("bossmemberWriteSave.do")
	@ResponseBody
	public String insertbossmemberWrite(BossMemberVO vo) 
									throws Exception {
		
		
		String result = bossmemberService.insertbossmemberWrite(vo);
	
		String msg = "";
		
		if(result == null) {
			msg = "ok";
		}
		
		return msg;
	}
}
