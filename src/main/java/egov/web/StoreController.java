package egov.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import egov.service1.BusinessEnterVO;
import egov.service1.StoreService;
import egov.service1.StoreVO;

@Controller
public class StoreController {
	@Resource(name ="storeService")
	StoreService storeService;


	/*
	 * StoreRegister화면 List (강성모)
	 *	 */
	@RequestMapping("StoreRegisterList.do")
	public String selectStoreRegister( BusinessEnterVO vo,BusinessEnterVO bvo, Model model )
												throws Exception{
//		페이징처리
		int page_no = bvo.getPage_no();
		int page_unit = bvo.getPage_unit();
		int page_size = bvo.getPage_size();
		int s_no = (page_no -1)*page_unit+1;
		int e_no = s_no+(page_unit-1);
		bvo.setS_no(s_no);
		bvo.setE_no(e_no);
		int count = storeService.selectcountRE(bvo);
		
		List<?> list = storeService.selectstoreService(bvo);
		vo = storeService.selectStoreDetail(vo);
		
		//페이징처리
		int total = storeService.selectTotalRE(bvo);
		int total_page = (int) Math.ceil((double)total/page_unit);
		int page_sno = ((page_no-1)/page_size)*page_size + 1;
		int page_eno = page_sno +(page_size-1);
		if(page_eno > total_page) {
			page_eno = total_page;
		}
		bvo.setTotal(total);
		bvo.setTotal(total_page);
		bvo.setPage_sno(page_sno);
		bvo.setPage_eno(page_eno);				
		
		model.addAttribute("count",count);
		model.addAttribute("bvo",bvo);
		model.addAttribute("list",list);
		model.addAttribute("vo",vo);
		
		return "admin/StoreRegisterList";
	}
	
	
	/*
	 * storeDetail -> store테이블 전송버튼 (강성모)
	 * 	 */
	@RequestMapping("storeSave.do")
	@ResponseBody
	public ModelAndView insertStoreInfo(StoreVO vo,BusinessEnterVO bvo)
								throws Exception{
		ModelAndView mav = new ModelAndView("jsonView");
		String message="";		
		int cnt = storeService.selectsavecnt(vo);
		
		
		if(cnt >= 1) {
			message = "er1";
		} else {				
			String result =storeService.insertStoreInfo(vo);								
			if(result==null) {					
				int result2=storeService.updateStoreStatus(bvo);
					if(result2>=1) {
						message = "ok";	
					}else {
						message = "er2";
					}
			}else {
				message="er3";			
			}
		}
		//{"aaaa":"ok","bbbb":"강성모"}
		mav.addObject("aaaa",message);
		
		return mav;
	}
	
	/*
	 * 입점문의 거절버튼(강성모)
	 * 	 */
	@RequestMapping("StoreReject.do")
	@ResponseBody
	public ModelAndView updateBossReject(BusinessEnterVO vo)
														throws Exception{
		ModelAndView mav = new ModelAndView("jsonView");
		String message="";
		int result=storeService.updateBusinessStatus(vo);
		if(result>=1) {
			message="ok";
		} else{
			message="er1"	;		
		}
		mav.addObject("aaaa",message);
		return mav;
	
	}
	
}
