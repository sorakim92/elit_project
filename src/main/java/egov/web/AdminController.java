package egov.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import egov.service1.AdminService;
import egov.service1.AdminVO;
import egov.service1.NBoardVO;

@Controller
public class AdminController {
	@Resource(name = "adminService")
	AdminService adminService;
	
	@RequestMapping("AdminRegister.do")
	public String selectadmin( AdminVO vo, Model model)
								throws Exception{
		
		List<?> list = adminService.selectadminService(vo);
		
		model.addAttribute("vo",vo);
		model.addAttribute("list",list);
		model.addAttribute("ktext",vo.getKtext());
		
		
		return "admin/AdminRegister";		
	}


	@RequestMapping("AdminPlus.do")
	//주소가 아닌 데이터값을 넘길 때 사용
	@ResponseBody
	public String adminPlus(AdminVO vo)
								throws Exception{
		String msg = "";	
		int result = adminService.adminPlus(vo);
		if(result == 1) {
			msg = "ok";
		} else {
			msg = "error";
		}
		return msg;
	}
	
	//emp update section Y -> N
	@RequestMapping("AdminDelete.do")
	@ResponseBody
	public String adminDelete(AdminVO vo)
								throws Exception{
		
		String msg = "";
		int result = adminService.adminDelete(vo);
		
		if(result == 1) {
			msg = "ok";		
		} else {
			msg = "error";			
		}	
		return msg;
	}
	
	
	
}

