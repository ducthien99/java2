package bean;

public class loaisachbean {
	private String maloai;
	private String tenloai;
	@Override
	public String toString() {
		return "loaisachbean [maloai=" + maloai + ", tenloai=" + tenloai + "]";
	}
	public loaisachbean(String maloai, String tenloai) {
		super();
		this.maloai = maloai;
		this.tenloai = tenloai;
	}
	public loaisachbean() {
		super();
	}
	public String getMaloai() {
		return maloai;
	}
	public void setMaloai(String maloai) {
		this.maloai = maloai;
	}
	public String getTenloai() {
		return tenloai;
	}
	public void setTenloai(String tenloai) {
		this.tenloai = tenloai;
	}

	
	

}
