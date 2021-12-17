package egov.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import egov.service1.ProgressOrderService;
import egov.service1.ProgressOrderVO;

@Controller
public class ProgressOrderController {
	@Resource(name = "progressorderService")
	ProgressOrderService progressorderService;
	
	@RequestMapping(value="progressorderList.do")
	public String selectProgressOrderList(ProgressOrderVO vo, Model model) throws Exception {
		
		List<?> list = progressorderService.selectProgressOrderList(vo);
		model.addAttribute("list",list);
		
		return "order/ProgressOrder";
	}
}
