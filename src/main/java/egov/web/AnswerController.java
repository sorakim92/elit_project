package egov.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import egov.service1.AnswerService;
import java.util.List;

import javax.annotation.Resource;


@Controller
public class AnswerController {
	@Resource(name = "answerService")
	AnswerService answerService;
	
	
}
