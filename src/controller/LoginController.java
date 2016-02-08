package controller;

import java.io.IOException;

//import javax.jms.Session;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginController
 */
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String username=request.getParameter("username");
		String password= request.getParameter("password");
		String data;
		if(username.equals("avetech") && password.equals("avenue"))
		{
			HttpSession session=request.getSession();
			data="true";
			session.setAttribute("login","karan");
			request.setAttribute("flag","Congrats. Login Successfull");
			request.setAttribute("data",data);
			request.getRequestDispatcher("admin.jsp").forward(request, response);
		}
		else
		{
			request.setAttribute("flag","*Login Invalid . Please Try Again.");
			request.getRequestDispatcher("admin.jsp").forward(request, response);
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
