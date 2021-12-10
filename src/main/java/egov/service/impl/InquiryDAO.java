package egov.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egov.service1.InquiryVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("inquiryDAO")
public class InquiryDAO extends EgovAbstractDAO{

	public String insertBoard(InquiryVO vo) {
		return (String) insert("inquiryDAO.insertBoard",vo);
	}

	public List<?> selectBoardList(InquiryVO vo) {
		return list("inquiryDAO.selectBoardList",vo);
	}

	public InquiryVO selectBoardDetail(InquiryVO vo) {
		return (InquiryVO) select("inquiryDAO.selectBoardDetail",vo);
	}

	public int updateBoard(InquiryVO vo) {
		return update("inquiryDAO.updateBoard",vo);
	}

	public int deleteBoard(InquiryVO vo) {
		return delete("inquiryDAO.deleteBoard",vo);
	}

	public int updateBoardHits(InquiryVO vo) {
		return update("inquiryDAO.updateBoardHits",vo);
	}

	public int selectBoardTotal(InquiryVO vo) {
		return (int) select("inquiryDAO.selectBoardTotal",vo);
	}



}
