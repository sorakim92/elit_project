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
	public String insertInquiryboard(InquiryVO vo) throws Exception {
		return inquiryDAO.insertInquiryboard(vo);
	}

	@Override
	public List<?> selectInquiryboardList(InquiryVO vo) throws Exception {
		return inquiryDAO.selectInquiryboardList(vo);
	}	

	@Override
	public InquiryVO selectInquiryboardDetail(InquiryVO vo) throws Exception {
		return inquiryDAO.selectInquiryboardDetail(vo);
	}

	@Override
	public int updateInquiryboard(InquiryVO vo) throws Exception {
		return inquiryDAO.updateInquiryboard(vo);
	}

	@Override
	public int deleteInquiryboard(InquiryVO vo) throws Exception {
		return inquiryDAO.deleteInquiryboard(vo);
	}

	@Override
	public int updateInquiryboardHits(InquiryVO vo) throws Exception {
		return inquiryDAO.updateInquiryboardHits(vo);
	}

	@Override
	public int selectInquiryboardTotal(InquiryVO vo) throws Exception {
		return inquiryDAO.selectInquiryboardTotal(vo);
	}
}
