package egov.service1;

public class MenuOrderVO {
	
	int storeunq; 
	int cateunq;
	String storename; 
	String storeinfo;
	double storerate; 
	String menukeyword; 
	int fee;
	
    int menuunq;
    String menuname;
    
    String menuinfo;
    int price;
    
    int pindex;
    int qty =1;
    
    String userid;

    int total =0;
    int minprice;
    
    String s_text;
    
    
    
  	public String getS_text() {
  		return s_text;
  	}
  	public void setS_text(String s_text) {
  		this.s_text = s_text;
  	}
    
    
    
	public int getMinprice() {
		return minprice;
	}
	public void setMinprice(int minprice) {
		this.minprice = minprice;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}

	public int getPindex() {
		return pindex;
	}
	public void setPindex(int pindex) {
		this.pindex = pindex;
	}
	public int getQty() {
		return qty;
	}
	public void setQty(int qty) {
		this.qty = qty;
	}
	public int getStoreunq() {
		return storeunq;
	}
	public void setStoreunq(int storeunq) {
		this.storeunq = storeunq;
	}
	public int getCateunq() {
		return cateunq;
	}
	public void setCateunq(int cateunq) {
		this.cateunq = cateunq;
	}
	public String getStorename() {
		return storename;
	}
	public void setStorename(String storename) {
		this.storename = storename;
	}
	public String getStoreinfo() {
		return storeinfo;
	}
	public void setStoreinfo(String storeinfo) {
		this.storeinfo = storeinfo;
	}
	public double getStorerate() {
		return storerate;
	}
	public void setStorerate(double storerate) {
		this.storerate = storerate;
	}
	public String getMenukeyword() {
		return menukeyword;
	}
	public void setMenukeyword(String menukeyword) {
		this.menukeyword = menukeyword;
	}
	public int getFee() {
		return fee;
	}
	public void setFee(int fee) {
		this.fee = fee;
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
	public String getMenuinfo() {
		return menuinfo;
	}
	public void setMenuinfo(String menuinfo) {
		this.menuinfo = menuinfo;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
    
    
    
	
	
	
}
