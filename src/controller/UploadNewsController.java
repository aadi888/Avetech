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
public class UploadNewsController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UploadNewsController() {
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
		
		String news=request.getParameter("news");
		String newsid=request.getParameter("newsid");
		
		AdminDAO dao=new AdminDAO();
		boolean flagNews=dao.updateNews(newsid,news);
		if(flagNews==true)
		{
			request.setAttribute("newsFlag","*Your News Has Been Updated Successfully...");
			request.getRequestDispatcher("home.jsp").forward(request, response);
		}
		else
		{
			request.setAttribute("newsFlag","*Something Went Wrong...");
			request.getRequestDispatcher("home.jsp").forward(request, response);
		}
		
	}

}
