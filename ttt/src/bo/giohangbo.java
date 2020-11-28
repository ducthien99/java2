package bo;

import java.util.ArrayList;

import bean.giohangbean;

public class giohangbo {
	public ArrayList<giohangbean> ds=new ArrayList<giohangbean>();
	public void them(String ms,String ten,String tg, double gia, int sl,String anh )
	{
		for(giohangbean g:ds)
		{
			if(g.getMasach().equals(ms))
			{
				g.setSoluong(g.getSoluong()+sl);
				return;
			}
		}
			giohangbean gh=new giohangbean(ms,ten,tg,gia,sl,anh);
			ds.add(gh);
		
	}
	public void xoa(String ms)
	{
		for(giohangbean g:ds)
		{
			if(g.getMasach().equals(ms))
			{
				ds.remove(g);
				return;
			}
		}
	}
	public double tongtien()
	{
		double tt=0;
		for(giohangbean g:ds)
		{
			tt=tt+g.getThanhtien();
		}
		return tt;
	}
}

