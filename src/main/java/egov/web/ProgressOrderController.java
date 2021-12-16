package egov.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import egov.service1.MenuOrderVO;
import egov.service1.ProgressOrderService;
import egov.service1.ProgressOrderVO;

@Controller
public class ProgressOrderController {
	@Resource(name = "progressorderService")
	ProgressOrderService progressorderService;
	
	
	@RequestMapping("orderSub.do")
	@ResponseBody
	public String insertProgressOrder(ProgressOrderVO vo, MenuOrderVO mvo)
											throws Exception {
		
		String result = progressorderService.insertProgressOrder(vo);
		System.out.println(result);
		
		System.out.println("====="+vo.getMenuname());
		String msg = "";
		if(result == null) {
			//preorder값도 지우기 
			int p_result = progressorderService.resetpreorder(vo);
			System.out.println(p_result);
			if(p_result > 0) {
				System.out.println("==== 지우기 성공~~ ");
			}
			msg = "ok";
		}
				
		return msg;
	}
	
	
	
}
