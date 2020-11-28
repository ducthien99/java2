package bean;

public class sachbean {
	private String masach;
	private String tensach;
	private String tacgia;
	private double gia;
	private String anh;
	private String maloai;
	public sachbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "sachbean [masach=" + masach + ", tensach=" + tensach + ", tacgia=" + tacgia + ", anh=" + anh + ", gia="
				+ gia + ", maloai=" + maloai + "]";
	}
	public String getMasach() {
		return masach;
	}
	public void setMasach(String masach) {
		this.masach = masach;
	}
	public String getTensach() {
		return tensach;
	}
	public void setTensach(String tensach) {
		this.tensach = tensach;
	}
	public String getTacgia() {
		return tacgia;
	}
	public void setTacgia(String tacgia) {
		this.tacgia = tacgia;
	}
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}
	public double getGia() {
		return gia;
	}
	public void setGia(double gia) {
		this.gia = gia;
	}
	public String getMaloai() {
		return maloai;
	}
	public void setMaloai(String maloai) {
		this.maloai = maloai;
	}
	public sachbean(String masach, String tensach, String tacgia, double gia,String anh , String maloai) {
		super();
		this.masach = masach;
		this.tensach = tensach;
		this.tacgia = tacgia;
		this.anh = anh;
		this.gia = gia;
		this.maloai = maloai;
	}
	
	
}

