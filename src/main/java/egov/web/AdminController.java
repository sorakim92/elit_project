package egov.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import egov.service1.AdminService;

@Controller
public class AdminController {
	@Resource(name = "adminService")
	AdminService adminService;
}
