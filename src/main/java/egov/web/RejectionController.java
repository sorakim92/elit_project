package egov.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import egov.service1.RejectionService;

@Controller
public class RejectionController {
	@Resource(name = "rejectionService")
	RejectionService rejectionService;
}
