package egov.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egov.service1.B_ConsumerListService;
import egov.service1.B_ConsumerListVO;

@Service("b_consumerlistService")
public class B_ConsumerListImpl  implements B_ConsumerListService{
	@Resource(name = "b_consumerlistDAO")
	B_ConsumerListDAO b_consumerlistDAO;

	
	@Override
	public String insertb_ConsumerListWrite(B_ConsumerListVO vo) throws Exception {
		
		return b_consumerlistDAO.insertb_ConsumerListWrite(vo);
	}


	@Override
	public List<?> selectb_ConsumerList(B_ConsumerListVO vo) throws Exception {
		return b_consumerlistDAO.selectb_ConsumerList(vo);
	}
}
