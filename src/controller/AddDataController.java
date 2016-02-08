package controller;

import java.io.IOException;

//import javax.jms.Session;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.AdminBean;
import dao.AdminDAO;

/**
 * Servlet implementation class AddDataController
 */
public class AddDataController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String eventid=request.getParameter("eventid");
		String day=request.getParameter("day");
		String month=request.getParameter("month");
		String headline=request.getParameter("headline");
		String message=request.getParameter("message");
		AdminBean bean=new AdminBean();
		bean.setAdminid(eventid);
		bean.setEventdate(day+" "+month);
		bean.setEventheadline(headline);
		bean.setEventdescription(message);
		 
		
		if(headline.length()<=36 && message.length()<=120 )
		{
			AdminDAO dao=new AdminDAO();
			boolean flag=dao.updateData(bean);
			if(flag==true)
			{
				request.setAttribute("updateFlag","Hey Admin! Your Data Has Been Updated..");
				
				request.getRequestDispatcher("home.jsp").forward(request, response);
			}
			else
			{
				request.setAttribute("updateFlag","Hey Admin! Something Went Wrong..");
				request.getRequestDispatcher("home.jsp").forward(request, response);
			}
		}
		else
		{
			request.setAttribute("updateFlag","Hey Admin! Please Dont Add Data Longer Than 36 or 120 words.");
			request.getRequestDispatcher("home.jsp").forward(request, response);
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
