package egov.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egov.service1.InquiryVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("inquiryDAO")
public class InquiryDAO extends EgovAbstractDAO{

	public String insertInquiryboard(InquiryVO vo) {
		return (String) insert("inquiryDAO.insertInquiryboard",vo);
	}

	public List<?> selectInquiryboardList(InquiryVO vo) {
		return list("inquiryDAO.selectInquiryboardList",vo);
	}

	public InquiryVO selectInquiryboardDetail(InquiryVO vo) {
		return (InquiryVO) select("inquiryDAO.selectInquiryboardDetail",vo);
	}

	public int updateInquiryboard(InquiryVO vo) {
		return update("inquiryDAO.updateInquiryboard",vo);
	}

	public int deleteInquiryboard(InquiryVO vo) {
		return delete("inquiryDAO.deleteInquiryboard",vo);
	}

	public int updateInquiryboardHits(InquiryVO vo) {
		return update("inquiryDAO.updateInquiryboardHits",vo);
	}

	public int selectInquiryboardTotal(InquiryVO vo) {
		return (int) select("inquiryDAO.selectInquiryListTotal",vo);
	}



}
