package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.dangnhapbean;

public class dangnhapdao {
	public ArrayList<dangnhapbean> getdangnhap() throws Exception
	{
		ArrayList<dangnhapbean> dn=new ArrayList<dangnhapbean>();
		DungChung dc=new DungChung();
		dc.KetNoi();
		String sql="select * from KhachHang";
		PreparedStatement cmd=dc.cn.prepareStatement(sql);
		ResultSet rs=cmd.executeQuery();
		while(rs.next())
		{
			String makh=rs.getString("makh");
			String hoten=rs.getString("hoten");
			String diachi=rs.getString("diachi");
			String sodt=rs.getString("sodt");
			String email=rs.getString("email");
			String tendn=rs.getString("tendn");
			String pass=rs.getString("pass");
			dangnhapbean dangnhap=new dangnhapbean(makh, hoten, diachi, sodt, email, tendn, pass);
			//dangnhapbean dangnhap1=new dangnhapbean("mkh1", "thien", "hue", "123456", "thien@gmail.com", "t", "12");
			dn.add(dangnhap);
			//dn.add(dangnhap1);
			
		}
		rs.close();
		dc.cn.close();
		return dn;
	}

}
