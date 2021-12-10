package egov.web;

//import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;


import egov.service1.MenuService;
import egov.service1.MenuVO;
import egovframework.rte.fdl.property.EgovPropertyService;

@Controller
public class MenuController {
	
	//@Resource(name = "propertiesService")
	//protected EgovPropertyService ps;
	
	
	@Resource(name = "menuService")
	MenuService menuService;
	
		
	@RequestMapping("menuDetail.do")
	public String selectMenuDetail(MenuVO vo, Model model) 
									throws Exception {
		// 상세보기 서비스
		vo = menuService.selectMenuDetail(vo);	
		
		model.addAttribute("vo",vo);
		
		return "menu/menuModifyList";
	}
	@RequestMapping("menuModify.do")
	public String selectMenuModify(MenuVO vo, Model model) 
									throws Exception {

		vo = menuService.selectMenuDetail(vo);
		
		model.addAttribute("vo",vo);
		
		
		return "menu/menuModify";
	}
	@RequestMapping("menuModifySave.do")
	@ResponseBody
	public String updateMenu(MenuVO vo) 
									throws Exception {

		int result = menuService.updateMenu(vo);
		String msg = "";
		
		if(result == 0) {
			msg = "modify_fail";
		} else if (result ==1) {
			msg = "ok";
		}
		
		
		return msg;
	}
	

	@RequestMapping("menuDelete.do")
	@ResponseBody
	public String deleteMenu(MenuVO vo) throws Exception {
		
		int result = menuService.deleteMenu(vo);
		String msg = "";
		
		if(result == 0) {
			msg = "del_fail";
		} else if (result ==1) {
			msg = "ok";
		}
		
		
		return msg;
		
		
	}
	
	@RequestMapping("menuWrite.do")
	public String menu_addMenuEnter() {
		
		return "menu/addMenuEnter"; 
	}
	
	@RequestMapping("menuWriteSave.do")
	@ResponseBody
	public String insertMenu( MenuVO vo) throws Exception {
		
		
		
		//String path = ps.getString("upload_path");
		//Map map = fileupload(multiRequest,path);
		
		
		//System.out.println("------------ vo111" + vo);
		
		//vo.setMenuimage(map.get("filename")+"");
		
		
		
		String result = menuService.insertMenu(vo);
		
		String msg = "";
		
		System.out.println(msg+"결과"+result);
		if( result == null) {
			msg = "ok";
		} else {
			msg ="save_fail";
		}
		
		return msg;
		
	}
	
	@RequestMapping(value="menuList.do")
	public String selectMenuList(MenuVO vo, Model model) throws Exception {
		
		List<?> list = menuService.selectMenuList(vo);
		model.addAttribute("list",list);
		
		return "menu/menuModifyList";
	}
	
	//@RequestMapping(value = "/downloadFile.do")
	/*public void downloadFile(   String file,
								HttpServletResponse response) throws Exception {
		
		String path = ps.getString("uploadDir");
		
		String uploadPath = path;
		File uFile = new File(uploadPath, file);
		int fSize = (int) uFile.length();

		if (fSize > 0) {
			BufferedInputStream in = new BufferedInputStream(new FileInputStream(uFile));
			String mimetype = "text/html";
			
			response.setBufferSize(fSize);
			response.setContentType(mimetype);
			response.setHeader("Content-Disposition", "attachment; filename=\"" + file + "\"");
			response.setContentLength(fSize);
			FileCopyUtils.copy(in, response.getOutputStream());
			in.close();
			
			response.getOutputStream().flush();
		}
	}
	
	public static Map fileupload( MultipartHttpServletRequest multiRequest, String path) throws Exception {
		
		MultipartFile file;
		String save_dir  = path;
		String save_file  = "";
		
		Map<String,String> map = new HashMap<String,String>();
		String filename = "";
		String filesize = "";
		
		
		 
		Map<String, MultipartFile> files = multiRequest.getFileMap();
		Iterator<Entry<String, MultipartFile>> itr = files.entrySet().iterator();
		
		while ( itr.hasNext() ) {
			Entry<String, MultipartFile> entry = itr.next();
			file = entry.getValue();
			
			save_file = save_dir + "/" + file.getOriginalFilename();
			
			if( !file.getOriginalFilename().equals("") ) {
				filename += file.getOriginalFilename() + "/";
				filesize += file.getSize() + "/";
				file.transferTo(new File(save_file));
			}
		}
		map.put("filename", filename);
	
		return map;
	}*/
	
	
}
