package bo;

import java.util.ArrayList;

import bean.dangnhapbean;
import dao.dangnhapdao;

public class dangnhapbo {
	dangnhapdao dndao=new dangnhapdao();
	ArrayList<dangnhapbean> dnbean;
	public ArrayList<dangnhapbean> getdangnhap() throws Exception{
		dnbean=dndao.getdangnhap();
		return dnbean;
	}
	public Boolean kiemtradangnhap(String tendn,String pass) throws Exception
	{   dnbean=dndao.getdangnhap();
		for(dangnhapbean tam:dnbean) {
			if(tendn.equals(tam.getTendn()) && pass.equals(tam.getPass()) ) return true;
		}
		return false;
			
	}
	//lay ma khach hang
	public String getmakh(String tendn,String pass) throws Exception
	{   dnbean=dndao.getdangnhap();
		for(dangnhapbean tam:dnbean) {
			if(tendn.equals(tam.getTendn()) && pass.equals(tam.getPass()) ) return tam.getMakh();
		}
		return null;
			
	}
	//lay ten khach hang
	public String gettenkh(String makh) throws Exception
	{   dnbean=dndao.getdangnhap();
		for(dangnhapbean tam:dnbean) {
			if(tam.getMakh().equals(makh) ) return tam.getHoten();
		}
		return null;
			
	}

}
