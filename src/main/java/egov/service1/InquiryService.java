package egov.service1;

import java.util.List;

public interface InquiryService {
	
	String insertInquiry(InquiryVO vo) throws Exception;
	List<?> selectInquiryList(InquiryVO vo) throws Exception;
	int selectInquiryListTotal(InquiryVO vo) throws Exception;
	InquiryVO selectInquiryDetail(InquiryVO vo) throws Exception;
	int updateInquiry(InquiryVO vo) throws Exception;
	int deleteInquiry(InquiryVO vo) throws Exception;
	int updateInquiryHits(InquiryVO vo) throws Exception;

}
