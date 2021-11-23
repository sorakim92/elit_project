package egov.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.Mapping;
import org.springframework.web.bind.annotation.RequestMapping;

import egov.service1.ZzimListService;
import egov.service1.ZzimListVO;

@Controller
public class ZzimListController {
	@Resource(name = "zzimlistService")
	ZzimListService zzimlistService;
	
	@RequestMapping(name="ZzimListService")
	public String mypage_ZzimList(ZzimListVO vo, Model model ) throws Exception {
		
		return "mypage_ZzimList";
	}
}
