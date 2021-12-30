package egov.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import egov.service1.StoreReviewService;
import egov.service1.StoreReviewVO;

@Controller
public class StoreReviewController {
	@Resource(name = "storereviewService")
	 StoreReviewService  storereviewService;
	
	@RequestMapping("storeReviewList.do")
	public String selectstoreReviewList(StoreReviewVO vo, Model model) 
									throws Exception {
		
		
		List<?> list = storereviewService.selectstoreReviewList(vo);
		
		
		
		model.addAttribute("list",list);
		
		
		return "mypage/StoreReview";
	}
	
	@RequestMapping("popReviewAnsWrite.do")
	public String storeReview_addPopReviewAns() {
		
		return "mypage/PopReviewAns"; 
	}
	@RequestMapping("popReviewAnsWriteSave.do")
	@ResponseBody
	public String insertstoreReviewWrite( StoreReviewVO vo) throws Exception {
			
			String result = storereviewService.insertstoreReviewWrite(vo);
			
			String msg = "";
			
			System.out.println(msg+"결과"+result);
			if( result == null) {
				msg = "ok";
			} else {
				msg ="save_fail";
			}
			
			return msg;
			
	}
}
