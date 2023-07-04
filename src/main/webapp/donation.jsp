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
<title>Donation and Scholarships</title>
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
	width: 300px;
	height: 500px;
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
			<div class="col-lg-6">
				<img class="w-100" src="img/c19.gif" style="margin-top: 40px;" />
			</div>
			<div class="col-lg-6">
				<div class="p-5 mt-4">
					<h3 class="display-6" style="color: teal;">Donate-Support us</h3>
					<p class="lead" style="text-align: justify; font-size: 16px;">
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
	<h1 class="font-weight-light text-center" style="color: teal;">Get
		Involved</h1>
	<p class="font-weight-light text-center"
		style="color: #5e35b1; font-size: 26px;">Help us empower women by
		providing quality training and products</p>
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
								<img src="img/pay.jpg" alt="image" />
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-6">
					<div class="bio-content">
						<div class="container">
							<div class="row">
								<div class="col-md-12">
									<form action="#" name="submit-to-google-sheet" method="post">

										<div class="form-group">

											<label for="exampleInputEmail1">Enter Your Name </label> <input
												type="text" class="form-control" id="exampleInputEmail1"
												aria-describedby="emailHelp" name="Name"
												required="required">
										</div>
										<div class="form-group">

											<label for="exampleInputEmail1">Enter Your Email </label> <input
												type="text" class="form-control" id="exampleInputEmail1"
												aria-describedby="emailHelp" name="Email"
												required="required">
										</div>
										<div class="form-group">

											<label for="exampleInputEmail1">Enter Your Phone No. </label> <input
												type="text" class="form-control" id="exampleInputEmail1"
												aria-describedby="emailHelp" name="Phone"
												required="required">
										</div>
										<div class="form-group">

											<label for="exampleInputEmail1">Enter Amount </label> <input
												type="text" class="form-control" id="exampleInputEmail1"
												aria-describedby="emailHelp" name="Amount"
												required="required">
										</div>
										<div class="form-group">
											<label for="exampleInputEmail1">Enter Your Message
												</label>
											<textarea rows="8" cols="3" class="form-control"
												name="Message" required="required"></textarea>
										</div>
										<div class="form-group">
											<label for="exampleInputEmail1">ADD SCREENSHOT OF PAYMENT:</label> <input
												type="file" name="photoName">
										</div>
										

										<div class="container text-center">
											<button type="submit" class="btn btn-light mb-5"
												style="background: teal; color: white;">Donate</button>
										</div>
									</form>
									<span id="msg"></span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<br><br>
	<h1 class="font-weight-light text-center" style="color: teal;">Get
		Scholarship</h1>
	<p class="font-weight-light text-center"
		style="color: #5e35b1; font-size: 26px;">Get Help to empower yourself by
		getting quality training and Scholarship Opportunities</p><br><br>
 <div class="card mb-3">
			<img class="card-img-top" src="img/c2.gif" alt="Card image cap"><br><br>
			<div class="card-body">
				<h5 class="card-title">Latest Government Scholarships Programmes</h5><br>
				<p class="card-text">This is a wider card with supporting text
					below as a natural lead-in to additional content. This content is a
					little bit longer.</p>
					<br> <a href="https://www.buddy4study.com/article/scholarships-for-indian-girls-and-women" class="btn btn-primary"
						style="color: white; font-size: 20px; background: teal; box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">Get Details
						</a>
			</div>
		</div>
	</div>

	<!-- Footer -->
	<%@include file="allcomponents/footer.jsp"%>
	<script type="text/javascript">
        const scriptURL = 'https://script.google.com/macros/s/AKfycbwMDXbz3g1lDCI6cZH3S85i7SVJRJmupv08-m9sm00aVWnI4t6uwCv5D7fHNEyFAWaK/exec'
        const form = document.forms['submit-to-google-sheet']
        const msg = document.getElementById("msg")
        form.addEventListener('submit', e => {
          e.preventDefault()
          fetch(scriptURL, { method: 'POST', body: new FormData(form)})
            .then(response => {
              msg.innerHTML = "Thank you for your Support :)"
              setTimeout(function() {
                msg.innerHTML = ""
              },5000)
              from.reset();  
            })
            .catch(error => console.error('Error!', error.message))
        })
      </script>
</body>
</html>