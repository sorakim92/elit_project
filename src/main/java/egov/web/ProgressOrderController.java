package egov.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import egov.service1.ProgressOrderService;

@Controller
public class ProgressOrderController {
	@Resource(name = "progressorderService")
	ProgressOrderService progressorderService;
}
