package com.Servlet;
import java.io.*;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Db.DBConnect;
import com.User.UserDetails;
import com.DAO.UserDAO;
@WebServlet("/UserServlet")

public class UserServlet extends HttpServlet{
 public void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException
   	{
	 String name=request.getParameter("fname");
	 String email=request.getParameter("uemail");
	 String password=request.getParameter("upassword");
	 
	 UserDetails us=new UserDetails();
	 us.setName(name);
	 us.setEmail(email);
	 us.setPassword(password);
	 
	 UserDAO dao=new UserDAO(DBConnect.getConn());
	 boolean f=dao.addUser(us);
	 boolean f1=dao.addUserLogin(us);
	 HttpSession session;
	 
	 if(f)
	 {
	session=request.getSession();
	session.setAttribute("reg-success","Registration Success!");
	response.sendRedirect("Register.jsp");
	 }
	 else {
		session=request.getSession();
		session.setAttribute("failed-msg","Something went wrong on server");
		response.sendRedirect("Register.jsp");
	 }
	 
 }
}
