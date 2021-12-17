package egov.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
	
}
