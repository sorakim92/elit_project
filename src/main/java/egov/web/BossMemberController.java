package egov.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import egov.service1.BossMemberService;
import egov.service1.BossMemberVO;
import egov.service1.MemberVO;

@Controller
public class BossMemberController {
	@Resource(name = "bossmemberService")
	BossMemberService bossmemberService;
	
	@RequestMapping("BossMemberList.do")
	public String selectbossmemeberlist( BossMemberVO vo, Model model ) throws Exception{
		
		List<?> list = bossmemberService.selectbossmemberService(vo);
		
		model.addAttribute("vo",vo);
		model.addAttribute("list",list);
		
		
		return "admin/BossMemberList";
	}
	
	@RequestMapping("BossPlus.do")
	@ResponseBody
	public String bossMemberPlus(MemberVO vo, BossMemberVO bvo)
									throws Exception{
		String msg = "";
		
		//1 update => member table : business 'p' ->'Y' (where userid)
		int resultUpdate = bossmemberService.updateMemberBusiness(vo);
		//1-2 1-> 잘 업뎃, 그 외 숫자 => 안된것
		if(resultUpdate != 1) {
			msg = "er1"; //멤버테이블이 업데이트 X
		} else {//업뎃 성공시
		//2 select => member userid 이용해서 bossmember 에 집어넣을 데이터 select
			bvo = bossmemberService.selectBossMemberInfo(vo);
			//System.out.println(bvo.getUsername());확인용
		//3 insert => bossmember table에 2번 select 데이터를 insert!
			String resultInsert = bossmemberService.insertBossMember(bvo);
			if(resultInsert == null) {
				msg = "ok";
			} else {
				msg = "er2";
			}
		
		
		}
		return msg;
	}
	
	
	
	
	
	
	@RequestMapping("BossMemberDetail.do")
	public String selectbossmemberDetail(BossMemberVO vo, Model model) 
									throws Exception {
		// 상세보기 서비스
		vo = bossmemberService.selectbossmemberDetail(vo);
		String userid = "test1";
		vo.setuserid(userid);
		
		
		
		model.addAttribute("vo",vo);
		
		
		return "mypage/businessMypage";
	}
	
	@RequestMapping("BossMemberModifySave.do")
	@ResponseBody
	public String updatebossmember(BossMemberVO vo) 
									throws Exception {
		
		int result = bossmemberService.updatebossmember(vo);
		
		String msg = "";
		
		if(result == 0) {
			msg = "modify_fail";
		} else if (result ==1) {
			msg = "ok";
		}
		
		
		return msg;
	}
	
	
	
}
