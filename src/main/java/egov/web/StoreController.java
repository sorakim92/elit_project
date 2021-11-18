package egov.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import egov.service1.StoreService;

@Controller
public class StoreController {
	@Resource(name ="storeService")
	StoreService storeService;
}
