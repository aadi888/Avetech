package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ChangeHeroImageController
 */
public class ChangeHeroImageController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String number=(String)request.getAttribute("number");
		String path=(String)request.getAttribute("path");
		String filename=(String)request.getAttribute("filename");
		
		if(number!=null && path!=null && filename!=null)
		{
		
			request.setAttribute("number", number);
			request.setAttribute("path", path);
			request.setAttribute("filename", filename);
			request.setAttribute("heroFlag", "true");
			request.setAttribute("heroChange", "*Hey,Admin You Changed Your Hero Image Successfully...");
			request.getRequestDispatcher("home.jsp").forward(request, response);
			
	}
		else
		{
			HttpSession session=request.getSession();
			
			session.invalidate();
			response.sendRedirect("home.jsp");
			
		}
	}

}
