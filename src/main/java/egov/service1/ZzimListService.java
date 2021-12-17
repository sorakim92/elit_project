package egov.service1;

import java.util.List;

public interface ZzimListService {
	
	String insertZzimList(ZzimListVO vo) throws Exception;
	List<?> selectZzimList(ZzimListVO vo) throws Exception;
	int selectZzimListTotal(ZzimListVO vo) throws Exception;
	
	
	
	/*
	 * 좋아요 클릭시 빈하트이냐 아니냐를 결정하기 위해서,
	 *  cnt가 1이면 selectLikeChk 로 U면 찜, L이면 찜취소로 update
	 *  cnt 0이면 insert + 좋아요 (찜)
	 * */
	int LikeInsertChk(ZzimListVO vo) throws Exception;
	
	String selectLikeChk(ZzimListVO vo) throws Exception;
	
	
	/*
	 * 좋아요(찜) insert  
	 * */
	String insertZzimlike(ZzimListVO vo) throws Exception;
	
	/*
	 * 좋아요 (찜) update
	 * */
	
	int addzzimlike(ZzimListVO vo) throws Exception;
	/*
	 * 좋아요(찜) 취소 update 
	 * */
	int cancelzzimlike(ZzimListVO vo) throws Exception;
	
	
	
	
	




}
