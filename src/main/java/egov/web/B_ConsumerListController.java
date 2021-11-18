package egov.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import egov.service1.B_ConsumerListService;

@Controller
public class B_ConsumerListController {

	@Resource(name = "b_consumerlistService")
						//IMPL 파일에 있는 @service이름이랑 같게 해야함 대소문자 유의
	B_ConsumerListService b_consumerlistService;
}
