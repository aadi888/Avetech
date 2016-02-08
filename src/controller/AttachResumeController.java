package controller;

import java.io.IOException;

import java.util.Properties;

import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class EmailController
 */
public class AttachResumeController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public AttachResumeController() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String resume=request.getParameter("resume");
		String cover=request.getParameter("cover");
		
		
		if(resume.equals("Ctrl+c and then Ctrl+v(Shortcut)") || cover.equals("Ctrl+c and then Ctrl+v(Shortcut)"))
		{
			request.setAttribute("flag", "*Please Copy/Paste The Resume");
			request.getRequestDispatcher("apply.jsp").forward(request, response);
		}
		
		else
		{
		
		Properties props = new Properties();
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.socketFactory.port", "465");
		props.put("mail.smtp.socketFactory.class",
				"javax.net.ssl.SSLSocketFactory");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.port", "465");
 
		Session session = Session.getDefaultInstance(props,
			new javax.mail.Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication("karanpatel@avetech.us","16Armstrong");
				}
			});
 
		try {
 
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress("karanpatel@avetech.us"));
			message.setRecipients(Message.RecipientType.TO,
					InternetAddress.parse("karanpatel@avetech.us"));
			message.setSubject("Apply At Avenue Technology");
			message.setText("Dear Sir,\n My Resume \n\n"+resume+"\n\nMy Cover Letter \n\n"+cover+"\n\nThanks" );
 
			Transport.send(message);
 
			System.out.println("Done");
			
			request.setAttribute("flag","Your Resume Has Been Uploaded Successfully");
			request.getRequestDispatcher("apply.jsp").forward(request, response);
 
		} catch (MessagingException e) {
			throw new RuntimeException(e);
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
