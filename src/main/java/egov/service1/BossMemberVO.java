package egov.service1;

public class BossMemberVO {
	private String userid;
	private String userpw;
	private String username;
	private String email;
	private String userphone;
	private String storeaddr;
	private String business;
	private String rdate;
	private int storeunq;
	String k2text;
	
	//페이징
	
		// 행 출력
		int page_unit = 7;
		
		//화면의 페이지 갯수
		int page_size = 5;
		
		//홈페이지 번호 (계속 바뀔거임)
		int page_no = 1; //2 3 4
		
		//한 화면의 페이지 시작, 끝번호
		int page_sno = 1; 
		int page_eno = 5; 
		
		//데이터 출력 (행번호)시작과 끝 번호(sql where조건문)
		int s_no = 1;
		int e_no = 7;
		
		
		//총 데이터 개수
		int total = 0;
		
		//총 페이지 번호
		int total_page = 0;
	
	public String getUserid() {
			return userid;
		}
		public void setUserid(String userid) {
			this.userid = userid;
		}
		public int getPage_unit() {
			return page_unit;
		}
		public void setPage_unit(int page_unit) {
			this.page_unit = page_unit;
		}
		public int getPage_size() {
			return page_size;
		}
		public void setPage_size(int page_size) {
			this.page_size = page_size;
		}
		public int getPage_no() {
			return page_no;
		}
		public void setPage_no(int page_no) {
			this.page_no = page_no;
		}
		public int getPage_sno() {
			return page_sno;
		}
		public void setPage_sno(int page_sno) {
			this.page_sno = page_sno;
		}
		public int getPage_eno() {
			return page_eno;
		}
		public void setPage_eno(int page_eno) {
			this.page_eno = page_eno;
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
	public String getK2text() {
		return k2text;
	}
	public void setK2text(String k2text) {
		this.k2text = k2text;
	}
	public String getuserid() {
		return userid;
	}
	public void setuserid(String userid) {
		this.userid = userid;
	}
	public String getUserpw() {
		return userpw;
	}
	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUserphone() {
		return userphone;
	}
	public void setUserphone(String userphone) {
		this.userphone = userphone;
	}
	public String getStoreaddr() {
		return storeaddr;
	}
	public void setStoreaddr(String storeaddr) {
		this.storeaddr = storeaddr;
	}
	public String getBusiness() {
		return business;
	}
	public void setBusiness(String business) {
		this.business = business;
	}
	public String getRdate() {
		return rdate;
	}
	public void setRdate(String rdate) {
		this.rdate = rdate;
	}
	public int getStoreunq() {
		return storeunq;
	}
	public void setStoreunq(int storeunq) {
		this.storeunq = storeunq;
	}
	
	

}
