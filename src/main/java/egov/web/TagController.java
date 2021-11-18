package egov.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;


import egov.service1.TagService;

@Controller
public class TagController {
	@Resource(name = "tagService")
	TagService tagService;
}
