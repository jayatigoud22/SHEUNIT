<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="com.Servlet.EligibleServlet"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page import="java.util.*"%>
<%@page import="javax.servlet.*"%>
<%@page import="com.DAO.EligibleDAO"%>
<%@page import="com.Db.*"%>
<%@page import="com.User.EligibleDetails"%>
<%@page import="com.User.SchemeDetails"%>

<%
EligibleDetails user3 = (EligibleDetails) session.getAttribute("es");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Eligible Schemes</title>
<%@include file="allcomponents/allcss.jsp"%>
</head>
<body>
	<%@include file="allcomponents/navbar.jsp"%>
	

<%try {
	/* out.println(user3.getAge());
	out.println(user3.getName());
	out.println(user3.getNationality()); */
	/* String name = request.getParameter("user3.getName()");
	String age = request.getParameter("user3.getAge()");
	String nationality = request.getParameter("user3.getNationality()");
	String bank = request.getParameter("user3.getBank()");
	String marital_status = request.getParameter("user3.getMaritalStatus()"); */
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wep", "root", "root");
	Statement st = con.createStatement();
	/* String q = "select * from schemes where scheme_age=user3.getAge() and scheme_nationality=user3.getNationality() and scheme_bank=user3.getBank() and scheme_ms=user3.getMaritalStatus";
	 */
	 int age=user3.getAge();
	 String nationality=user3.getNationality();
	 String marital_status=user3.getMaritalStatus();
	 String bank=user3.getBank();
	 
	 String q="select * from schemes where scheme_nationality='"+nationality+"' and scheme_age<='"+age+"'and max_age>='"+age+"' and scheme_bank='"+bank+"' and ms='"+marital_status+"'" ;
	 ResultSet rs = st.executeQuery(q);
	                  
	 while(rs.next())
	 {
		 {%>
		 
		 <div class="container-fluid text-center">
	<br>
	<h2 style="color:teal;">You're Eligible for:</h2>
	</div><br><br>
 <div class="offset-md-3 col-md-6 offset-md-3">
		   <div class="row">
		   <br>
		   <ul>
			<li><h3 style="color:#5e35b1;"><%out.println(rs.getString(1));%></h3></li><br>
			 <p style="text-align:justify;"><%out.println(rs.getString(2));%></p> <br><br>
			 </ul>
			 <br>
		 </div>
		 </div>
			 
		 
	<%	 }
	 }

} catch (Exception e) {
	out.println(e);
}

%>



	<%@include file="allcomponents/footer.jsp"%>
</body>
</html>