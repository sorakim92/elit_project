package egov.service1;

public class BusinessEnterVO {
	private int openindex;
	private String storename;
	private String region;
	private String category;
	private String category2;
	private String category3;
	private String phone;
	private String email;
	private String address;
	private String name;
	private String inquire;
	private String rdate;
	private String userid;
	private String status;
	private String cateunq;
	String ktext;
	
	//페이징
	
	
			// 행 출력
			int page_unit = 3;
			
			//화면의 페이지 갯수
			int page_size = 5;
			
			//홈페이지 번호 (계속 바뀔거임)
			int page_no = 1; //2 3 4
			
			//한 화면의 페이지 시작, 끝번호
			int page_sno = 1; 
			int page_eno = 3; 
			
			//데이터 출력 (행번호)시작과 끝 번호(sql where조건문)
			int s_no = 1;
			int e_no = 3;
			
			
			//총 데이터 개수
			int total = 0;
			
			//총 페이지 번호
			int total_page = 0;
			
			public String getKtext() {
				return ktext;
			}
			public void setKtext(String ktext) {
				this.ktext = ktext;
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
	public String getCateunq() {
		return cateunq;
	}
	public void setCateunq(String cateunq) {
		this.cateunq = cateunq;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getCategory2() {
		return category2;
	}
	public void setCategory2(String category2) {
		this.category2 = category2;
	}
	public String getCategory3() {
		return category3;
	}
	public void setCategory3(String category3) {
		this.category3 = category3;
	}
	public int getOpenindex() {
		return openindex;
	}
	public void setOpenindex(int openindex) {
		this.openindex = openindex;
	}
	public String getStorename() {
		return storename;
	}
	public void setStorename(String storename) {
		this.storename = storename;
	}
	public String getRegion() {
		return region;
	}
	public void setRegion(String region) {
		this.region = region;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getInquire() {
		return inquire;
	}
	public void setInquire(String inquire) {
		this.inquire = inquire;
	}
	public String getRdate() {
		return rdate;
	}
	public void setRdate(String rdate) {
		this.rdate = rdate;
	}

	
	
	
}
