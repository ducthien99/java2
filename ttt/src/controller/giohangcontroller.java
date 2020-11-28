package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.giohangbean;
import bo.giohangbo;

/**
 * Servlet implementation class giohangcontroller
 */
@WebServlet("/giohangcontroller")
public class giohangcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public giohangcontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();	
		String type=request.getParameter("type");
		giohangbo gh=new giohangbo();
		
		if(type.equals("buy"))
		{
		    String ms=request.getParameter("ms");
			String ten=request.getParameter("ts");
			String tg=request.getParameter("tg");
			String gia=request.getParameter("gia");
			String anh=request.getParameter("anh");
			//int sl=1;
			if(ms!=null)
			{
				//giohangbo gh;
				if(session.getAttribute("gh")==null)//mua lan dau
				{
					gh=new giohangbo();
					session.setAttribute("gh", gh);
				}
				gh=(giohangbo)session.getAttribute("gh");
				gh.them(ms, ten, tg, Double.parseDouble(gia) ,1,anh);
				session.setAttribute("gh", gh);
				request.setAttribute("gh", gh);
				//RequestDispatcher rd=request.getRequestDispatcher("giohang.jsp");
				//rd.forward(request, response);
				response.sendRedirect("tam");
			}
		}else {
			if(type.equals("xoa"))
			{
				gh=(giohangbo)session.getAttribute("gh");
				//giohangbo gh=(giohangbo)session.getAttribute("gh");
				if(gh!=null)
				{
					gh.xoa(request.getParameter("ms"));
					session.setAttribute("gh", gh);
					
					
					request.setAttribute("gh", gh);
					//RequestDispatcher rd=request.getRequestDispatcher("giohang.jsp");
					//rd.forward(request, response);
					response.sendRedirect("tam");
				}
			}else
				if(type.equals("sua"))
				{
					String ms=request.getParameter("ms");
					String sl=request.getParameter("input");
					if(ms!=null)
					{
						gh=(giohangbo) session.getAttribute("gh");
						//giohangbo gh=(giohangbo) session.getAttribute("gh");
						for(giohangbean g:gh.ds)
						{
							if(g.getMasach().equals(ms))
							{
								g.setSoluong(Integer.parseInt(sl));
							}
						}
						session.setAttribute("gh", gh);
						
						request.setAttribute("gh", gh);
						//RequestDispatcher rd=request.getRequestDispatcher("giohang.jsp");
						//rd.forward(request, response);
						response.sendRedirect("tam");
					}
				}else
				{
					if(session.getAttribute("gh")!=null) {
					gh=(giohangbo) session.getAttribute("gh");
					session.setAttribute("gh", gh);
					
					request.setAttribute("gh", gh);
					//RequestDispatcher rd=request.getRequestDispatcher("giohang.jsp");
					//rd.forward(request, response);
					response.sendRedirect("tam");
					}else {
						session.setAttribute("gh", gh);
						response.sendRedirect("tam");
					}
					
				}
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
