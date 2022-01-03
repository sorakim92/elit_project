package egov.web;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import egov.service1.InquiryService;
import egov.service1.InquiryVO;


// 1:1 문의 사항(상혁)
@Controller
public class InquiryController {

		@Resource(name = "inquiryService")
		InquiryService inquiryService;
		
		
		@RequestMapping("InquiryList.do")
		public String selectInquiryList(InquiryVO vo, Model model) throws Exception {
			
			
			
			// 페이지번호
			  int page_no = vo.getPage_no(); // 1->1 ;; 2->11 ;; 3->21 
			  int s_no = (page_no -1)*10 + 1;
			  int e_no = s_no + (10-1);
			  
			  vo.setS_no(s_no); 
			  vo.setE_no(e_no);
			  
			 
			 
			List<?> list = inquiryService.selectBoardList(vo);
			int total = inquiryService.selectBoardTotal(vo);
			
			
			int total_page = (int)Math.ceil((double)total/10);
			
			
			int rownum = total - (page_no-1)*10; 
			
			model.addAttribute("s_field",vo.getS_field());
			model.addAttribute("s_text",vo.getS_text()); 
			
			model.addAttribute("list",list);
			model.addAttribute("total",total);
			model.addAttribute("total_page",total_page);
			model.addAttribute("rownum",rownum); 

			
			return "mypage/InquiryList";
		}
		
		// 문의 글쓰기(상혁)
		@RequestMapping("InquiryWrite.do")
		public String mypage_InquiryWrite( InquiryVO vo ) throws Exception{
				
			
			return "mypage/InquiryWrite";
		}
		
		// 글쓰기 저장(상혁)
		@RequestMapping("InquiryWriteSave.do")
		@ResponseBody
		public String mypage_InquiryWriteSave(InquiryVO vo) throws Exception {
			
			String result = inquiryService.insertBoard(vo);
			
			String message = "";
			if( result == null ) {
				message = "ok";
			}
			
			return message;			
		}
		
		// 글 내용(상혁)
		@RequestMapping("InquiryDetail.do")
		public String selectBoardDetail(InquiryVO vo, Model model, HttpSession session ) throws Exception {
			
			// 상세 보기 서비스
			
			  
			String userid = (String) session.getAttribute("UserID");			
			vo.setUserid(userid);
			 
			vo = inquiryService.selectBoardDetail(vo);
			
			// 조회수 증가
			inquiryService.updateBoardHits(vo);
			
			String content = vo.getContent();
			if(content != null && !content.equals("")) {
				content = content.replace("\n", "<br>");
				content = content.replace(" ", "&nbsp;");
				vo.setContent(content);
			}
			
			model.addAttribute("vo",vo);
					
			return "mypage/InquiryDetail";
		}
		
		// 글 수정(상혁)
		@RequestMapping("InquiryModify.do")
		public String mypage_InquiryModify( InquiryVO vo, Model model ) throws Exception {
			
			InquiryVO vo1 = inquiryService.selectBoardDetail(vo);
			inquiryService.updateBoardHits(vo1);
			
			String unq1 = "";
			String unq2 = "";
			String data = "";
			String next_unq = "";
			String before_unq = "";
			String[] array;
			int len = 0;		
			List<?> list = null;
			
			int unq = vo.getInquiryindex();
			vo.setUnq1(unq+"");
			vo.setUnq2(null);
			
			list = inquiryService.selectBoardList(vo);
			
			len = list.size();
			
			if(len > 0) {
				data = list.get(len-1) + "";  
				array = data.split(", ");
				next_unq = array[1].split("=")[1];
			}
						
			vo.setUnq1(null);	
			vo.setUnq2(unq+"");	
			list = inquiryService.selectBoardList(vo);
			len = list.size();
			if(len > 0) {
				data = list.get(0)+"";
				array = data.split(", ");
				before_unq = array[1].split("=")[1];
			}
					
			model.addAttribute("vo",vo1);
			model.addAttribute("next_unq",next_unq);
			model.addAttribute("before_unq",before_unq);		
			
			return "mypage/InquiryModify";
		}
		
		// 글 수정 저장(상혁)
		@RequestMapping("InquiryModifySave.do")
		@ResponseBody
		public String InquiryModifySave( InquiryVO vo) throws Exception {
			
			int result = inquiryService.updateBoard(vo);
			
			String message = "ok";
			if( result == 0) {
				message = "error";
			} else if(result ==1) {
				message = "ok";
			}
			
			return message;
			
		}
		
		// 글 삭제(상혁)
		@RequestMapping("InquiryDelete.do")
		@ResponseBody
		public String InquiryDelete(InquiryVO vo) throws Exception {
			
			int result = inquiryService.deleteBoard(vo);
			
			String message = "ok";
			if( result != 1) {
				message = "error";
			}
			return message;
		
		}

}
