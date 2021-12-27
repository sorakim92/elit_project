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
	 * 광고 페이지  강성모 (에러 해결중 건들X)
	 * 	 */
	@RequestMapping("AdList.do")
	public String selectadlist( AdVO vo ) throws Exception{
		
		return "admin/AdList";
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
