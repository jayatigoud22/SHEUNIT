<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page import="java.util.*"%>
<%@page import="javax.servlet.*"%>
<%@page import="com.DAO.PostDAO"%>
<%@page import="com.Db.*"%>
<%@page import="com.User.Post"%>
<%@page import="java.io.InputStream"%>
<%@page import="com.Servlet.AddBusinessServlet"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
UserDetails user3 = (UserDetails) session.getAttribute("userD");

if (user3 == null) {
	response.sendRedirect("login.jsp");
	session.setAttribute("Login-error", "Please Login!");
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show Business</title>
<%@include file="allcomponents/allcss.jsp"%>

<style type="text/css">
.bg-img {
	background: url("img/c13.gif");
	width: 100%;
	height: 600px;
	background-repeat: no-repeat;
	background-size: 100% 100%;
}

.card-horizontal {
	display: flex;
	flex: 1 1 auto;
}
</style>
</head>
<body>
	<%@include file="allcomponents/navbar.jsp"%>
	<!-- BACKGROUND IMAGE -->
	<div class="container-fluid bg-img">
		<div class=" image1-text text-center "></div>
	</div>

	<%
	String updateMsg = (String) session.getAttribute("updateMsg");
	if (updateMsg != null) {
	%>
	<div class="alet alert-success" role="alert"><%=updateMsg%></div>

	<%
	session.removeAttribute("updateMsg");
	}
	%>

	<%
	String wrongMsg = (String) session.getAttribute("wrongMsg");
	if (wrongMsg != null) {
	%>
	<div class="alet alert-success" role="alert"><%=wrongMsg%></div>

	<%
	session.removeAttribute("wrongMsgg");
	}
	%>

	<div class="fluid-container">
		
        <div class="container">
        <h1 class="text-center mt-5" style="color: #5e35b1;">My Posts</h1>
		<a href="allPost.jsp" class="btn btn-light text-white mt-5 hovering"
			style="background-color: teal; font-size: 24px; box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">Back
			to Previous</a> <a href="addBusiness.jsp" class="btn btn-light mt-5 ml-2"
			style="color: teal; font-size: 24px; box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">Add
			My Post</a>
		<div class="row">
			<div class="col-12 mt-3">
				<%
				if (user3 != null) {
					PostDAO ob = new PostDAO(DBConnect.getConn());
					List<Post> post = ob.getData(user3.getId());
					for (Post po : post) {
				%>

				<div class="card">
					<div class="card-horizontal">
						<div class="img-square-wrapper">
							<img src="photos1/<%=po.getPhotoName()%>" alt="Card image cap"
								style="height: 200px; width: 300px;">
						</div>
						<div class="card-body">
							<h6 class="text-center"><%=po.getCategory()%></h6>
							<h4 class="card-title"><%=po.getTitle()%></h4>
							<p class="card-text"><%=po.getContent()%></p>
								<p><%=po.getContact()%></p>
							<a href="edit.jsp?job_id=<%=po.getId()%>"
								class="btn btn-primary text-white">Edit</a> <a
								href="deleteServlet?job_id=<%=po.getId()%>"
								class="btn btn-danger text-white">Delete</a>
						</div>
					</div>
					<div class="card-footer">
						<small class="text-muted">Last updated 3 mins ago</small>
						<%-- <p><b class="text-success">Posted By: <%=user3.getName() %> </b> </p> --%>
					</div>
				</div>
				
				<%
				}
				}
				%>
				</div>
			</div>
		</div>
</div>
	<br>
	<%@include file="allcomponents/footer.jsp"%>

</body>
</html>