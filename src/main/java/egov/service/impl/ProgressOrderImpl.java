package egov.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egov.service1.ProgressOrderService;
import egov.service1.ProgressOrderVO;

@Service("progressorderService")
public class ProgressOrderImpl implements ProgressOrderService{

		@Resource(name = "progressorderDAO")
		ProgressOrderDAO progressorderDAO;

		@Override
		public List<?> selectProgressOrderList(ProgressOrderVO vo) throws Exception {
			
			return progressorderDAO.selectProgressOrderList(vo);
		}
}
