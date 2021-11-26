package egov.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egov.service1.ZzimListService;
import egov.service1.ZzimListVO;

@Service("zzimlistService")
public class ZzimListImpl implements ZzimListService{
	@Resource(name = "zzimlistDAO")
	ZzimListDAO zzimlistDAO;

	@Override
	public String insertZzimList(ZzimListVO vo) throws Exception {
		return zzimlistDAO.insertZzimList(vo);
	}

	@Override
	public List<?> selectZzimList(ZzimListVO vo) throws Exception {
		return zzimlistDAO.selectZzimList(vo);
	}

	@Override
	public int selectZzimListTotal(ZzimListVO vo) throws Exception {
		return zzimlistDAO.selectZzimListTotal(vo);
	}
}
