package egov.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egov.service1.InquiryService;
import egov.service1.InquiryVO;

@Service("inquiryService")
public class InquiryImpl implements InquiryService{
	@Resource(name = "inquiryDAO")
	InquiryDAO inquiryDAO;

	@Override
	public String insertInquiry(InquiryVO vo) throws Exception {
		return inquiryDAO.insertInquiry(vo);
	}

	@Override
	public List<?> selectInquiryList(InquiryVO vo) throws Exception {
		return inquiryDAO.selectInquiryList(vo);
	}

	@Override
	public int selectInquiryListTotal(InquiryVO vo) throws Exception {
		return inquiryDAO.selectInquiryListTotal(vo);
	}

	@Override
	public InquiryVO selectInquiryDetail(InquiryVO vo) throws Exception {
		return inquiryDAO.selectInquiryDetail(vo);
	}

	@Override
	public int updateInquiry(InquiryVO vo) throws Exception {
		return inquiryDAO.updateInquiry(vo);
	}

	@Override
	public int deleteInquiry(InquiryVO vo) throws Exception {
		return inquiryDAO.deleteInquiry(vo);
	}

	@Override
	public int updateInquiryHits(InquiryVO vo) throws Exception {
		return inquiryDAO.updateInquiryHits(vo);
	}
}
