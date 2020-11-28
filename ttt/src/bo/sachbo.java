package bo;
import dao.sachdao;

import java.util.ArrayList;

import bean.sachbean;
public class sachbo {
	sachdao sdao=new sachdao();
	ArrayList<sachbean> ds;
	public ArrayList<sachbean> getsach() throws Exception{
		ds=sdao.getsach();
		return ds;
		
	}
	public ArrayList<sachbean> TimMa(String maloai)
	{
		ArrayList<sachbean> tam=new ArrayList<sachbean>();
		for(sachbean s:ds) {
			if(s.getMaloai().equalsIgnoreCase(maloai))
				tam.add(s);
		}
		return tam;
		
	}
	public ArrayList<sachbean> Timsach(String key){
		ArrayList<sachbean> tam =new ArrayList<sachbean>();
		for(sachbean s: ds) {
			if(s.getTensach().toLowerCase().contains(key.toLowerCase())
			||s.getTacgia().toLowerCase().contains(key.toLowerCase()))
				tam.add(s);
		}
		return tam;
	}
}
