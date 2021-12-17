package egov.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import egov.service1.AdminService;
import egov.service1.AdminVO;

@Controller
public class AdminController {
	@Resource(name = "adminService")
	AdminService adminService;
	
	@RequestMapping("AdminRegister.do")
	public String selectadmin( AdminVO vo, Model model) throws Exception{
		
		List<?> list = adminService.selectadminService(vo);
		
		model.addAttribute("vo",vo);
		model.addAttribute("list",list);
		model.addAttribute("ktext",vo.getKtext());
		
		
		return "admin/AdminRegister";		
	}
}
