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
		
		
		vo.setCateunq(111);
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

		return "menu2/KRfoodList";
	}
	/*
	 * 치킨부분 카테고리 화면 (소라)
	 * */
	@RequestMapping("CKstoreList.do")
	public String selectCKstroeList(CategoryVO vo, ZzimListVO zvo, Model model, HttpSession session) 
									throws Exception {
		
		vo.setCateunq(222);
		//System.out.println(vo.getCateunq());
				//이미 cateunq 설정했으므로 따로 서비스 필요없음. 하나로 모든 스토어 조회가능 
		
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

		return "menu2/CKstoreList";
	}
	
	
	/*
	 * 일식부분 카테고리 화면 (소라)
	 * */
	@RequestMapping("JPstoreList.do")
	public String selectJPstoreList(CategoryVO vo, ZzimListVO zvo, Model model, HttpSession session) 
									throws Exception {
		
		vo.setCateunq(333);
		//System.out.println(vo.getCateunq());
				//이미 cateunq 설정했으므로 따로 서비스 필요없음. 하나로 모든 스토어 조회가능 
		
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

		return "menu2/JPstoreList";
	}
	
	/*
	 * 양식부분 카테고리 화면 (소라)
	 * */
	@RequestMapping("WSstoreList.do")
	public String selectWSstoreList(CategoryVO vo, ZzimListVO zvo, Model model, HttpSession session) 
									throws Exception {
		
		vo.setCateunq(444);
		//System.out.println(vo.getCateunq());
				//이미 cateunq 설정했으므로 따로 서비스 필요없음. 하나로 모든 스토어 조회가능 
		
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

		return "menu2/WSstoreList";
	}
	

	/*
	 * 중부분 카테고리 화면 (소라)
	 * */
	@RequestMapping("CNstoreList.do")
	public String selectCNstoreList(CategoryVO vo, ZzimListVO zvo, Model model, HttpSession session) 
									throws Exception {
		
		vo.setCateunq(555);
		//System.out.println(vo.getCateunq());
				//이미 cateunq 설정했으므로 따로 서비스 필요없음. 하나로 모든 스토어 조회가능 
		
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

		return "menu2/CNstoreList";
	}
	

	/*
	 * 샐러드/샌드위치 부분 카테고리 화면 (소라)
	 * */
	@RequestMapping("SSstoreList.do")
	public String selectSSstoreList(CategoryVO vo, ZzimListVO zvo, Model model, HttpSession session) 
									throws Exception {
		
		vo.setCateunq(666);
		//System.out.println(vo.getCateunq());
				//이미 cateunq 설정했으므로 따로 서비스 필요없음. 하나로 모든 스토어 조회가능 
		
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

		return "menu2/SSstoreList";
	}
	

	/*
	 * 분식부분 카테고리 화면 (소라)
	 * */
	@RequestMapping("BSstoreList.do")
	public String selectBSstoreList(CategoryVO vo, ZzimListVO zvo, Model model, HttpSession session) 
									throws Exception {
		
		vo.setCateunq(777);
		//System.out.println(vo.getCateunq());
				//이미 cateunq 설정했으므로 따로 서비스 필요없음. 하나로 모든 스토어 조회가능 
		
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

		return "menu2/BSstoreList";
	}
	

	/*
	 * 카페,디저트 부분 카테고리 화면 (소라)
	 * */
	@RequestMapping("CDstoreList.do")
	public String selectCDstoreList(CategoryVO vo, ZzimListVO zvo, Model model, HttpSession session) 
									throws Exception {
		
		vo.setCateunq(888);
		//System.out.println(vo.getCateunq());
				//이미 cateunq 설정했으므로 따로 서비스 필요없음. 하나로 모든 스토어 조회가능 
		
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

		return "menu2/CDstoreList";
	}
	
	
	
}
