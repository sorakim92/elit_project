package egov.web;

import java.awt.Menu;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
	
	/*
	 * 주문하기 리스트 (소라)
	 * */
	@RequestMapping("menuOrderList.do")
	public String selectStoreMenuList(MenuOrderVO vo,MemberVO mvo, Model model, HttpSession session) 
											throws Exception {
		
		String s_text = vo.getS_text();
		String menukeyword = vo.getMenukeyword();
		String url = "";
		String userid = (String) session.getAttribute("SessionUserID");
		if(userid == null || userid.trim().equals("")) {
			userid = (String) session.getAttribute("BossmemberSessionID");
		}
		if(userid == null || userid.trim().equals("")) {
			userid = (String) session.getAttribute("AdminSessionID");
		}
		if(userid == null ||
				userid.trim().equals("") ) {
			url = "etc/alert";
			model.addAttribute("msg", "로그인후 이용해주세요.");
			model.addAttribute("url","memberlogin.do");
		} else {
			url =  "menu2/storeMenuList";
		}
		//가게정보
		vo = menuorderService.selectStoreinfo(vo);
		
		//로그인 세션가지고 오기 
		
//		String userid = (String) session.getAttribute("SessionUserID");
		vo.setUserid(userid);
		mvo.setUserid(userid);
		//System.out.println("======"+userid);
		//고객정보
		mvo = menuorderService.selectMemberInfo(userid);
		
		//System.out.println("==============="+mvo.getAddr());
		
		// 리뷰 개수 
		int reviewTot = menuorderService.selectStoreReviewTotalCount(vo);
		
		vo.setS_text(s_text);
		vo.setMenukeyword(menukeyword);

		//메뉴리스트 
		List<?> list = menuorderService.selectStoreMenuList(vo);
		
		Map<String,String> map = new HashMap<String, String>();
		
		
		int storeunq = vo.getStoreunq();
		
		map.put("userid", userid);
		map.put("storeunq", storeunq+"");
		List<?> preList = menuorderService.selectPreOrderList(map);
		
		int total = menuorderService.selectTotPrice(vo);
		
		
		vo.setTotal(total);

		model.addAttribute("s_text",s_text);
		model.addAttribute("menykeyword",menukeyword);
		model.addAttribute("reviewTot",reviewTot);
		//model.addAttribute("total",total);
		model.addAttribute("vo",vo);
		model.addAttribute("mvo",mvo);
		model.addAttribute("list",list);
		model.addAttribute("preList",preList);
				
		return url;
	}
	
	/*
	 * 메뉴추가하기 (소라)
	 * */
	@RequestMapping("addOrderMenu.do")	
	@ResponseBody
	public String insertAddOrder(MenuOrderVO vo, Model model, HttpSession session) throws Exception {
		
		
		// 주문표에 들어갈 내역 + unq 조회 
		vo = menuorderService.selectmenudetail(vo);
		
		//로그인 세션가지고 오기 
		
		String userid = (String) session.getAttribute("SessionUserID");
		vo.setUserid(userid);
		System.out.println("======"+userid);
				
		String msg = "";
		if(userid==null || userid.equals("")) {
			msg = "er1";
		} else {
			// 같은 메뉴가 주문표에 있는지 확인
			//System.out.println("======22222"+vo.getUserid());
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
		}
		
		
		return msg;
	}
	
	/*
	 * 주문하고 그 이후로 메뉴 지우기 (소라) 
	 * */
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
