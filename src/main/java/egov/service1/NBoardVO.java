package egov.service1;

public class NBoardVO {

	private int unq;
	private String title;
	private int hits;
	private String rdate;
	private String content;
	private String sort;
	
	String s_field;
	String s_text;
	
	
	
	
	//페이징 
	
	int page_unit = 10; // 행 출력단위
	int page_size = 10; // 페이징 출력 단위
	
	int page_no = 1; // 출력 페이지 번호

	int page_sno = 1; // 페이지 시작 번호
	int page_eno = 10; // 페이지 끝번호
	
	int s_no = 1; // 데이터베이스 출력의 시작번호
	int e_no = 10; // 끝번호
	
	int total = 0; // 총 데이터 개수
	int total_page = 0 ; // 총 페이지 번호
	
	//int rownum = 1;      // 출 페이지의 시작 행  번호
	
	
	// 이전글 다음글
	int punq = 0;
	int nunq = 0;
	
	String ptitle;
	String ntitle;
	
	
	
	
	
	public String getPtitle() {
		return ptitle;
	}
	public void setPtitle(String ptitle) {
		this.ptitle = ptitle;
	}
	public String getNtitle() {
		return ntitle;
	}
	public void setNtitle(String ntitle) {
		this.ntitle = ntitle;
	}
	public int getPunq() {
		return punq;
	}
	public void setPunq(int punq) {
		this.punq = punq;
	}
	public int getNunq() {
		return nunq;
	}
	public void setNunq(int nunq) {
		this.nunq = nunq;
	}
	public String getS_field() {
		return s_field;
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
	public void setS_field(String s_field) {
		this.s_field = s_field;
	}
	public String getS_text() {
		return s_text;
	}
	public void setS_text(String s_text) {
		this.s_text = s_text;
	}
	public int getUnq() {
		return unq;
	}
	public void setUnq(int unq) {
		this.unq = unq;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getHits() {
		return hits;
	}
	public void setHits(int hits) {
		this.hits = hits;
	}
	public String getRdate() {
		return rdate;
	}
	public void setRdate(String rdate) {
		this.rdate = rdate;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getSort() {
		return sort;
	}
	public void setSort(String sort) {
		this.sort = sort;
	}

}
