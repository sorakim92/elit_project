package egov.service1;

public class InquiryVO {

	private String title;
	private String content;
	private String files;
	private int hits;
	private String rdate;
	private int inquiryindex;
	private String userid;
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getFiles() {
		return files;
	}
	public void setFiles(String files) {
		this.files = files;
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
	public int getInquiryindex() {
		return inquiryindex;
	}
	public void setInquiryindex(int inquiryindex) {
		this.inquiryindex = inquiryindex;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}

}
