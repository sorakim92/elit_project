package egov.service1;

public class ZzimListVO {

	private int zzimindex;
	private String rdate;
	private String userid;
	private int storeunq;
	private String likechk;
	private int cateunq;

	int s_no = 1;
	int e_no = 10;
	
	
	public int getS_no() {
		return s_no;
	}
	public void setS_no(int s_no) {
		this.s_no = s_no;
	}
	public int getE_no() {
		return e_no;
	}
	public void setE_no(int e_no) {
		this.e_no = e_no;
	}
	public int getCateunq() {
		return cateunq;
	}
	public void setCateunq(int cateunq) {
		this.cateunq = cateunq;
	}
	public String getLikechk() {
		return likechk;
	}
	public void setLikechk(String likechk) {
		this.likechk = likechk;
	}
	public int getZzimindex() {
		return zzimindex;
	}
	public void setZzimindex(int zzimindex) {
		this.zzimindex = zzimindex;
	}
	public String getRdate() {
		return rdate;
	}
	public void setRdate(String rdate) {
		this.rdate = rdate;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public int getStoreunq() {
		return storeunq;
	}
	public void setStoreunq(int storeunq) {
		this.storeunq = storeunq;
	}
	
}
