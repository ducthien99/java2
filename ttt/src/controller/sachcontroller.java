package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.dangnhapbean;
import bean.loaisachbean;
import bean.sachbean;
import bo.loaisachbo;
import bo.sachbo;

/**
 * Servlet implementation class sachcontroller
 */
@WebServlet("/sachcontroller")
public class sachcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public sachcontroller() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    
    

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			//HttpSession session=request.getSession();
			// dnbean=new dangnhapbean();
			//=(dangnhapbean)session.getAttribute("makh");
			sachbo sbo=new sachbo();
			ArrayList<sachbean> ds=sbo.getsach();
			
			String ml=request.getParameter("loaisach");
			String  key=request.getParameter("txttk");
					if(ml!=null)
						ds=sbo.TimMa(ml);
					else
						if(key!=null)
							ds=sbo.Timsach(key);
							
			
					
					
					
					
					loaisachbo lbo=new loaisachbo();
				    		ArrayList<loaisachbean> ls=lbo.getloai();
				    		
					
					
					
					
					request.setAttribute("dssach", ds);
					request.setAttribute("dsloai",ls );
					
					RequestDispatcher rd=request.getRequestDispatcher("hienthisach.jsp");
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
