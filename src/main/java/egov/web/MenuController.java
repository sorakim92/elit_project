package egov.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import egov.service1.MenuService;

@Controller
public class MenuController {
	@Resource(name = "menuService")
	MenuService menuService;
}
