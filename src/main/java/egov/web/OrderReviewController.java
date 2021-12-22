package egov.web;



import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import egov.service1.OrderReviewService;
import egov.service1.OrderReviewVO;

@Controller
public class OrderReviewController {
	@Resource(name = "orderreviewService")
	OrderReviewService orderreviewService;
	
	@RequestMapping("OrderReviewList.do")
	public String selectOrderReviewList(OrderReviewVO vo, Model model) throws Exception {
	
	  int page_no = vo.getPage_no(); // 1->1 ;; 2->11 ;; 3->21 
	  int s_no = (page_no -1)*10 + 1;
	  int e_no = s_no + (10-1);
	  
	  vo.setS_no(s_no); 
	  vo.setE_no(e_no);
	  	 
	List<?> list = orderreviewService.selectBoardList(vo);
	int total = orderreviewService.selectBoardTotal(vo);
	
	
	int total_page = (int)Math.ceil((double)total/10);
	
	
	int rownum = total - (page_no-1)*10; 
	
	model.addAttribute("s_field",vo.getS_field());
	model.addAttribute("s_text",vo.getS_text()); 
	
	model.addAttribute("list",list);
	model.addAttribute("total",total);
	model.addAttribute("total_page",total_page);
	model.addAttribute("rownum",rownum);
	
	return "mypage/OrderReviewList"; 
	
	}
	
	@RequestMapping("OrderReviewWrite.do")
	public String OrderReviewWrite( OrderReviewVO vo) throws Exception {
		
		return "mypage/OrderReviewWrite";
	}
	
	@RequestMapping("OrderReviewWriteSave.do")
	@ResponseBody
	public String OrderReviewWriteSave( OrderReviewVO vo) throws Exception {
		
		/* System.out.println("========rate====="+vo.getRdate()); */
		
		String result = orderreviewService.insertBoard(vo);
		
		/* System.out.println("========"+result); */
		
		String msg = "";
		if( result == null ) {
			msg = "ok";
		}
		/* System.out.println("========="+result+"====="+msg); */
		
		return msg;
	}
	
	@RequestMapping("OrderReviewDetail.do")
	public String selectBoardDetail( OrderReviewVO vo, Model model) throws Exception {
		
		vo = orderreviewService.selectBoardDetail(vo);
		
		
		  String rcontent = vo.getRcontent(); if(rcontent != null &&
		  !rcontent.equals("")) { rcontent = rcontent.replace("\n", "<br>"); rcontent =
		  rcontent.replace(" ", "&nbsp;"); vo.setRcontent(rcontent); }
		 
		
		model.addAttribute("vo",vo);
		
		return "mypage/OrderReviewDetail";
	}
	
	@RequestMapping("OrderReviewModify.do")
	public String OrderReviewModify( OrderReviewVO vo, Model model) throws Exception {
		
		vo = orderreviewService.selectBoardDetail(vo);
					
		model.addAttribute("vo",vo);
			
		
		return "mypage/OrderReviewModify";
	}
	
	@RequestMapping("OrderReviewModifySave.do")
	@ResponseBody
	public String OrderReviewModifySave(OrderReviewVO vo) throws Exception {
		
		int result = orderreviewService.updateBoard(vo);
		
		String msg = "";
		
		if( result == 0 ) {
			msg = "error";
		} else if( result == 1 ) {
			msg = "ok";
		}

		return msg;
	}
	
	@RequestMapping("OrderReviewDelete.do")
	@ResponseBody
	public String OrderReviewDelete(OrderReviewVO vo) throws Exception {
		
		int result = orderreviewService.deleteBoard(vo);
		
		String msg = "ok";
		if( result == 0 ) {
			msg = "error";
		} else if( result == 1 ) {
			msg = "ok";
		}

		return msg;		
		
	}

}
