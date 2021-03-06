package controller;

import java.awt.image.BufferedImage;
import java.io.IOException;

import javax.imageio.ImageIO;
//import javax.jms.Session;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.File;
import java.io.IOException;
import java.nio.file.attribute.UserDefinedFileAttributeView;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;





/**
 * Servlet implementation class ImageUploadController
 */
public class UploadHeroImage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UploadHeroImage() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		

		FileItemFactory factory= new DiskFileItemFactory();
		ServletFileUpload upload=new ServletFileUpload(factory);
		List<FileItem> items = null;
		String fieldName = null;
		String fieldValue = null;
		String fileName = null;
		File file = null;
		String number=null;
		//UserBean bean=new UserBean();
		
		
try {
			
			items = upload.parseRequest(request);// Parse Request
		
			for (int i = 0; i < items.size(); i++) {
				FileItem item = items.get(i);
			
				
				if (item.isFormField()) {
					fieldName = item.getFieldName();
					fieldValue = item.getString();
					if (fieldName.equalsIgnoreCase("name")) {
						String value = fieldValue;
						//student.setName(value);
						System.out.println("Name : " + value);
					}
					if (fieldName.equalsIgnoreCase("number")) {
						String value = fieldValue;
						number=value;
						//student.setNumber(value);
						System.out.println("Number : " + value);
					}
				
					

					
				}else {
					/*
					fieldName = item.getFieldName();
					System.out.println("FieldName : "+fieldName);
					fileName = item.getName();
					System.out.println("File Name : "+fileName);
					
					fileName = fileName.substring(
							fileName.lastIndexOf("\\") + 1,
							fileName.length());
					System.out.println("File Name 1 : "+fileName);
					*/
					ServletContext context = getServletContext();
					//String path = context.getRealPath("\\");
					//System.out.println("Path : "+path);
					
					
					
					String path = "C:\\Users\\adshah\\Desktop\\AadishEclipseWork\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\AvenueTech\\images\\";
					if(number.equals("1"))
					{
						fileName="i1.png";
					}
					else if(number.equals("2"))
					{
						fileName="i2.png";
					}
					else if(number.equals("3"))
					{
						fileName="i3.png";
					}
					file = new File(path + file.separator
							+ fileName);
				       

					try {

						if (fileName.isEmpty()) {

							// Validations....
						} else {

							if (context.getMimeType(fileName).equals(
									"image/gif")
									|| context.getMimeType(fileName)
											.equals("image/jpeg")
									|| context.getMimeType(fileName)
											.equals("image/png")) {
								
								
								//String inputImagePath ="D:\\eclipse_NEW\\photolocator\\WebContent\\upload\\"+fileName;
						        //String outputImagePath2 = "D:\\eclipse_NEW\\photolocator\\WebContent\\upload\\"+fileName+"_smaller.jpg";
						       // try {
						            // resize to a fixed width (not proportional)
						        	//http://codejava.net/java-se/graphics/how-to-resize-images-in-java
						           // int scaledWidth = 1024;
						            //int scaledHeight = 768;
						            //UserDAO dao=new UserDAO();
						            //dao.resize(inputImagePath, outputImagePath2, scaledWidth, scaledHeight);
						 
						            // resize smaller by 50%
						            //double percent = 0.5;
						           // ImageResizer.resize(inputImagePath, outputImagePath2, percent);
						 
						            // resize bigger by 50%
						            //percent = 1.5;
						            //ImageResizer.resize(inputImagePath, outputImagePath3, percent);
						 
						        //} catch (IOException ex) {
						         //   System.out.println("Error resizing the image.");
						          //  ex.printStackTrace();
						       // }
						        
						        
								item.write(file);
								
								request.setAttribute("filename",fileName);
								request.setAttribute("path",path);
								request.setAttribute("number",number);
								//request.getRequestDispatcher("ResizeImageController").forward(request, response);
								 
								  request.getRequestDispatcher("ChangeHeroImageController").forward(request, response);
							} else {

								request.setAttribute(
										"photo",
										"<font color=red>*Please upload files that end in types .png,.jpeg only.</font>");
							request.getRequestDispatcher("home.jsp").forward(request, response);
							}
						}
					} catch (Exception e) {
						e.printStackTrace();
					}

				}

			}

		} catch (FileUploadException e) {
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
