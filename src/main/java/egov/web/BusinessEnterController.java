package egov.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import egov.service1.BusinessEnterService;

@Controller
public class BusinessEnterController {
	@Resource(name = "BusinessEnterService")
	BusinessEnterService businessenterService;
}
