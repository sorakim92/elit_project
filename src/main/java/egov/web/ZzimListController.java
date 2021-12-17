package egov.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.Mapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import egov.service1.ZzimListService;
import egov.service1.ZzimListVO;

@Controller
public class ZzimListController {
	@Resource(name = "zzimlistService")
	ZzimListService zzimlistService;
	
	@RequestMapping(name="ZzimListService")
	public String mypage_ZzimList(ZzimListVO vo, Model model ) throws Exception {
		
		return "mypage_ZzimList";
	}
	
	
	@RequestMapping("zzimlike.do")
	@ResponseBody
	public String likeStatus(ZzimListVO vo, Model model) throws Exception{
		
		String msg = "";
		
		int insert_chk = zzimlistService.LikeInsertChk(vo);
		String likechk = zzimlistService.selectLikeChk(vo);
		
		if(insert_chk == 0) {
			
			System.out.println("============INSERT 찜!");
			String result = zzimlistService.insertZzimlike(vo);
			if(result== null )vo.setLikechk("L");
			System.out.println("=======L 나와랏. 저장됐고,"+vo.getLikechk());
			msg = "ok";
			
		} else if (insert_chk == 1) {
			
			if(likechk.equals("U")) {
				System.out.println("찜!!!====update");
				int add_like = zzimlistService.addzzimlike(vo);
				vo.setLikechk("L");
				if( add_like == 1) System.out.println("=====성공");
				msg = "ok";
				
			} else if (likechk.equals("L")) {
				System.out.println("찜취소 =========== ");
				int del_like = zzimlistService.cancelzzimlike(vo);
				if( del_like == 1) System.out.println("=====성공");
				vo.setLikechk("U");
				msg = "ok";

			}
			
		} else {
			msg = "error";
		}
		
		
		return msg;
	}
}
