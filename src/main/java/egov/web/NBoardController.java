package egov.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import egov.service1.NBoardService;
import egov.service1.NBoardVO;

@Controller
public class NBoardController {
	@Resource(name = "nboardService")
	NBoardService nboardService;
	
	/*공지사항 리스트 (소라)*/
	@RequestMapping("nBoardList.do")
	public String selectnBoardList(NBoardVO vo, Model model) 
									throws Exception {
		
		
		
		//페이징 (페이지 번호로 시작과 끝번호 얻기)
		
		// 출력 페이지 번호를 받음. 1pg, 2pg, 3pg ...
		int page_no = vo.getPage_no();
		
		// 출력할 행 갯수 (15)
		
		int page_unit = vo.getPage_unit();

		// 출력할 페이지의 갯수 (10)
		int page_size = vo.getPage_size();
		
		// 페이지 번호를 이용해 sql의 시작과 끝번호 변수 설정
		// 1p -> 1~10 , 2p -> 11~20 , 3p -> 21 ~30
		int s_no =  (page_no -1) *page_unit +1;
		int e_no =  s_no + (page_unit-1);
		
		vo.setS_no(s_no);
		vo.setE_no(e_no);
		
		
		// 목록화면 출력 서비스 실시
		List<?> list = nboardService.selectNboardList(vo);
		
		//페이징 (총 데이터 개수 구해서 총 페이지 개수 구하기)
		
		// 총 데이터 개수 서비스 
		int total = nboardService.selectTotalnotice(vo);
		
		// 총 페이지 벋호 얻기
		// 17 -> (double)17/10 -> ceil(1.7) -> (int)2.0 = 2
		
		int total_page = (int)Math.ceil((double)total/page_unit);
		
		int page_sno = ((page_no-1)/page_size)*page_size +1;
		int page_eno = page_sno + (page_size - 1);
		
		if(page_eno > total_page) {
			page_eno = total_page;
		}
		
		vo.setTotal(total_page);
		vo.setTotal_page(total_page);
		vo.setPage_sno(page_sno);
		vo.setPage_eno(page_eno);
		
		
		model.addAttribute("s_field",vo.getS_field());
		model.addAttribute("s_text",vo.getS_text());
		
		model.addAttribute("vo",vo);
		model.addAttribute("list",list);
		

		
		return "board/nBoardList";
	}
	
	/* 글쓰기 화면 (소라)*/
	@RequestMapping("nboardWrite.do")
	public String nboardWrite() throws Exception {

		return "board/nboardWrite";
	}
	
	/*글쓰기 저장 (소라)*/
	@RequestMapping("nboardWriteSave.do")
	@ResponseBody
	public String insertnboardWrite(NBoardVO vo) 
									throws Exception {
		
		String result = nboardService.insertnboardWrite(vo);
		
		String msg = "";
		
		
		if(result !=  null) {
			msg = "fail";
		} else {
		
			if(vo.getSort().equals("N")) {
				msg = "Nok";
			} else if (vo.getSort().equals("F")) {
				msg = "Fok";
			}
		}
		//System.out.println("======="+result+"====="+vo.getSort()+"====="+msg);
		return msg;
	}
	
	/* 글 내용 보기 (소라)*/
	@RequestMapping("nboardDetail.do")
	public String selectnboardDetail(NBoardVO vo, Model model) 
									throws Exception {
		// 상세보기 서비스
		vo = nboardService.selectnboardDetail(vo);
		
		//조회수 증가
		nboardService.updatenboardHits(vo);
		
		// content sql -> html 
		String content = vo.getContent();
		if(content != null && !content.equals("")) {
			content = content.replace("\n", "<br>");
			content = content.replace(" ", "&nbsp;");
			vo.setContent(content);
		}
		
		model.addAttribute("vo",vo);
		
		
		return "board/nboardDetail";
	}
	
	/* 글 수정하기 (소라)*/
	@RequestMapping("nboardModify.do")
	public String selectnboardModify(NBoardVO vo, Model model) 
									throws Exception {

		vo = nboardService.selectnboardDetail(vo);
		
		model.addAttribute("vo",vo);
		
		
		return "board/nboardModify";
	}
	
	/* 글 수정저장 (소라)*/
	@RequestMapping("nboardModifySave.do")
	@ResponseBody
	public String updatenboard(NBoardVO vo) 
									throws Exception {
		
		int result = nboardService.updatenboard(vo);
		
		String msg = "";
		
		if(result == 0) {
			msg = "modify_fail";
		} else if (result ==1) {
			msg = "ok";
		}
		
		
		return msg;
	}
	
	/* 게시글 삭제 (소라)*/
	@RequestMapping("nBoardDelete.do")
	@ResponseBody
	public String deletenboard(NBoardVO vo) 
								throws Exception {

		int result = nboardService.deletenboard(vo);
		
		String msg = "";
		
		if(result == 0) {
			msg = "del_fail";
		} else if (result ==1) {
			msg = "ok";
		}
		
		
		return msg;
	}
	
	/* 자주묻는 질문 게시글 리스트 (소라) */
	@RequestMapping("faqList.do")
	public String selectFAQList(NBoardVO vo, Model model) 
									throws Exception {
		
		
		
		//페이징 (페이지 번호로 시작과 끝번호 얻기)
		
				// 출력 페이지 번호를 받음. 1pg, 2pg, 3pg ...
				int page_no = vo.getPage_no();
				
				// 출력할 행 갯수 (15)
				
				int page_unit = vo.getPage_unit();

				// 출력할 페이지의 갯수 (10)
				int page_size = vo.getPage_size();
				
				// 페이지 번호를 이용해 sql의 시작과 끝번호 변수 설정
				// 1p -> 1~10 , 2p -> 11~20 , 3p -> 21 ~30
				int s_no =  (page_no -1) *page_unit +1;
				int e_no =  s_no + (page_unit-1);
				
				vo.setS_no(s_no);
				vo.setE_no(e_no);
				
				
				/* 목록화면 출력 서비스 실시*/
				List<?> list = nboardService.selectFAQList(vo);
				
				//페이징 (총 데이터 개수 구해서 총 페이지 개수 구하기)
				
				// 총 데이터 개수 서비스 
				int total = nboardService.selectTotalfaq(vo);
				
				// 총 페이지 벋호 얻기
				// 17 -> (double)17/10 -> ceil(1.7) -> (int)2.0 = 2
				
				int total_page = (int)Math.ceil((double)total/page_unit);
				
				int page_sno = ((page_no-1)/page_size)*page_size +1;
				int page_eno = page_sno + (page_size - 1);
				
				if(page_eno > total_page) {
					page_eno = total_page;
				}
				
				vo.setTotal(total_page);
				vo.setTotal_page(total_page);
				vo.setPage_sno(page_sno);
				vo.setPage_eno(page_eno);
				
				
				model.addAttribute("s_field",vo.getS_field());
				model.addAttribute("s_text",vo.getS_text());
				
				model.addAttribute("vo",vo);
				model.addAttribute("list",list);
		
		
		return "board/faqList";
	}
	

	
	
	
	
	
	
}
