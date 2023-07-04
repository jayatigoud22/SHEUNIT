package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Db.DBConnect;
import com.DAO.PostDAO;
@WebServlet("/JobEditServlet1")
public class JobEditServlet1 extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			  Integer jobid=Integer.parseInt(request.getParameter("jobid"));
			  String Title=request.getParameter("title");
			  String Content=request.getParameter("content");
			  
			  PostDAO dao=new PostDAO(DBConnect.getConn());
			  boolean f=dao.adminUpdate(jobid, Title, Content);
			 
			 
			  if(f)
			  {
				  System.out.println("Data updated successfully");
				  HttpSession session=request.getSession();
				  session.setAttribute("updateMsg", "Post Updated Successfully");
				  response.sendRedirect("admin.jsp");
			  }
			  else
			  {
				  System.out.println("Data not updated");
			  }
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		  
		  
	}

}