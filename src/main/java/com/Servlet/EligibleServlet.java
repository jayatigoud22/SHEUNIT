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
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.User.EligibleDetails;
import com.User.UserDetails;
import com.Db.DBConnect;
import com.DAO.*;

@WebServlet("/EligibleServlet")
public class EligibleServlet extends HttpServlet {
	static EligibleDetails es1;
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
          
		Connection conn = null;

		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		String nationality = request.getParameter("nationality");
		String marital_status = request.getParameter("marital_status");
		String bank = request.getParameter("bank");
		/* int eid = Integer.parseInt(request.getParameter("eid")); */

		EligibleDetails es = new EligibleDetails();
        
		es.setName(name);
		es.setAge(age);
		es.setNationality(nationality);
		es.setMaritalStatus(marital_status);
		es.setBank(bank);
		/* es.setId(eid); */
      
		EligibleDAO dao = new EligibleDAO(DBConnect.getConn());
		boolean f = dao.addEligibleUser(es);
	

		if (f) {
			HttpSession session=request.getSession();
			session.setAttribute("es",es);
			
			System.out.println("data insert successfully");
			response.sendRedirect("eligibleSchemes.jsp");
		} else {
			System.out.println("Data not inserted");
		}
		
		/*
		 * EligibleDAO dao = new EligibleDAO(DBConnect.getConn()); boolean
		 * f=dao.AddBusiness(uid,title,content,category,inputStream); boolean f1 =
		 * dao.addEligibleUser(eid, ename, age, nationality, marital_status,bank);
		 */

	}
}
