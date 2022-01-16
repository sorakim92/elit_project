package egov.web;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import egov.service1.AdVO;
import egov.service1.AdminService;
import egov.service1.AdminVO;
import egov.service1.BossMemberVO;
import egov.service1.BusinessEnterVO;
import egov.service1.NBoardVO;

@Controller
public class AdminController {
	@Resource(name = "adminService")
	AdminService adminService;
	
	/*
	 * 관리자 메인페이지 List(강성모)
	 *  */
	@RequestMapping("AdminMain.do")
	public String selectMainList(AdVO vo,BusinessEnterVO bvo,BossMemberVO cvo, Model model,HttpSession session)
											throws Exception{
		
		String url="";
		String ADMIN = (String) session.getAttribute("AdminSessionID");		
		if(ADMIN == null || ADMIN.trim().equals("")) {
			url="etc/alert";
		model.addAttribute("msg","로그인 후 이용해주세요.ㅎㅎ");
		model.addAttribute("url","memberlogin.do");
		} else {
			url="admin/AdminMain";
		}
		
		List<?> list = adminService.selectAdList(vo);
		List<?> listB = adminService.selectEnterStoreList(bvo); 
		List<?> listC = adminService.selectNewBossList(cvo); 
		model.addAttribute("list",list);
		model.addAttribute("listB",listB);
		model.addAttribute("listC",listC);
		return url;
	}
	/*
	 * 관리자 추가페이지 (강성모)
	 * 	*/
	@RequestMapping("AdminRegister.do")
	public String selectadmin( AdminVO vo, Model model, HttpSession session)
								throws Exception{
		String url="";
		String ADMIN = (String) session.getAttribute("AdminSessionID");		
		if(ADMIN == null || ADMIN.trim().equals("")) {
			url="etc/alert";
		model.addAttribute("msg","로그인 후 이용해주세요.ㅎㅎ");
		model.addAttribute("url","memberlogin.do");
		} else {
			url="admin/AdminRegister";
		}
//		페이징처리
		int page_no = vo.getPage_no();
		int page_unit = vo.getPage_unit();
		int page_size = vo.getPage_size();
		int s_no = (page_no -1)*page_unit+1;
		int e_no = s_no+(page_unit-1);
		vo.setS_no(s_no);
		vo.setE_no(e_no);
		int count = adminService.selectcountAdmin(vo);
		
		List<?> list = adminService.selectadminService(vo);
		//페이징처리
		int total = adminService.selectAdminTotal(vo);
		int total_page = (int) Math.ceil((double)total/page_unit);
		int page_sno = ((page_no-1)/page_size)*page_size + 1;
		int page_eno = page_sno +(page_size-1);
		if(page_eno > total_page) {
			page_eno = total_page;
		}
		vo.setTotal(total);
		vo.setTotal(total_page);
		vo.setPage_sno(page_sno);
		vo.setPage_eno(page_eno);				
		model.addAttribute("vo",vo);
		model.addAttribute("count",count);
		//요 위에까지 페이징에 필요함 
		model.addAttribute("list",list);
		model.addAttribute("ktext",vo.getKtext());
		
		
		return url;		
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

