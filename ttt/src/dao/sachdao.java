package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.sachbean;

public class sachdao {
	public ArrayList<sachbean> getsach() throws Exception{
		ArrayList<sachbean> ds=new ArrayList<sachbean>();
		DungChung dc=new DungChung();
		dc.KetNoi();
		String sql="select * from sach";
		PreparedStatement cmd=dc.cn.prepareStatement(sql);
		ResultSet rs=cmd.executeQuery();
		while(rs.next())
		{
			String masach=rs.getString("masach");
			String tensach=rs.getString("tensach");
			String tacgia=rs.getString("tacgia");
			String gia=rs.getString("gia");
			String anh =rs.getString("anh");
			String maloai=rs.getString("maloai");
			sachbean sach=new sachbean(masach, tensach, tacgia,Double.parseDouble(gia), anh, maloai);
			ds.add(sach);
		}
		rs.close();
		dc.cn.close();
		return ds;
	}

}
