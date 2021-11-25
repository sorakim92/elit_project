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
	
	@RequestMapping("nBoardList.do")
	public String selectnBoardList(NBoardVO vo, Model model) 
									throws Exception {
		
		// 목록화면 출력 서비스 실 
		List<?> list = nboardService.selectNboardList(vo);
		
		
		model.addAttribute("s_field",vo.getS_field());
		model.addAttribute("s_text",vo.getS_text());
		model.addAttribute("list",list);
		
		
		return "board/nBoardList";
	}
	
	@RequestMapping("nboardWrite.do")
	public String nboardWrite() throws Exception {

		return "board/nboardWrite";
	}
	
	@RequestMapping("nboardWriteSave.do")
	@ResponseBody
	public String insertnboardWrite(NBoardVO vo) 
									throws Exception {
		
		String result = nboardService.insertnboardWrite(vo);
	
		String msg = "";
		
		if(result == null) {
			msg = "ok";
		}
		
		return msg;
	}
	
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
	
	@RequestMapping("nboardModify.do")
	public String selectnboardModify(NBoardVO vo, Model model) 
									throws Exception {

		vo = nboardService.selectnboardDetail(vo);
		
		model.addAttribute("vo",vo);
		
		
		return "board/nboardModify";
	}
	
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
	
	
}
