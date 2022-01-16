package egov.web;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import egov.service1.BusinessEnterService;
import egov.service1.BusinessEnterVO;

@Controller
public class BusinessEnterController {
	@Resource(name = "businessEnterService")
	BusinessEnterService businessenterService;
	
	@RequestMapping("businessEnterWrite.do")
	public String businessEnterWrite() {
		
		return "business/businessEnter"; 
	}
	
	@RequestMapping("businessEnterWriteSave.do")
	@ResponseBody
	public String insertBusinessEnter( BusinessEnterVO vo) throws Exception {
		
		String result = businessenterService.insertbusinessEnterWrite(vo);
		
		String msg = "";
		
		System.out.println(msg+"결과"+result);
		if( result == null) {
			msg = "ok";
		} else {
			msg ="save_fail";
		}
		
		return msg;
	}
	
	
	@RequestMapping("businessEnterList.do")
	public String selectbusinessEnterList(BusinessEnterVO vo, Model model , 
			HttpSession session) 
									throws Exception {
		
		String userid = (String) session.getAttribute("BossmemberSessionID");
		vo.setUserid(userid);
		
		List<?> list = businessenterService.selectbusinessEnterList(vo);
		
		
		model.addAttribute("list",list);
		model.addAttribute("vo",vo);
		return "business/businessEnterList";
	}
	
	
	
	
}
