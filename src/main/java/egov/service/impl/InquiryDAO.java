package egov.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egov.service1.InquiryVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("inquiryDAO")
public class InquiryDAO extends EgovAbstractDAO{

	public String insertInquiry(InquiryVO vo) {
		return (String) insert("inquiryDAO.insertInquiry",vo);
	}

	public List<?> selectInquiryList(InquiryVO vo) {
		return list("inquiryDAO.selectInquiryList",vo);
	}

	public int selectInquiryListTotal(InquiryVO vo) {
		return (int) select("inquiryDAO.selectInquiryListTotal",vo);
	}

	public InquiryVO selectInquiryDetail(InquiryVO vo) {
		return (InquiryVO) select("inquiryDAO.selectInquiryDetail",vo);
	}

	public int updateInquiry(InquiryVO vo) {
		return update("inquiryDAO.updateInquiry",vo);
	}

	public int deleteInquiry(InquiryVO vo) {
		return delete("inquiryDAO.deleteInquiry",vo);
	}

	public int updateInquiryHits(InquiryVO vo) {
		return update("inquiryDAO.updateInquiryHits",vo);
	}

}
