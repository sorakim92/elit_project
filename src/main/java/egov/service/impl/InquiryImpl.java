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
	public String insertBoard(InquiryVO vo) throws Exception {
		return inquiryDAO.insertBoard(vo);
	}

	@Override
	public List<?> selectBoardList(InquiryVO vo) throws Exception {
		return inquiryDAO.selectBoardList(vo);
	}	

	@Override
	public InquiryVO selectBoardDetail(InquiryVO vo) throws Exception {
		return inquiryDAO.selectBoardDetail(vo);
	}

	@Override
	public int updateBoard(InquiryVO vo) throws Exception {
		return inquiryDAO.updateBoard(vo);
	}

	@Override
	public int deleteBoard(InquiryVO vo) throws Exception {
		return inquiryDAO.deleteBoard(vo);
	}

	@Override
	public int updateBoardHits(InquiryVO vo) throws Exception {
		return inquiryDAO.updateBoardHits(vo);
	}

	@Override
	public int selectBoardTotal(InquiryVO vo) throws Exception {
		return inquiryDAO.selectBoardTotal(vo);
	}

}
