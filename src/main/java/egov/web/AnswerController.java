package egov.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import egov.service1.AnswerService;

@Controller
public class AnswerController {
	@Resource(name = "answerService")
	AnswerService answerService;
}
