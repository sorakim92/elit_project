package egov.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import egov.service1.MenuOrderService;
import egov.service1.MenuOrderVO;

@Controller
public class MenuOrderController {

	@Resource(name="menuorderService")
	MenuOrderService menuorderService;
	
	@RequestMapping("menuList.do")
	public String selectStoreMenuList(MenuOrderVO vo,Model model) 
											throws Exception {
		
		
		
		vo = menuorderService.selectStoreinfo(vo);
		
		List<?> list = menuorderService.selectStoreMenuList(vo);
		
		
		

		model.addAttribute("vo",vo);
		model.addAttribute("list",list);
				
		return "menu2/storeMenuList";
	}
	
	
}
