package egov.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import egov.service1.InquiryService;

@Controller
public class InquiryController {

		@Resource(name = "inquiryService")
		InquiryService inquiryService;
}
