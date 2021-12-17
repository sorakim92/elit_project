package egov.service1;

public class OrderReviewVO {

	private int reviewindex;
	private int storeunq;
	private int rate;
	private String rcontent;
	private String rimage;
	private String rdate;
	private String userid;
	private int oderindex;
	
	
	int rn = 1;	
	
	int page_no = 1;
	int s_no = 1;
	int e_no = 10;
	
	int total = 0;
	int total_page = 0;
	
	String s_field;
	String s_text;
	
	String unq1;  
	String unq2;
	String unq3;
	
	
	
	public int getRn() {
		return rn;
	}
	public void setRn(int rn) {
		this.rn = rn;
	}
	public int getPage_no() {
		return page_no;
	}
	public void setPage_no(int page_no) {
		this.page_no = page_no;
	}
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
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public int getTotal_page() {
		return total_page;
	}
	public void setTotal_page(int total_page) {
		this.total_page = total_page;
	}
	public String getS_field() {
		return s_field;
	}
	public void setS_field(String s_field) {
		this.s_field = s_field;
	}
	public String getS_text() {
		return s_text;
	}
	public void setS_text(String s_text) {
		this.s_text = s_text;
	}
	public String getUnq1() {
		return unq1;
	}
	public void setUnq1(String unq1) {
		this.unq1 = unq1;
	}
	public String getUnq2() {
		return unq2;
	}
	public void setUnq2(String unq2) {
		this.unq2 = unq2;
	}
	public String getUnq3() {
		return unq3;
	}
	public void setUnq3(String unq3) {
		this.unq3 = unq3;
	}
	public int getReviewindex() {
		return reviewindex;
	}
	public void setReviewindex(int reviewindex) {
		this.reviewindex = reviewindex;
	}
	public int getStoreunq() {
		return storeunq;
	}
	public void setStoreunq(int storeunq) {
		this.storeunq = storeunq;
	}
	public int getRate() {
		return rate;
	}
	public void setRate(int rate) {
		this.rate = rate;
	}
	public String getRcontent() {
		return rcontent;
	}
	public void setRcontent(String rcontent) {
		this.rcontent = rcontent;
	}
	public String getRimage() {
		return rimage;
	}
	public void setRimage(String rimage) {
		this.rimage = rimage;
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
	public int getOderindex() {
		return oderindex;
	}
	public void setOderindex(int oderindex) {
		this.oderindex = oderindex;
	}
	
	
	
}