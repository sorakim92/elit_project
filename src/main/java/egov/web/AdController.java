package egov.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import egov.service1.AdService;
import egov.service1.AdVO;

@Controller
public class AdController {

	@Resource(name = "adService")
	AdService adService;
	
	
	@RequestMapping("adWrite.do")
	public String business_adWrite() {
		
		return "business/adWrite"; 
	}
	
	@RequestMapping(value="adWriteSave.do")
	@ResponseBody
	public String admin_nBoardWriteSave( AdVO vo ) throws Exception {
					
			String result = adService.insertAd(vo);
			String message = "ok";
			
			if( result != null ) {
				message = "error";
			}
			return message;
		}
		
}
