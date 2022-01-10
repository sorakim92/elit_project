package egov.web;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import egov.service1.MenuOrderVO;
import egov.service1.ProgressOrderService;
import egov.service1.ProgressOrderVO;

@Controller
public class ProgressOrderController {
	@Resource(name = "progressorderService")
	ProgressOrderService progressorderService;
	

	@RequestMapping(value="progressorderList.do")
	public String selectProgressOrderList(ProgressOrderVO vo, Model model) throws Exception {
		
		
		
		List<?> list = progressorderService.selectProgressOrderList(vo);
		model.addAttribute("list",list);
		
		return "order/ProgressOrder";
	}
	
	@RequestMapping(value="orderendList.do")
	public String selectorderendList(ProgressOrderVO vo, Model model) throws Exception {
		List<?> list = progressorderService.selectorderendList(vo);
		model.addAttribute("list",list);
		
		return"order/oderEndList";
	}
	/*
	 * 주문한내역 업데이트 (상연)
	 * */
	@RequestMapping("orderSave.do")
	@ResponseBody
	public String updateProgressOrder(ProgressOrderVO vo)
											throws Exception {
	
		int result = progressorderService.updateProgressOrder(vo);
		System.out.println(result);
		
		System.out.println("====="+vo.getAcctime());
		System.out.println("====="+vo.getDctime());
		String msg = "";
		if(result == 1) {
			
			msg = "ok";
		}
				
		return msg;
	}
	
	
	/*
	 * 주문한내역 넘기기 (소라)
	 * */
	@RequestMapping("orderSub.do")
	@ResponseBody
	public String insertProgressOrder(ProgressOrderVO vo, MenuOrderVO mvo)
											throws Exception {
		
		String result = progressorderService.insertProgressOrder(vo);
		System.out.println(result);
		
		System.out.println("====="+vo.getMenuname());
		String msg = "";
		if(result == null) {
			//preorder값도 지우기 
			int p_result = progressorderService.resetpreorder(vo);
			System.out.println(p_result);
			if(p_result > 0) {
				System.out.println("==== 지우기 성공~~ ");
			}
			msg = "ok";
		}
				
		return msg;
	}
	
	/*
	 * 마이페이지 주문내역확인 (소러)
	 * */
	@RequestMapping("myOrderList.do")
	public String selectMyOrder(ProgressOrderVO vo, HttpSession session, Model model) 
									throws Exception {
		
		String url = "";
		String userid = (String) session.getAttribute("SessionUserID");
//		if(userid == null || userid.trim().equals("")) {
//			userid = (String) session.getAttribute("BossmemberSessionID");
//		}
//		if(userid == null || userid.trim().equals("")) {
//			userid = (String) session.getAttribute("AdminSessionID");
//		}
//		if(userid == null ||
//				userid.trim().equals("") ) {
//			url = "etc/alert";
//			model.addAttribute("msg", "로그인후 이용해주세요.");
//			model.addAttribute("url","memberlogin.do");
//		}
		
		
		vo.setUserid(userid);
	
		List<?> list = progressorderService.selectMyOrderlist(vo);
		
		model.addAttribute("list",list);
		
		return "mypage/myOrderList";
	}
	
	/*
	 * 마이페이지 주문내역리스트 주문상세 (소라)
	 * */
	@RequestMapping("myorderDetail.do")
	public String selectMyorderDetail(ProgressOrderVO vo, Model model)
										throws Exception {
		String userid = vo.getUserid();
		int orderindex = vo.getOrderindex();
		
		vo = progressorderService.selectMyorderDetail(vo);
		
		model.addAttribute("vo",vo);
		
		return "mypage/myOrderDetail";
	}

}
