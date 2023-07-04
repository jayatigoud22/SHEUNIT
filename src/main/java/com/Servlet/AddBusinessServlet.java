package com.Servlet;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.io.File;
import java.io.FileOutputStream;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.DAO.PostDAO;
import com.Db.DBConnect;
import com.DAO.*;

@MultipartConfig(maxFileSize = 16177215)
@WebServlet("/AddBusinessServlet")
public class AddBusinessServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Connection conn = null;
		int uid = Integer.parseInt(request.getParameter("uid"));
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String category = request.getParameter("category");
		String contact = request.getParameter("contact");
		/* String date= request.getParameter("date"); */
		/* InputStream inputStream = null; */
		Part filePart = request.getPart("photoName");
		String photoName = filePart.getSubmittedFileName();
		
	
		
  
		PostDAO dao = new PostDAO(DBConnect.getConn());
		/* boolean f=dao.AddBusiness(uid,title,content,category,contact,inputStream); */
		boolean f1 = dao.AddBusiness(uid, title, content,category,contact,photoName);
		

		if (f1) {
//			String path = getServletContext().getRealPath("")+"photos";
			/*String path = "C:/Users/Admin/eclipse-workspace/Women_Empowerment_Portal/src/main/webapp/photos1";
			 File f= new File(path); 
			 filePart.write(path + File.separator+photoName);
			System.out.println("data insert successfully");
			response.sendRedirect("allPost.jsp");*/
			String path = "C:/Users/Admin/eclipse-workspace/Women_Empowerment_Portal/src/main/webapp/photos1";
			 File f= new File(path); 
			 //filePart.write(path + File.separator+photoName);
			System.out.println("data insert successfully");
			response.sendRedirect("allPost.jsp");
		} else {
			System.out.println("Data not inserted");
		}
		
		/* request.setAttribute("img", photoName); */
	}

}
