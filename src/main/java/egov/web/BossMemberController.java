package egov.web;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

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
	
	/*
	 * 사업자추가 페이지 List (강성모)
	 * 	 */
	@RequestMapping("BossMemberList.do")
	public String selectbossmemeberlist( BossMemberVO vo, Model model ) throws Exception{
		
		//(페이징)페이징처리 vo를 먼저쓰고오자
				//전송된 출력페이지 번호를 받음 . 1.2.3
			int page_no = vo.getPage_no();	
			
				//한페이지마다 출력할 행 개수
			int page_unit = vo.getPage_unit(); // 5
			
				//한 화면 출력할 페이지 개수 
			int page_size = vo.getPage_size(); //10
			
			//(페이징)vo에서 불러오는게 아니라 계산해야함 계속 값이 변하는데 클릭으로 변하는게 아니기때
			int s_no = (page_no -1)*page_unit+1;
			int e_no = s_no+(page_unit-1);
			//(페이징)계산해서 나온 값을 vo의 s_no e_no로 세팅
			vo.setS_no(s_no);
			vo.setE_no(e_no);
			
			
			//사업자 개수 출력	
			int countB = bossmemberService.selectcountB(vo);
			
			
		List<?> list = bossmemberService.selectbossmemberService(vo);
		
		System.out.println("111");
		//(페이징)총 데이터 개수 불러오기
		//(페이징)select count(*) from ad//6
		int totalB = bossmemberService.selectBossTotal(vo);
		System.out.println("변수토탈" + totalB);
		//(페이징) 페이지 개수
			//(double)5/2 = 2.xx -> ceil -> 3.0 -(int) -> 3
		int total_page = (int) Math.ceil((double)totalB/page_unit);
		
		//(페이지 시작 ) 1p-> 1 ~10 , 5p -> 1 ~ 10, 10 -> 1~10
		//			 11p -> 11~20, 17p -> 11~20
					//page_no, page_size
		int page_sno = ((page_no-1)/page_size)*page_size + 1;
		int page_eno = page_sno +(page_size-1);
		
		if(page_eno > total_page) {
			page_eno = total_page;
		}
		
		vo.setTotal(totalB);
		vo.setTotal(total_page);
		vo.setPage_sno(page_sno);
		vo.setPage_eno(page_eno);
//		(페이징)
		model.addAttribute("vo",vo);
//		(광고P개수출력)
		model.addAttribute("count",countB);
		model.addAttribute("list",list);
		model.addAttribute("k2text",vo.getK2text());
		
		return "admin/BossMemberList";
	}
	
	
	/*
	 * 사업자 권한 추가 (강성모)
	 * 	 */
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
	
	/*
	 * 사업자 권한 삭제 (강성모)
	 * 	 */
	@RequestMapping("BossMinus.do")
	@ResponseBody
	public String bossmemberMinus(MemberVO vo, BossMemberVO bvo)
										throws Exception{
		String msg = "";
		int resultUpdate = bossmemberService.returnMemberBusiness(vo);
		if(resultUpdate != 1) {
			msg = "er1";
		} else {
			bvo = bossmemberService.selectBossMemberInfo2(vo);
			int resultDelete = bossmemberService.deleteBossMember(bvo);
			if(resultDelete == 0 ) {
				//이거는 실패! 니까 메세지 실패!
				msg = "er2";
				}  else if(resultDelete > 0 ) {
				  // 이거는 성공! 
				 msg = "ok";
				}
		}
		return msg;
	}
	
	
	
	@RequestMapping("BossMemberDetail.do")
	public String selectbossmemberDetail(BossMemberVO vo, Model model, HttpSession session) 
									throws Exception {
		// 상세보기 서비스
		String userid = (String) session.getAttribute("BossmemberSessionID");
		vo.setuserid(userid);
		
		
		
		vo = bossmemberService.selectbossmemberDetail(vo);	
		model.addAttribute("vo",vo);
		
		return "mypage/businessMypage";
	}
	
	@RequestMapping("BossMemberModifySave.do")
	@ResponseBody
	public String updatebossmember(BossMemberVO vo, HttpSession session) 
									throws Exception {
		
		String userid = (String) session.getAttribute("BossmemberSessionID");
		
		vo.setuserid(userid);
		
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
