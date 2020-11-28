package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.dangnhapbean;
import bo.dangnhapbo;

/**
 * Servlet implementation class dangnhapcontroller
 */
@WebServlet("/dangnhapcontroller")
public class dangnhapcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dangnhapcontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			try {
				HttpSession session=request.getSession();
				dangnhapbo dnbo=new dangnhapbo();
				//String makh=request.getParameter("makh");
				String tdn=request.getParameter("tendangnhap");
				String mk=request.getParameter("matkhau");
				String dx=request.getParameter("dx");
				
				if(tdn!=null) {
					boolean ktdn=dnbo.kiemtradangnhap(tdn, mk);
					if(ktdn) {
						
						String makh=dnbo.getmakh(tdn, mk);
						session.setAttribute("makh", makh);
						response.sendRedirect("sachcontroller");
					}else
					{
						
						RequestDispatcher rd=request.getRequestDispatcher("dangnhap.jsp");
						rd.forward(request, response);
					}
					
					
					//RequestDispatcher rd=request.getRequestDispatcher("hienthisach.jsp");
					//rd.forward(request, response);
				}else  {
					//RequestDispatcher rd=request.getRequestDispatcher("dangnhap.jsp");
					//rd.forward(request, response);
					response.sendRedirect("dangnhap.jsp");
				}
					
					
				
			} catch (Exception e) {
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
