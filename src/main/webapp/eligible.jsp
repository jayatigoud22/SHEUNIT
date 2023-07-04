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
<title>Check Eligiblity</title>
</head>
<body>
	<%@include file="allcomponents/navbar.jsp"%>


<br><br>
	<div class="fluid-container">
        

		<div class="offset-md-3 col-md-6 offset-md-3">
			
			<div class="bio-content">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<form action="EligibleServlet" method="post">
                                      <h3 style="color: #5e35b1;">Check
				for which schemes you are eligible Your Post</h3>
								<div class="form-group">

									<%
									UserDetails us = (UserDetails) session.getAttribute("userD");
									if (us != null) {
									%>
									<input type="hidden" value="<%=us.getId()%>" name="eid">

									<%
									}
									%>



									<br> <label for="exampleInputEmail1">Enter Your
										Name </label> <input type="text" class="form-control"
										id="exampleInputEmail1" aria-describedby="emailHelp"
										name="name" required="required">
								</div>


								<br> <label for="exampleInputEmail1">Enter Your Age</label>
								<input type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="age" required="required"><br>
						</div>
						<div>
							<div class="form-check-inline">
								<label class="form-check-label">Nationality <input
									type="radio" class="form-check-input" name="nationality"
									value="Indian" required>Indian
								</label>
							</div>
							<div class="form-check-inline">
								<label class="form-check-label"> <input type="radio"
									class="form-check-input" name="nationality" value="Other">Other
								</label>
							</div><br><br>
							<div></div>
							<label>Marital Status:</label>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio"
									name="marital_status" id="inlineRadio1" value="Married">
								<label class="form-check-label" for="inlineRadio1">Married</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio"
									name="marital_status" id="inlineRadio2" value="Unmarried">
								<label class="form-check-label" for="inlineRadio2">Unmarried</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio"
									name="marital_status" id="inlineRadio2" value="Divorced">
								<label class="form-check-label" for="inlineRadio2">Divorced</label>
							</div><br><br>
						</div>
						<br>
						<br>
						<div>
							<label>Do you have bank account in any nationalised bank?</label>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="bank"
									id="inlineRadio1" value="yes"> <label
									class="form-check-label" for="inlineRadio1">yes</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="bank"
									id="inlineRadio2" value="no"> <label
									class="form-check-label" for="inlineRadio2">no</label>
							</div>
						</div>
<br>
<br>
						<br>


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
	
	<%@include file="allcomponents/footer.jsp"%>
</body>
</html>