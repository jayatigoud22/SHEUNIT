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
import com.DAO.UserDAO;

@WebServlet("/deleteServlet2")
public class deleteServlet2 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	Integer uid=Integer.parseInt(request.getParameter("uid"));
	
	UserDAO dao=new UserDAO(DBConnect.getConn());
	
	
	boolean f=dao.DeleteUser(uid);
	HttpSession session=null;
	
	if(f)
	{
		session=request.getSession();
		session.setAttribute("updateMsg", "User Deleted Successfully!");
		response.sendRedirect("alluser.jsp");
	}
	
	else {
		session=request.getSession();
		session.setAttribute("wrongMsg","Something went wrong");
		response.sendRedirect("alluser.jsp");
	}
	}

}
