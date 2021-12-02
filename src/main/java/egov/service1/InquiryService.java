package egov.service1;

import java.util.List;

public interface InquiryService {
	
	String insertInquiryboard(InquiryVO vo) throws Exception;
	List<?> selectInquiryboardList(InquiryVO vo) throws Exception;	
	InquiryVO selectInquiryboardDetail(InquiryVO vo) throws Exception;
	int updateInquiryboard(InquiryVO vo) throws Exception;
	int deleteInquiryboard(InquiryVO vo) throws Exception;
	int updateInquiryboardHits(InquiryVO vo) throws Exception;
	
	int selectInquiryboardTotal(InquiryVO vo) throws Exception;

}
