<%@page import="com.User.UserDetails"%>
<%@include file="allcss.jsp"%>

<nav class="navbar  navbar-expand-lg navbar-dark bg-custom ">
	 <a class="navbar-brand" href="#"><img src="img/sheunit.jpg" alt="logo" style="width:100px;height:50px;"></a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mx-auto  ">
			<li class="nav-item active"><a class="nav-link" href="index.jsp">Home
					<span class="sr-only">(current)</span>
			</a></li>
			
			<li class="nav-item"><a class="nav-link" href="learn.jsp">Learn</a>
			</li>
			
			<li class="nav-item dropdown">
                 <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                 Enterprenurship
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="addBusiness.jsp">Add Business</a>
          <a class="dropdown-item" href="services.jsp">Programs and Schemes</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="donation.jsp">Donation and Scholarships</a>
          <a class="dropdown-item" href="eligible.jsp">Check Schemes that you're eligible for</a>
   
        </div>
      </li>

			<li class="nav-item"><a href="about.jsp" class="nav-link">About</a>
			</li>
			<li class="nav-item"><a href="contact.jsp" class="nav-link">Contact</a>
			</li>
		</ul>


		<%
		UserDetails user = (UserDetails) session.getAttribute("userD");

		if (user != null) {
		%>

		<a href="Register.jsp" class="btn btn-light my-2 my-sm-0 mr-2"
			data-toggle="modal" data-target="#exampleModal" type="submit" style="border-radius:30px;"><i
			class="fa fa-user-circle" aria-hidden="true" ></i><%=user.getName()%></a>
		<a href="LogoutServlet" class="btn btn-light my-2 my-sm-0 mr"
			type="submit" style="border-radius:30px;"> <i class="fa  fa-sign-out" aria-hidden="true"></i>Logout
		</a>
		<div class="modal fade" id="exampleModal" tabindex="-1"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>

					<div class="modal-body ">
						<div class="container text-center">
							<div class="user-avatar text-center">
								<i class="fa fa-user-circle fa-5x text-xs-center"
									style="color: black;"></i>
							</div>
							<h5></h5>
							<table class="table">
								<tbody>
									<tr>
										<th>User Id</th>
										<td><%=user.getId()%></td>
									</tr>
									<tr>
										<th>Full Name</th>
										<td><%=user.getName()%></td>
									</tr>
									<tr>
										<th>Email Id</th>
										<td><%=user.getEmail()%></td>
									</tr>
									
									<tr>
									<a href="addBusiness.jsp" class="btn btn-light text-white mt-3 hovering" style="background-color:teal;">Add My Business</a>
                                    <a href="showBusiness.jsp" class="btn btn-light mt-3 ml-2" style="color:teal;">My Posts</a>
									</tr>
								</tbody>

							</table>

							<div class="text-center">
								<button type="button" class="btn btn-primary"
									data-dismiss="modal">Close</button>
							</div>
						</div>
					</div>


				</div>
			</div>
		</div>
		<%
		} else {
		%>
		<a href="Register.jsp" class="btn btn-light my-2 my-sm-0 mr-2"
			type="submit" style="border-radius:30px;"><i class="fa fa-user-plus" aria-hidden="true"></i>Register</a>
		<a href="login.jsp" class="btn btn-light my-2 my-sm-0 mr"
			type="submit" style="border-radius:30px;"> <i class="fa  fa-sign-in" aria-hidden="true"></i>Login
		</a>

		<%
		}
		%>

	</div>




</nav>
