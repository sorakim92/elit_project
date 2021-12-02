package egov.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import egov.service1.InquiryService;
import egov.service1.InquiryVO;

@Controller
public class InquiryController {

		@Resource(name = "inquiryService")
		InquiryService inquiryService;
		
		@RequestMapping(value="/mypage_InquiryList.do")
		public String mypage_InquiryList(InquiryVO vo, Model model) throws Exception {
			
			int page_no = vo.getPage_no();
			int s_no = (page_no-1)*10 + 1;
			int e_no = s_no + (10-1);
			
			vo.getS_no();
			vo.getE_no();
			
			List<?> list = inquiryService.selectInquiryboardList(vo);
			int total = inquiryService.selectInquiryboardTotal(vo);
			
			int total_page = (int)Math.ceil((double)total/10);
			int rownum = total - (page_no-1)*10;
			
			model.addAttribute("list",list);
			model.addAttribute("total",total);
			model.addAttribute("total_page",total_page);
			model.addAttribute("rownum",rownum);

			return "mypage/InquiryList.do";
		}
		
		@RequestMapping(value="/mypage_InquiryWrite.do")
		public String mypage_InquiryWrite() {

			return "mypage/InquiryWrite";
		}
		
		@RequestMapping(value="/mypage_InquiryWriteSave.do")
		@ResponseBody
		public String mypage_InquiryWriteSave(InquiryVO vo) throws Exception {
			
			int result = inquiryService.updateInquiryboard(vo);
			
			String message = "ok";
			if( result != 1 ) {
				message = "error";
			}
			
			return message;			
		}
		
		@RequestMapping(value="/mypage_InquiryDelete.do")
		@ResponseBody
		public String mypage_InquiryDelete(InquiryVO vo) throws Exception {
			
			int result = inquiryService.deleteInquiryboard(vo);
			
			String message = "ok";
			if( result != 1 ) {
				message = "error";
			}
	
			return message;
		}
		
		@RequestMapping(value="/mypage_InquiryModify.do")
		public String mypage_InquiryModify( InquiryVO vo, Model model ) throws Exception {
			
			return "";
		}

}
