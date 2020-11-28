package controller;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.historybean;
import dao.DungChung;

/**
 * Servlet implementation class historycontroller
 */
@WebServlet("/historycontroller")
public class historycontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public historycontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			ArrayList<historybean> listhistory=new ArrayList<historybean>();
			HttpSession session=request.getSession();
			//if(session.getAttribute("makh")==null) {
			//	historybean his=new historybean();
			//	response.sendRedirect("history.jsp");
			////}else
			//{
				String makh=(String) session.getAttribute("makh");
				DungChung dc=new DungChung();
				dc.KetNoi();
				String lichsu="select anh,sach.MaSach,tensach,tacgia,SoLuongMua,NgayMua from ((hoadon inner join ChiTietHoaDon on hoadon.MaHoaDon=ChiTietHoaDon.MaHoaDon)inner join sach on ChiTietHoaDon.MaSach=sach.masach) where makh="+makh;
				PreparedStatement cm=dc.cn.prepareStatement(lichsu);
				ResultSet rs=cm.executeQuery();
				while(rs.next()) {
					String anh=rs.getString("anh");
					String masach=rs.getString("MaSach");
					String tensach=rs.getString("tensach");
					String tacgia=rs.getString("tacgia");
					String soluong=rs.getString("SoLuongMua");
					String ngaymua=rs.getString("NgayMua");
					historybean his=new historybean(anh, masach, tensach, tacgia, soluong, ngaymua);
					listhistory.add(his);
					
					
					
					
					
					
				//}
			}
				request.setAttribute("list", listhistory);
				RequestDispatcher rd=request.getRequestDispatcher("history.jsp");
				rd.forward(request, response);
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
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
