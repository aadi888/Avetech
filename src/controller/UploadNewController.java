package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AdminDAO;
import bean.NewsBean;

/**
 * Servlet implementation class UploadNewsController
 */
public class UploadNewController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UploadNewController() {
        super();
        // TODO Auto-generated constructor stub
    }

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
		
		String news=request.getParameter("new");
		String newsid=request.getParameter("newid");
		
		AdminDAO dao=new AdminDAO();
		boolean flagNews=dao.updateNew(newsid,news);
		if(flagNews==true)
		{
			request.setAttribute("newFlag","*Your What's New Has Been Updated Successfully...");
			request.getRequestDispatcher("home.jsp").forward(request, response);
		}
		else
		{
			request.setAttribute("newFlag","*Something Went Wrong...");
			request.getRequestDispatcher("home.jsp").forward(request, response);
		}
		
	}

}
