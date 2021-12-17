package egov.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import egov.service1.MemberVO;
import egov.service1.MenuOrderService;
import egov.service1.MenuOrderVO;
import egov.service1.MenuVO;

@Controller
public class MenuOrderController {

	@Resource(name="menuorderService")
	MenuOrderService menuorderService;
	
	@RequestMapping("menuOrderList.do")
	public String selectStoreMenuList(MenuOrderVO vo,MemberVO mvo, Model model) 
											throws Exception {
		
		
		//가게정보
		vo = menuorderService.selectStoreinfo(vo);
		
		//로그인 세션가지고 오기 일단 임의로 변수설정. 
		String userid = "test1";
		
		//고객정보
		mvo = menuorderService.selectMemberInfo(userid);
		
		// 리뷰 개수 
		int reviewTot = menuorderService.selectStoreReviewTotalCount(vo);
		
		//메뉴리스트 
		List<?> list = menuorderService.selectStoreMenuList(vo);
		
		Map<String,String> map = new HashMap<String, String>();
		
		userid = vo.getUserid();
		int storeunq = vo.getStoreunq();
		
		map.put("userid", userid);
		map.put("storeunq", storeunq+"");
		List<?> preList = menuorderService.selectPreOrderList(map);
		
		int total =menuorderService.selectTotPrice(vo);
		
		vo.setTotal(total);
		
		model.addAttribute("reviewTot",reviewTot);
		//model.addAttribute("total",total);
		model.addAttribute("vo",vo);
		model.addAttribute("mvo",mvo);
		model.addAttribute("list",list);
		model.addAttribute("preList",preList);
				
		return "menu2/storeMenuList";
	}
	
	@RequestMapping("addOrderMenu.do")	
	@ResponseBody
	public String insertAddOrder(MenuOrderVO vo, Model model) throws Exception {
		
		// 주문표에 들어갈 내역 + unq 조회 
		vo = menuorderService.selectmenudetail(vo);
		
		String msg = "";
		
		// 같은 메뉴가 주문표에 있는지 확인
		int cnt_order = menuorderService.countMenuunq(vo);
		//int p_menuunq = vo.getMenuunq();
		
		if(cnt_order == 1) {
			// 해당메뉴 qty증가  
			//menuorderService.updateqty(vo);
			
			msg="focus_orderlist";
			
		} else if(cnt_order == 0) {
		
			//오더하기 전 주문표에 들어갈 내역 preorder 테이블에 insert 
			String result =  menuorderService.insertAddOrder(vo);
		
			if(result == null){
				System.out.println("인서트 성공");
				msg="ok";
			}
		} else {
			msg = "error";
		}
		
		
		
		return msg;
	}
	
	@RequestMapping("deleteOrderMenu.do")
	@ResponseBody
	public String deleteOrderMenu(MenuOrderVO vo) 
												throws Exception {
		
		int result = menuorderService.deleteOrderMenu(vo);
		String msg = "";
		
		System.out.println(result);
		if(result == 1) {
			msg = "ok";
		} 
		
		return msg;
	}
	
	
	
}
