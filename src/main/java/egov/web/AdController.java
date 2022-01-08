package egov.web;

import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FilenameUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import egov.service1.AdService;
import egov.service1.AdVO;

@Controller
public class AdController {

	@Resource(name = "adService")
	AdService adService;
	
	
	
	/*
	 * 광고 페이지  강성모 
	 * 	 */
	@RequestMapping("AdList.do")
	public String selectadlist( AdVO vo, Model model, HttpSession session  ) 
												throws Exception{
		String url="";
		String ADMIN = (String) session.getAttribute("AdminSessionID");		
		if(ADMIN == null || ADMIN.trim().equals("")) {
			url="etc/alert";
		model.addAttribute("msg","로그인 후 이용해주세요.ㅎㅎ");
		model.addAttribute("url","memberlogin.do");
		} else {
			url="admin/AdList";
		}
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
	
	
	//광고 개수 출력	
	int count = adService.selectcount(vo);
	
	
	
	
	//List
	List<?> list = adService.selectadService(vo);
	
	System.out.println("111");
	//(페이징)총 데이터 개수 불러오기
	//(페이징)select count(*) from ad//6
	int total = adService.selectAdTotal(vo);
	System.out.println("변수토탈" + total);
	//(페이징) 페이지 개수
		//(double)5/2 = 2.xx -> ceil -> 3.0 -(int) -> 3
	int total_page = (int) Math.ceil((double)total/page_unit);
	
	//(페이지 시작 ) 1p-> 1 ~10 , 5p -> 1 ~ 10, 10 -> 1~10
	//			 11p -> 11~20, 17p -> 11~20
				//page_no, page_size
	int page_sno = ((page_no-1)/page_size)*page_size + 1;
	int page_eno = page_sno +(page_size-1);
	
	if(page_eno > total_page) {
		page_eno = total_page;
	}
	vo.setTotal(total);
	vo.setTotal(total_page);
	vo.setPage_sno(page_sno);
	vo.setPage_eno(page_eno);
//	(페이징)
	model.addAttribute("vo",vo);
//	(광고P개수출력)
	model.addAttribute("count",count);
	model.addAttribute("list",list);
		return url;
	}
	
	/*
	 * 광고승인/거절페이지(강성모)
	 * 	 */
	@RequestMapping("AdDetail.do")
	public String selectadDetail( AdVO vo, Model model, HttpSession session)
													throws Exception{
		String url="";
		String ADMIN = (String) session.getAttribute("AdminSessionID");		
		if(ADMIN == null || ADMIN.trim().equals("")) {
			url="etc/alert";
		model.addAttribute("msg","로그인 후 이용해주세요.ㅎㅎ");
		model.addAttribute("url","memberlogin.do");
		} else {
			url="admin/AdDetail";
		}
	vo = adService.selectadDetailService(vo);
		
	model.addAttribute("vo",vo);
	
		return url;
	}
	
	
	/*
	 *  광고 Detail 데이터 update 밑 파일업로드 (강성모)
	 * 	 */
	@RequestMapping("AdFile.do")
	@ResponseBody
	//respon~ 이거는 리턴값이 경로가 아닐때
	public String adapprove(AdVO vo)
									throws Exception{

		String msg = "";
		String banner = null;
//		String path = "Z:/Git2/elit_project/src/main/webapp/upload/banner";//파일이 업로드 될 위치
		String path = "/Users/ksr/git/elit_project/src/main/webapp/upload/banner"; // 소라 테스트 
		//스프링내에서 지원해주는 파일업로드 인터페이스
		MultipartFile mtfile = vo.getMtfile();
		System.out.println("1.====="+mtfile);
		
		//올리는 파일이 있는지 확인!(boolean -t/f)
		if(!mtfile.isEmpty( )) {
			//올리는 파일의 오리지널 이름
			String originFileName = mtfile.getOriginalFilename();
			//System.out.println(originFileName+"2.오리지널 파일이름~");
			
			//이제 파일의 확장자 작업
			String ext = FilenameUtils.getExtension(originFileName);
			
			//파일명이 겹치지않게 랜덤으로 파일명 설정해주는 놈(UUID)
			UUID uuid = UUID.randomUUID();
			banner = uuid + "." + ext;
						
			//저장경로로 파일 복사(이동)
			mtfile.transferTo(new File( path+"/"+banner ));
		}
		vo.setBanner(banner);
		//System.out.println(banner + "====3.랜덤 파일명");
		
		//업데이트 서비스 실행(sdate,edate,거절사유,banner(filename))
		int result = adService.adApproveService(vo);
		
		if(result == 1) {
			msg = "ok";			
		}
		
	
		return msg;
	}
	
	//	광고 거절버튼(강성모)
	@RequestMapping("adReject.do")
	@ResponseBody
	public ModelAndView updateAdReject(AdVO vo)
								throws Exception{
		ModelAndView mav = new ModelAndView("jsonView");
		String message="";
//		int cnt=adService.selectRejectCnt(vo);
//		if(cnt >= 1) {
//			message = "ok";
//		} else {
//			message = "er1";
//		}
		int result=adService.updateAdStatus(vo);
		if(result>=1) {
			message="ok";
		} else{
			message="er1"	;		
		}
		mav.addObject("aaaa",message);
		return mav;
	}
	
	
	@RequestMapping("adWrite.do")
	public String adWrite() throws Exception {
		
		return "business/adWrite"; 
	}

	
	@RequestMapping(value="adWriteSave.do")
	@ResponseBody
	public String insertAd(AdVO vo) throws Exception {
			
		    
			String result = adService.insertAd(vo);
			String message = "ok";
			
			if( result != null ) {
				message = "error";
			}
			return message;
			
		    
	}
		
}
