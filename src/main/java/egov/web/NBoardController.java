package egov.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import egov.service1.NBoardService;
import egov.service1.NBoardVO;

@Controller
public class NBoardController {
	@Resource(name = "nboardService")
	NBoardService nboardService;
	
	@RequestMapping("nBoardList.do")
	public String selectnBoardList(NBoardVO vo, Model model) throws Exception {
		
		// 목록화면 출력 서비스 실 
		List<?> list = nboardService.selectNboardList(vo);
		
		
		
		model.addAttribute("list",list);
		
		
		return "board/nBoardList";
	}
}
