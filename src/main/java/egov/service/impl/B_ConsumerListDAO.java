package egov.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egov.service1.B_ConsumerListVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("b_consumerlistDAO")
public class B_ConsumerListDAO extends EgovAbstractDAO{

	
	public String insertb_ConsumerListWrite(B_ConsumerListVO vo) {
		
		return (String) insert("b_consumerlistDAO.insertb_ConsumerListWrite",vo);
	}

	public List<?> selectb_ConsumerList(B_ConsumerListVO vo) {
		
		return list("b_consumerlistDAO.selectb_ConsumerList",vo);
	}

}
