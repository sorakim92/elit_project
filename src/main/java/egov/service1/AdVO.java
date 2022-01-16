package egov.service1;

import org.springframework.web.multipart.MultipartFile;

public class AdVO {
	private int adindex;
	private String userid;
	private String name;
	private String service;
	private String ment;
	private String sdate;
	private String edate;
	private String rdate;
	private String banner;
	private String status;
	private String b_userid;
	private String email;
	private String phone;
	private String adrejection;
	private MultipartFile mtfile;
	
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
	
	
	
	public String getAdrejection() {
		return adrejection;
	}
	public void setAdrejection(String adrejection) {
		this.adrejection = adrejection;
	}
	public int getPage_eno() {
		return page_eno;
	}
	public void setPage_eno(int page_eno) {
		this.page_eno = page_eno;
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
	public MultipartFile getMtfile() {
		return mtfile;
	}
	public void setMtfile(MultipartFile mtfile) {
		this.mtfile = mtfile;
	}
	public int getAdindex() {
		return adindex;
	}
	public void setAdindex(int adindex) {
		this.adindex = adindex;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getService() {
		return service;
	}
	public void setService(String service) {
		this.service = service;
	}
	public String getMent() {
		return ment;
	}
	public void setMent(String ment) {
		this.ment = ment;
	}
	public String getSdate() {
		return sdate;
	}
	public void setSdate(String sdate) {
		this.sdate = sdate;
	}
	public String getEdate() {
		return edate;
	}
	public void setEdate(String edate) {
		this.edate = edate;
	}
	public String getRdate() {
		return rdate;
	}
	public void setRdate(String rdate) {
		this.rdate = rdate;
	}
	public String getBanner() {
		return banner;
	}
	public void setBanner(String banner) {
		this.banner = banner;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getB_userid() {
		return b_userid;
	}
	public void setB_userid(String b_userid) {
		this.b_userid = b_userid;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
}
