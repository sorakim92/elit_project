package egov.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egov.service1.InquiryService;

@Service("inquiryService")
public class InquiryImpl implements InquiryService{
	@Resource(name = "inquiryDAO")
	InquiryDAO inquiryDAO;
}
