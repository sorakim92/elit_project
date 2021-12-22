package egov.service1;

public class MenuVO {
	private int menuunq;
	private String menuname;
	private String menukeyword;
	private String menuinfo;
	private String menuimage;
	private int price;
	private int cateunq;
	private int storeunq;
	private String userid;

	
	
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public int getMenuunq() {
		return menuunq;
	}
	public void setMenuunq(int menuunq) {
		this.menuunq = menuunq;
	}
	public String getMenuname() {
		return menuname;
	}
	public void setMenuname(String menuname) {
		this.menuname = menuname;
	}
	public String getMenukeyword() {
		return menukeyword;
	}
	public void setMenukeyword(String menukeyword) {
		this.menukeyword = menukeyword;
	}
	public String getMenuinfo() {
		return menuinfo;
	}
	public void setMenuinfo(String menuinfo) {
		this.menuinfo = menuinfo;
	}
	public String getMenuimage() {
		return menuimage;
	}
	public void setMenuimage(String menuimage) {
		this.menuimage = menuimage;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getCateunq() {
		return cateunq;
	}
	public void setCateunq(int cateunq) {
		this.cateunq = cateunq;
	}
	public int getStoreunq() {
		return storeunq;
	}
	public void setStoreunq(int storeunq) {
		this.storeunq = storeunq;
	}

}
