<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="com.DAO.PostDAO"%>
<%@page import="com.Db.*"%>
<%@page import="com.User.Post"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
UserDetails user4 = (UserDetails) session.getAttribute("userD");

if (user4 == null) {
	response.sendRedirect("login.jsp");
	session.setAttribute("Login-error", "Please Login!");
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show Business</title>
<style type="text/css">
.bg-img {
	background: url("img/c12.gif");
	width: 100%;
	height: 700px;
	background-repeat: no-repeat;
	background-size: 100% 100%;
}

.card-horizontal {
	display: flex;
	flex: 1 1 auto;
}
.card{
height:450px;
}
</style>
<%@include file="allcomponents/allcss.jsp"%>
</head>
<body>
	<%@include file="allcomponents/navbar.jsp"%>

	<!-- BACKGROUND IMAGE -->
	<div class="container-fluid bg-img">
		<div class=" image1-text text-center "></div>
	</div>
	<br>

	<div class="container my-5">
		<div class="row">
			<div class="col-lg-6">
				<img class="w-100" src="img/c14.gif" style="margin-top: 120px;" />
			</div>
			<div class="col-lg-6">
				<div class="p-5 mt-4">
					<h5 class="display-4" style="color: teal;">Business and Work
						Opportunities</h5>
					<p class="lead" style="text-align: justify; font-size: 16px;]">
						SheUnit is an online platform setup to remove barrier for women to
						get quality carrier guidance, upskilling and job opportunities to
						work from home and start their own online business.<br> The
						portal will help in building a bridge between user and their
						clients. Women will get independent and will get financial
						support. More reach to job opportunities will help students and
						freshers.
					</p>
					<a href="addBusiness.jsp"
						class="btn btn-light text-white mt-5 hovering"
						style="background-color: teal; font-size: 24px; box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">Add
						My Business</a> <a href="showBusiness.jsp"
						class="btn btn-light mt-5 ml-2"
						style="color: teal; font-size: 24px; box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">My
						Posts</a>
				</div>
			</div>
		</div>
	</div>
	<hr>

	<div class="container">
		<h3 class="text-center mt-5">EXPLORE!</h3>


		<div class="container-fluid">
			<div class="row">
				<div class="col-12 mt-3">
					<%
					if (user4 != null) {
						PostDAO ob = new PostDAO(DBConnect.getConn());
						List<Post> post = ob.allPostData();
						for (Post allpo : post) {
					%>
					<div class="card">
						<div class="card-horizontal">
							<div class="img-square-wrapper">
								<img src="photos1/<%=allpo.getPhotoName()%>"
									alt="Card image cap" style="height: 400px; width: 450px;padding:30px;border-radius:30px;">
							</div>
							<div class="card-body">
								<h3 class="text-center"><%=allpo.getCategory()%></h3><br>
								<h4 class="card-title"><%=allpo.getTitle()%></h4><br>
								<p class="card-text"><%=allpo.getContent()%></p><br>
								<p><%=allpo.getContact()%></p><br>
								<a href="#"><button class="btn-open" type="submit"
									style="background-color: teal; color: white; border-radius: 2px; font-size: 16px; box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">Open
									Post</button>
                                </a>
							</div>
						</div>
						<div class="card-footer">
							<small class="text-muted">Last updated 3 mins ago</small>
						</div>
					</div>
					<br><br>
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