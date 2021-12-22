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
		public String insertProgressOrder(ProgressOrderVO vo) throws Exception {
			return progressorderDAO.insertProgressOrder(vo);
		}

		@Override
		public int resetpreorder(ProgressOrderVO vo) throws Exception {
			return progressorderDAO.resetpreorder(vo);

		}
		@Override
		public List<?> selectorderendList(ProgressOrderVO vo) throws Exception {
			return progressorderDAO.selectorderendList(vo);
		}
}
