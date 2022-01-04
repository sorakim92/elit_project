package egov.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import egov.service1.BusinessEnterVO;
import egov.service1.StoreService;

@Controller
public class StoreController {
	@Resource(name ="storeService")
	StoreService storeService;


	/*
	 * StoreRegister화면 List (강성모)
	 *	 */
	@RequestMapping("StoreRegisterList.do")
	public String selectStoreRegister( BusinessEnterVO vo, Model model )
												throws Exception{
		
		List<?> list = storeService.selectstoreService(vo);
		vo = storeService.selectStoreDetail(vo);
		
		model.addAttribute("list",list);
		model.addAttribute("vo",vo);
		
		return "admin/StoreRegisterList";
	}
	

}
