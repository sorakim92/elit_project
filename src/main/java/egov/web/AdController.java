package egov.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import egov.service1.AdService;
import egov.service1.AdVO;

@Controller
public class AdController {

	@Resource(name = "adService")
	AdService adService;
	
	/*
	 * 광고 페이지  강성모 
	 * 	 */
	@RequestMapping("AdList.do")
	public String selectadlist( AdVO vo, Model model ) 
												throws Exception{
		
	List<?> list = adService.selectadService(vo);
	
	model.addAttribute("vo",vo);
	model.addAttribute("list",list);
	
		return "admin/AdList";
	}
	
	/*
	 * 광고승인/거절페이지(강성모)
	 * 	 */
	@RequestMapping("AdDetail.do")
	public String selectadDetail( AdVO vo, Model model)
													throws Exception{
	List<?> list = adService.selectadDetailService(vo);
		
	model.addAttribute("vo",vo);
	model.addAttribute("list",list);
		return "admin/AdDetail";
	}
	
	
	
	
	
	@RequestMapping("adWrite.do")
	public String adWrite() throws Exception {
		
		return "business/adWrite"; 
	}

	
	@RequestMapping(value="adWriteSave.do")
	@ResponseBody
	public String insertAd(AdVO vo) throws Exception {
			
		    
			String result = adService.insertAd(vo);
			String message = "ok";
			
			if( result != null ) {
				message = "error";
			}
			return message;
			
		    
	}
		
}
