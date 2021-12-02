package egov.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import egov.service1.CategoryService;
import egov.service1.CategoryVO;
import egov.service1.NBoardVO;

@Controller
public class CategoryController {
	@Resource(name ="categoryService" )
	CategoryService categoryService;
	
	@RequestMapping("KRfoodList.do")
	public String selectKRfoodList(CategoryVO vo, Model model) 
									throws Exception {
		
		List<?> list = categoryService.selectKRfoodList(vo);
		
		model.addAttribute("list",list);

		return "menu2/KRfoodList";
	}
	
	
}
