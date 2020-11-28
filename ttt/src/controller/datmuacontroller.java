package controller;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.giohangbean;
import bo.giohangbo;
import dao.DungChung;

/**
 * Servlet implementation class datmuacontroller
 */
@WebServlet("/datmuacontroller")
public class datmuacontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public datmuacontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			//giohangbo ghbo=new giohangbo();
			HttpSession session=request.getSession();
			String makh=(String) session.getAttribute("makh");
			
			
			
			
			if(makh!=null) {
				giohangbo	gh=(giohangbo)session.getAttribute("gh");
				
				
				
				
				
				DungChung dc=new DungChung();
				dc.KetNoi();
				String mhd="select * from hoadon";
				PreparedStatement cm=dc.cn.prepareStatement(mhd);
				ResultSet rs=cm.executeQuery();
				String mahd = null;
				int mahdint;
				while(rs.next()) {
					mahd=rs.getString("MaHoaDon");
				}
					
				mahdint=Integer.parseInt(mahd)+1;
				
					
				String sql="insert into hoadon  values("+mahdint+","+makh+",'"+java.time.LocalDate.now()+"',"+gh.ds.size()+");";
				//String sql="insert into hoadon values(6,20,'2020-11-18',1);";
				Statement cmd=dc.cn.createStatement();
				cmd.executeUpdate(sql);
				
				
				//chi tiet hoa don
				
				String cthd="select * from ChiTietHoaDon";
				cm=dc.cn.prepareStatement(cthd);
				ResultSet rs1=cm.executeQuery();
				String macthd=null;
				int macthdint;
				while(rs1.next()) {
					macthd=rs1.getString("MaChiTietHD");
				}
				macthdint=Integer.parseInt(macthd);
				
				for(giohangbean ghbean:gh.ds) {
					macthdint++;
					String sql1="insert into ChiTietHoaDon  values("+macthdint+",'"+ghbean.getMasach()+"',"+ghbean.getSoluong()+","+mahdint+");";
					Statement cmd1=dc.cn.createStatement();
					cmd1.executeUpdate(sql1);
				}
				
				
				
				rs.close();
				dc.cn.close();
				
				//session.removeAttribute("gh");
				gh=new giohangbo();
				session.setAttribute("gh",gh );
				response.sendRedirect("tam?damua=ok");
				
				
			} else
			{
				response.sendRedirect("tam");
				//RequestDispatcher rd=request.getRequestDispatcher("tam");
				//rd.forward(request, response);
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
