<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

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
<title>Add Your Business</title>
<%@include file="allcomponents/allcss.jsp"%>
<style type="text/css">

/*body {
	background: linear-gradient(90deg, #e8e8e8 50%, #3d009e 50%);
}*/
.portfolio {
	padding: 3%;
	text-align: center;
}

.heading {
	background: #fff;
	padding: 1%;
	text-align: left;
	box-shadow: 0px 0px 4px 0px #545b62;
}

.heading img {
	width: 10%;
}

.bio-info {
	padding: 5%;
	background: #fff;
	box-shadow: 0px 0px 4px 0px #b0b3b7;
}

.name {
	font-family: 'Charmonman', cursive;
	font-weight: 600;
}

.bio-image {
	text-align: center;
}

.bio-image img {
	border-radius: 50%;
	width: 100%;
	height: 100%;
}

.bio-content {
	text-align: left;
}

.bio-content p {
	font-weight: 600;
	font-size: 30px;
}

.card-horizontal {
	display: flex;
	flex: 1 1 auto;
}
</style>
</head>
<body>
	<%@include file="allcomponents/navbar.jsp"%>
	<div class="container my-5">
		<div class="row">
			<div class="col-lg-6 container">
				<img class="w-100" src="img/c10.gif" style="margin-top: 75px;" />
			</div>
			<div class="col-lg-6">
				<div class="p-5 mt-4">
					<h3 class="display-4" style="color: teal;">Business and Work
						Opportunities</h3>
					<p class="lead" style="text-align: justify">
						SheUnit is an online platform setup to remove barrier for women to
						get quality carrier guidance, upskilling and job opportunities to
						work from home and start their own online business.<br> The
						portal will help in building a bridge between user and their
						clients. Women will get independent and will get financial
						support. More reach to job opportunities will help students and
						freshers.
					</p>
					<br> <a href="about.jsp" class="btn btn-primary"
						style="color: white; font-size: 20px; background: teal; box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">Know
						More</a>
				</div>
			</div>
		</div>
	</div>
	<br>
	<br>
	<h1 class="font-weight-light text-center" style="color: teal;">Add
		Your Post</h1>
	<p class="font-weight-light text-center"
		style="color: #5e35b1; font-size: 26px;">You are free to Start
		your new Business, Promotes your Business or Create Job opportunities
		on SheUnit</p>
	<div class="container portfolio">
		<div class="row">
			<div class="col-md-12">
				<div class="heading">
					<img src="https://image.ibb.co/cbCMvA/logo.png" />
				</div>
			</div>
		</div>
		<div class="bio-info">
			<div class="row">
				<div class="col-md-6">
					<div class="row">
						<div class="col-md-12">
							<div class="bio-image">
								<img src="img/c11.gif" alt="image" />
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-6">
					<div class="bio-content">
						<div class="container">
							<div class="row">
								<div class="col-md-12">
									<form action="AddBusinessServlet" method="post" enctype="multipart/form-data">

										<div class="form-group">

											<%
											UserDetails us = (UserDetails) session.getAttribute("userD");
											if (us != null) {
											%>
											<input type="hidden" value="<%=us.getId()%>" name="uid">

											<%
											}
											%>

											<div class="form-check-inline">
												<label class="form-check-label">Category : <input
													type="radio" class="form-check-input" name="category"
													value="Business info" required>Business Information
												</label>
											</div>
											<div class="form-check-inline">
												<label class="form-check-label"> <input type="radio"
													class="form-check-input" name="category"
													value="Job Opportunity">Job opportunity
												</label>
											</div>
											<br>
											<div class="form-group">
											<br> <label for="exampleInputEmail1">Enter Your
												Title </label> <input type="text" class="form-control"
												id="exampleInputEmail1" aria-describedby="emailHelp"
												name="title" required="required">
										</div>
										<div class="form-group">
											<label for="exampleInputEmail1">Enter Your 
												Details</label>
											<textarea rows="8" cols="3" class="form-control"
												name="content" required="required"></textarea>
										</div>
										
										<div class="form-group">
											<br> <label for="exampleInputEmail1">Enter Contact Number:  </label>
											 <input type="text" class="form-control"
												id="exampleInputEmail1" aria-describedby="emailHelp"
												name="contact" required="required">
										</div>
										
										<div class="form-group">
											<label for="exampleInputEmail1">ADD IMAGE :</label> <input
												type="file" name="photoName">
										</div>

										<div class="container text-center">
											<button type="submit" class="btn btn-light mb-5"
												style="background: teal; color: white;">Add Details</button>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- Footer -->
	<%@include file="allcomponents/footer.jsp"%>
</body>
</html>