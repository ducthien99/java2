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

import dao.DungChung;

/**
 * Servlet implementation class dangkycontroller
 */
@WebServlet("/dangkycontroller")
public class dangkycontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dangkycontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			if(request.getParameter("hoten")!=null) {
				String hoten=request.getParameter("hoten");
				String diachi=request.getParameter("diachi");
				String sdt=request.getParameter("sdt");
				String email=request.getParameter("email");
				String tendn=request.getParameter("tendn");
				String pass=request.getParameter("pass");
				
				DungChung dc=new DungChung();
				dc.KetNoi();
				String max_mkh="select * from KhachHang";
				PreparedStatement cm=dc.cn.prepareStatement(max_mkh);
				ResultSet rs=cm.executeQuery();
				String ma = null;
				int maint;
				while(rs.next()) {
					ma=rs.getString("makh");
				}
					
				maint=Integer.parseInt(ma)+1;
				
				
				String sql="insert into KhachHang  values("+maint+",N'"+hoten+"',N'"+diachi+"','"+sdt+"','"+email+"','"+tendn+"','"+pass+"');";
				//PreparedStatement cmd=dc.cn.prepareStatement(sql);
				Statement cmd=dc.cn.createStatement();
				cmd.executeUpdate(sql);
				
				cmd.close();
				dc.cn.close();
				
				
						
				response.sendRedirect("dangnhapcontroller");
					
			}
			
			RequestDispatcher rd=request.getRequestDispatcher("dangky.jsp");
			rd.forward(request, response);
			
			
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
