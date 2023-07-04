package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.PostDAO;
import com.Db.DBConnect;

@WebServlet("/readMoreServlet")
public class readMoreServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			Integer postid = Integer.parseInt(request.getParameter("postid"));
			String Title = request.getParameter("title");
			String Content = request.getParameter("content");
			String Category = request.getParameter("category");
			String PhotoName = request.getParameter("photoName");

			PostDAO dao = new PostDAO(DBConnect.getConn());
			boolean f = dao.ReadMore(postid,Title,Content,Category,PhotoName);

			
			 if(f) {   
			 response.sendRedirect("allPost.jsp");
			 }
			 else
				 
			 { System.out.println("error"); }
			 
		} catch (Exception e) {
			System.out.println(e);
		}
	}

}
