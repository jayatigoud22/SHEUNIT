<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="com.DAO.PostDAO"%>
<%@page import="com.Db.*"%>
<%@page import="com.User.Post"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
UserDetails user4 = (UserDetails) session.getAttribute("userD");

if (user4== null) {
	response.sendRedirect("login.jsp");
	session.setAttribute("Login-error", "Please Login!");
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Read More</title>
<%@include file="allcomponents/allcss.jsp"%>
</head>
<body>
	<%@include file="allcomponents/navbar.jsp"%>


<%
	Integer postid = Integer.parseInt(request.getParameter("post"));
	PostDAO post = new PostDAO(DBConnect.getConn());
	Post allpo = post.singlePostDataById(postid);
	%>

				
				<div class="card mt-5 mb-5 ">
					<div class="card-body">
					   
					    <h6 class="text-center" style="color:gray;"><%=allpo.getCategory()%></h6>
						<h5 class="card-title"><%=allpo.getTitle()%></h5>
						<p class="card-text"><%=allpo.getContent() %></p>
						<div class="container text-center">
						<%-- <img src="allpost.jsp?id=<%=po.getId()%>" alt="no photo added"> --%>
						<img src="photos1/<%=allpo.getPhotoName()%>"style="width: 200px; height:200px;" alt="no photo added">
						</div>
						<%-- <a href="readMoreServlet?postid=<%=allpo.getId() %>" style="color:green;" >Read More</a>
						 --%>
						<%--  <p ><%=allpo.getPdate() %></p> --%>
					</div>
					<%-- <p><b class="text-success">Posted By: <%=allpo.getName() %> </b> </p> --%>
				</div>
                     
				