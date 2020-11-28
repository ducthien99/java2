package bo;

import java.util.ArrayList;

import bean.loaisachbean;
import dao.loaisachdao;

public class loaisachbo {
	loaisachdao ldao=new loaisachdao();
	ArrayList<loaisachbean> ls;
	public ArrayList<loaisachbean> getloai() throws Exception{
		ls=ldao.getloai();
		return ls;
		
	}

}
