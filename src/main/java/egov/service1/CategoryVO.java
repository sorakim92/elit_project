package egov.service1;

public class CategoryVO {
	private int cateunq;
	private String catename;
	private String cateicon;
	private String orderby = "storerate";
	private String ord = "desc";
	
	
	
	
	
	
	public String getOrderby() {
		return orderby;
	}
	public void setOrderby(String orderby) {
		this.orderby = orderby;
	}
	public String getOrd() {
		return ord;
	}
	public void setOrd(String ord) {
		this.ord = ord;
	}
	public int getCateunq() {
		return cateunq;
	}
	public void setCateunq(int cateunq) {
		this.cateunq = cateunq;
	}
	public String getCatename() {
		return catename;
	}
	public void setCatename(String catename) {
		this.catename = catename;
	}
	public String getCateicon() {
		return cateicon;
	}
	public void setCateicon(String cateicon) {
		this.cateicon = cateicon;
	}

	
	
}
