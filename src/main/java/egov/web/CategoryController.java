package egov.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import egov.service1.CategoryService;
import egov.service1.CategoryVO;
import egov.service1.ZzimListService;
import egov.service1.ZzimListVO;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Controller
public class CategoryController {
	@Resource(name ="categoryService" )
	CategoryService categoryService;
	
	/*
	 * 오늘뭐먹지 카테고리 화면 (소라)
	 * */
	@RequestMapping("todayTopList.do")
	public String selecttodayTopList(CategoryVO vo, ZzimListVO zvo, Model model, HttpSession session) 
									throws Exception {
		
		/*progressorder, store table 조인 ! */
		List<?> list = categoryService.selecttodayTopList(vo);
		
		
		//로그인 세션가지고 오기 
		
		String userid = (String) session.getAttribute("SessionUserID");
			
		//System.out.println("1111111"+userid);
		List<?> zlist = categoryService.selectZZIMlikeTodaylist(userid);
		//System.out.println("22222222"+userid);

		
		
		
		for(int l=0; l<list.size(); l++) {
		
			EgovMap map1 = (EgovMap) list.get(l);
			System.out.println("map1"+map1);
			
			String storeunq = (String) map1.get("storeunq");
			// select문에서 '' 붙여서 string 타입으로! 
			//System.out.println(storeunq);
			
			for(int i = 0; i<zlist.size(); i++) {
				EgovMap zmap = (EgovMap) zlist.get(i);
				
				String zstoreunq = (String) zmap.get("storeunq");
				String likechk = (String) zmap.get("likechk");
				
			//	System.out.println(storeunq + "z"+zstoreunq+"l"+likechk);
				
				if(storeunq.equals(zstoreunq)) {
					map1.put("likechk", likechk);
				}
			}
			//System.out.println(map1);
			//System.out.println(map1.get("likechk"));
		}
		
		//System.out.println(zlist.size());
		//System.out.println(zlist.get(0));
		System.out.println(zlist);
		model.addAttribute("list",list);
		model.addAttribute("zlist",zlist);

		return "menu2/todayTopList";
	}
	
	
	/*
	 * 한식부분 카테고리 화면 (소라)
	 * */
	@RequestMapping("KRfoodList.do")
	public String selectKRfoodList(CategoryVO vo, ZzimListVO zvo, Model model,HttpSession session) 
									throws Exception {
		
		
	
		//System.out.println(vo.getCateunq());
		List<?> list = categoryService.selectKRfoodList(vo);
		
		Map<String,String> map =  new HashMap<String,String>();
		int cateunq = vo.getCateunq();
		
		//로그인 세션가지고 오기 
		
		String userid = (String) session.getAttribute("SessionUserID");

		map.put("cateunq", cateunq+"");
		map.put("userid", userid);
		//System.out.println(cateunq+"ccccccc"+userid+"====");		
		List<?> zlist = categoryService.selectZZIMlike(map);
		
		
		
		
		for(int l=0; l<list.size(); l++) {
		
			EgovMap map1 = (EgovMap) list.get(l);
			//System.out.println(map1);
			
			String storeunq = (String) map1.get("storeunq");
			
			//System.out.println(storeunq);
			
			for(int i = 0; i<zlist.size(); i++) {
				EgovMap zmap = (EgovMap) zlist.get(i);
				
				String zstoreunq = (String) zmap.get("storeunq");
				String likechk = (String) zmap.get("likechk");
				
				//System.out.println(storeunq + "z"+zstoreunq+"l"+likechk);
				
				if(storeunq.equals(zstoreunq)) {
					map1.put("likechk", likechk);
				}
			}
			//System.out.println(map1);
			//System.out.println(map1.get("likechk"));
		}
		
		//System.out.println(zlist.size());
		//System.out.println(zlist.get(0));
		
		model.addAttribute("list",list);
		model.addAttribute("zlist",zlist);

		return "menu2/storeList";
	}
	
}
