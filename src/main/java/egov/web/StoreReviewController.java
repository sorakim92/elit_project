package egov.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import egov.service1.StoreReviewService;

@Controller
public class StoreReviewController {
	@Resource(name = "storereviewService")
	 StoreReviewService  storereviewService;
}
