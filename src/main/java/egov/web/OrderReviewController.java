package egov.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import egov.service1.OrderReviewService;

@Controller
public class OrderReviewController {
	@Resource(name = "orderreviewService")
	OrderReviewService orderreviewService;
}
