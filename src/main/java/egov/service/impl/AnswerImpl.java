package egov.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egov.service1.AnswerService;
@Service("answerService")
public class AnswerImpl implements AnswerService{
	@Resource(name = "answerDAO")
	AnswerDAO answerDAO;
}
