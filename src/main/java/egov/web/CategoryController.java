package egov.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import egov.service1.CategoryService;

@Controller
public class CategoryController {
	@Resource(name ="categoryService" )
	CategoryService categoryService;
}
