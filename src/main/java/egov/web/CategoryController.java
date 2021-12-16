package egov.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import egov.service1.CategoryService;
import egov.service1.CategoryVO;
import egov.service1.ZzimListService;
import egov.service1.ZzimListVO;

@Controller
public class CategoryController {
	@Resource(name ="categoryService" )
	CategoryService categoryService;
	
	@RequestMapping("KRfoodList.do")
	public String selectKRfoodList(CategoryVO vo, ZzimListVO zvo, Model model) 
									throws Exception {
		
	
		vo.setCateunq(111);
		List<?> list = categoryService.selectKRfoodList(vo);
		
		Map<String,String> map =  new HashMap<String,String>();
		int cateunq = vo.getCateunq();
		String userid = "test1";
		map.put("cateunq", cateunq+"");
		map.put("userid", userid);
		//System.out.println(cateunq+"ccccccc"+userid+"====");
		
		
		List<?> zlist = categoryService.selectZZIMlike(map);
		
		
		model.addAttribute("list",list);
		return "menu2/KRfoodList";
	}
	
	
}
