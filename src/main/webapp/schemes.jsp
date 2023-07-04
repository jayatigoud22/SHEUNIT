<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Schemes</title>
</head>
<body>
<%@include file="allcomponents/navbar.jsp"%>

	<h1 class="font-weight-light text-center" style="color: teal;">Add Schemes</h1>
	<
	<div class="container portfolio">
	

				<div class="col-md-6">
					<div class="bio-content">
						<div class="container">
							<div class="row">
								<div class="col-md-12">
									<form action="SchemeServlet" method="post" >

										<div class="form-group">

						<%-- 				<%
											UserDetails us = (UserDetails) session.getAttribute("userD");
											if (us != null) {
											%>
											<input type="hidden" value="<%=us.getId()%>" name="eid">

											<%
											}
											%>  --%>

										
											
											<br> <label for="exampleInputEmail1">Enter Scheme
											Name </label> <input type="text" class="form-control"
												id="exampleInputEmail1" aria-describedby="emailHelp"
												name="scheme_name" required="required">
										</div>
									
									     	<div class="form-group">
											<label for="exampleInputEmail1">Enter Scheme
												Details and Steps to get benefits</label>
											<textarea rows="15" cols="3" class="form-control"
												name="scheme_details" required="required"></textarea>
										</div>
									
									<div class="form-group">
									    	 <label for="exampleInputEmail1">Enter Minimum Eligible
											Age</label> <input type="text" class="form-control"
												id="exampleInputEmail1" aria-describedby="emailHelp"
												name="scheme_age" required="required">
										</div>
										
										<div class="form-group">
									    	 <label for="exampleInputEmail1">Enter Maximum Eligible
											Age</label> <input type="text" class="form-control"
												id="exampleInputEmail1" aria-describedby="emailHelp"
												name="max_age" required="required">
										</div>
										<div>
											<div class="form-check-inline">
												<label class="form-check-label">Enter Nationality <input
													type="radio" class="form-check-input" name="scheme_nationality"
													value="Indian" required>Indian
												</label>
											</div>
											<div class="form-check-inline">
												<label class="form-check-label"> <input type="radio"
													class="form-check-input" name="scheme_nationality"
													value="Other">Other
												</label>
											</div>
<div>										</div>
<label>Enter Eligible Marital Status:</label>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="scheme_ms" id="inlineRadio1" value="Married">
  <label class="form-check-label" for="inlineRadio1">Married</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="ms" id="inlineRadio2" value="Unmarried">
  <label class="form-check-label" for="inlineRadio2">Unmarried</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="ms" id="inlineRadio3" value="Divorced">
  <label class="form-check-label" for="inlineRadio2">Divorced</label>
</div>
</div>										
											<br><br>
<div>	
<label>Do eligible user need to have nationalised bank account?</label>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="scheme_bank" id="inlineRadio1" value="yes">
  <label class="form-check-label" for="inlineRadio1">yes</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="scheme_bank" id="inlineRadio2" value="no">
  <label class="form-check-label" for="inlineRadio2">no</label>
</div>
</div>

											
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
			</div>
		</div>
	</div>
<%@include file="allcomponents/footer.jsp"%>
</body>
</html>