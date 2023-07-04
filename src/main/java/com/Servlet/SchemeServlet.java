package com.Servlet;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.EligibleDAO;
import com.DAO.SchemeDAO;
import com.Db.DBConnect;
import com.User.EligibleDetails;
import com.User.SchemeDetails;


@WebServlet("/SchemeServlet")
public class SchemeServlet extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Connection conn = null;

		String scheme_name = request.getParameter("scheme_name");
		String scheme_details = request.getParameter("scheme_details");
		int scheme_age = Integer.parseInt(request.getParameter("scheme_age"));
		int max_age = Integer.parseInt(request.getParameter("max_age"));
		String scheme_nationality = request.getParameter("scheme_nationality");
		
		String scheme_bank = request.getParameter("scheme_bank");
		String ms = request.getParameter("ms");
		/* int eid = Integer.parseInt(request.getParameter("eid")); */

		SchemeDetails es = new SchemeDetails();

		es.setName(scheme_name);
		es.setDetails(scheme_details);
		es.setAge(scheme_age);
		es.setMaxAge(max_age);
		es.setNationality(scheme_nationality);
		es.setBank(scheme_bank);
		es.setMaritalStatus(ms);
		
      
		SchemeDAO dao = new SchemeDAO(DBConnect.getConn());
		boolean f = dao.addSchemes(es);

		if (f) {
			/*
			 * HttpSession session=request.getSession(); session.setAttribute("es1",es1);
			 */
			System.out.println("data insert successfully");
			response.sendRedirect("allSchemes.jsp");
		} else {
			System.out.println("Data not inserted");
		}
		
		

	}

	
	}


