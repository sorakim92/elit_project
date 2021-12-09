package egov.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import egov.service1.B_ConsumerListService;
import egov.service1.B_ConsumerListVO;

@Controller
public class B_ConsumerListController {

	@Resource(name = "b_consumerlistService")
						//IMPL 파일에 있는 @service이름이랑 같게 해야함 대소문자 유의
	B_ConsumerListService b_consumerlistService;
	
	@RequestMapping("b_ConsumerListWrite.do")
	public String b_ConsumerListWrite() throws Exception {

		return "business/Pop_B_consumerWrite";
	}
	
	@RequestMapping("b_ConsumerListWriteSave.do")
	@ResponseBody
	public String insertb_ConsumerListWrite(B_ConsumerListVO vo) 
									throws Exception {
		
		
		String result = b_consumerlistService.insertb_ConsumerListWrite(vo);
	
		String msg = "";
		
		if(result == null) {
			msg = "ok";
		}
		
		return msg;
	}
	
	
	@RequestMapping("b_consumerList.do")
	public String selectb_ConsumerList(B_ConsumerListVO vo, Model model) 
									throws Exception {
		
		List<?> list = b_consumerlistService.selectb_ConsumerList(vo);
		model.addAttribute("list",list);
		
		return "business/B_consumerList";
	}
	
	
	
}
