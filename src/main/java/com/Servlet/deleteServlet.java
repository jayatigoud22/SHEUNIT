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
@WebServlet("/deleteServlet")
public class deleteServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	Integer jobid=Integer.parseInt(request.getParameter("job_id"));
	
	PostDAO dao=new PostDAO(DBConnect.getConn());
	
	boolean f=dao.DeletePost(jobid);
	HttpSession session=null;
	
	if(f)
	{
		session=request.getSession();
		session.setAttribute("updateMsg", "Post Deleted Successfully!");
		response.sendRedirect("showBusiness.jsp");
	}
	
	else {
		session=request.getSession();
		session.setAttribute("wrongMsg","Something went wrong");
		response.sendRedirect("showBusiness.jsp");
	}
	}

}
