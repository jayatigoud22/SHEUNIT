<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="com.DAO.PostDAO"%>
<%@page import="com.Db.*"%>
<%@page import="com.User.Post"%>

<%
UserDetails user1 = (UserDetails) session.getAttribute("userD");

if (user1 == null) {
	response.sendRedirect("login.jsp");
	session.setAttribute("Login-error", "Please Login!");
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="allcomponents/allcss.jsp"%>
</head>
<body>
	<%
	Integer jobid = Integer.parseInt(request.getParameter("job_id"));
	PostDAO post = new PostDAO(DBConnect.getConn());
	Post p = post.adminDataById(jobid);
	%>

	<%@include file="allcomponents/navbar.jsp"%>

	<h2 class="text-center mt-5">Edit Your Post!</h2>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
			
				<form action="JobEditServlet1" method="post">

					<input type="text" value="<%=jobid%>" name="jobid">
					<div class="form-group">
						<label for="exampleInputEmail1">Edit Your Title</label> <input
							type="text" class="form-control" id="exampleInputEmail1"
							aria-describedby="emailHelp" name="title" required="required"
							value="<%=p.getTitle() %>">
					</div>
					
					<div class="form-group">
						<label for="exampleInputEmail1">Edit Your Details</label>
						<textarea rows="8" cols="" class="form-control" name="content"
							required="required" ><%=p.getContent()%></textarea>
					</div>

                 
					
					<div class="container text-center">
						<button type="submit" class="btn btn-light mb-5">Done</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- Footer -->
	<%@include file="allcomponents/footer.jsp"%>
</body>
</html>