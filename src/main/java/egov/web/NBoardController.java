package egov.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import egov.service1.NBoardService;

@Controller
public class NBoardController {
	@Resource(name = "nboardService")
	NBoardService nboardService;
}
