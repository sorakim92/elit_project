package egov.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import egov.service1.ZzimListService;

@Controller
public class ZzimListController {
	@Resource(name = "zzimlistService")
	ZzimListService zzimlistService;
}
