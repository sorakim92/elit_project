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
	public String selectStoreRegister( BusinessEnterVO vo, Model model )
												throws Exception{
		
		List<?> list = storeService.selectstoreService(vo);
		vo = storeService.selectStoreDetail(vo);
		
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
			message = "ok";	
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
