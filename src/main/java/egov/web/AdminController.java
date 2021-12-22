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
	
	/*
	 * 관리자 메인페이지 List(강성모)
	 *  */
	@RequestMapping("AdminMain.do")
	public String selectMainList(AdminVO vo)
											throws Exception{
		return "admin/AdminMain";
	}
	/*
	 * 관리자 추가페이지 (강성모)
	 * 	*/
	@RequestMapping("AdminRegister.do")
	public String selectadmin( AdminVO vo, Model model)
								throws Exception{
		
		List<?> list = adminService.selectadminService(vo);
		
		model.addAttribute("vo",vo);
		model.addAttribute("list",list);
		model.addAttribute("ktext",vo.getKtext());
		
		
		return "admin/AdminRegister";		
	}

	/*
	 * 관리자 추가 (강성모)
	 *   */
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
	
	/*
	 * 관리자 삭제(강성모)
	 * 	 */
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

