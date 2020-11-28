package bean;

public class giohangbean {
	private String masach;
	private String tensach;
	private String tacgia;
	private double gia;
	private int soluong;
	private double thanhtien;
	private String anh;
	@Override
	public String toString() {
		return "giohangbean [masach=" + masach + ", tensach=" + tensach + ", tacgia=" + tacgia + ", gia=" + gia
				+ ", soluong=" + soluong + ", thanhtien=" + thanhtien + "]";
	}
	public giohangbean(String masach, String tensach, String tacgia, double gia, int soluong,String anh) {
		super();
		this.masach = masach;
		this.tensach = tensach;
		this.tacgia = tacgia;
		this.gia = gia;
		this.soluong = soluong;
		this.anh=anh;
		
	}
	public giohangbean() {
		super();
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
	public double getGia() {
		return gia;
	}
	public void setGia(double gia) {
		this.gia = gia;
	}
	public int getSoluong() {
		return soluong;
	}
	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}
	public double getThanhtien() {
		return gia*soluong;
	}
	public void setThanhtien(double thanhtien) {
		this.thanhtien =gia*soluong;
	}
	public String getAnh()
	{
		return anh;
	}
	public void setAnh()
	{
		this.anh=anh;
	}
	
	
	
}
	
