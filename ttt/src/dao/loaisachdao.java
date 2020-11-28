package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.sun.net.httpserver.Authenticator.Result;

import bean.loaisachbean;

public class loaisachdao {
	public ArrayList<loaisachbean> getloai() throws Exception{
		ArrayList<loaisachbean> ls=new ArrayList<loaisachbean>();
		DungChung dc=new DungChung();
		dc.KetNoi();
		String sql="select * from loai";
		PreparedStatement cmd=dc.cn.prepareStatement(sql);
		ResultSet rs=cmd.executeQuery();
		while(rs.next()) {
			String maloai=rs.getString("maloai");
			String tenloai=rs.getString("tenloai");
			loaisachbean loai=new loaisachbean(maloai, tenloai); 
			ls.add(loai);
		} rs.close(); dc.cn.close();
		return ls;
	}

}
