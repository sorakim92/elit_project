package egov.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import egov.service1.AdRejectService;

@Controller
public class AdRejectController {
	@Resource(name = "adrejectService")
	AdRejectService adrejectService;
}
