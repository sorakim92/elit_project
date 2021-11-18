package egov.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import egov.service1.AdService;

@Controller
public class AdController {

	@Resource(name = "adService")
	AdService adService;
}
