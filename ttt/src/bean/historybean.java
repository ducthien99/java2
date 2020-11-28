package bean;

public class historybean {
	private String anh;
	private String masach;
	private String tensach;
	private String tacgia;
	private String soluong;
	private String ngaymua;
	public historybean(String anh,String masach, String tensach, String tacgia, String soluong, String ngaymua) {
		super();
		this.anh=anh;
		this.masach = masach;
		this.tensach = tensach;
		this.tacgia = tacgia;
		this.soluong = soluong;
		this.ngaymua = ngaymua;
	}
	
	public historybean() {
		super();
	}
	public String getAnh() {
		return anh;
	}

	public void setAnh(String anh) {
		this.anh = anh;
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

	public String getSoluong() {
		return soluong;
	}

	public void setSoluong(String soluong) {
		this.soluong = soluong;
	}

	public String getNgaymua() {
		return ngaymua;
	}

	public void setNgaymua(String ngaymua) {
		this.ngaymua = ngaymua;
	}
	
	

}
