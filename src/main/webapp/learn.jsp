<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	   <%
    UserDetails user1=(UserDetails)session.getAttribute("userD");
    
    if(user1==null)
    {
    	response.sendRedirect("login.jsp");
       session.setAttribute("Login-error","Please Login!");
    }
    %>
	
<!DOCTYPE html>
<html>
<head>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style type="text/css">
.bg-img {
	background: url("img/c6.gif");
	width: 100%;
	height: 800px;
	background-repeat: no-repeat;
	background-size: 100% 100%;
}

.how-section1 {
	margin-top: -15%;
	padding: 10%;
}

.how-section1 h4 {
	color: #ffa500;
	font-weight: bold;
	font-size: 30px;
}

.how-section1 .subheading {
	color: #3931af;
	font-size: 20px;
}

.how-section1 .row {
	margin-top: 10%;
}

.how-img {
	text-align: center;
}

.how-img img {
	width: 50%;
}

.baseBlock {
	margin: 0px 0px 35px 0px;
	padding: 0 0 15px 0px;
	border-radius: 5px;
	overflow: hidden;
	min-height: 390px;
	background: #fff;
	-moz-transition: all 0.3s cubic-bezier(0.165, 0.84, 0.44, 1);
	-o-transition: all 0.3s cubic-bezier(0.165, 0.84, 0.44, 1);
	transition: all 0.3s cubic-bezier(0.165, 0.84, 0.44, 1);
}

.baseBlock:hover {
	-webkit-transform: translate(0, -8px);
	-moz-transform: translate(0, -8px);
	-ms-transform: translate(0, -8px);
	-o-transform: translate(0, -8px);
	transform: translate(0, -8px);
	box-shadow: 0 40px 40px rgba(0, 0, 0, 0.2);
}
</style>

<meta charset="ISO-8859-1">
<title>Learn</title>
<%@include file="allcomponents/allcss.jsp"%>
</head>
<body>
	<%@include file="allcomponents/navbar.jsp"%>

	<!-- BACKGROUND IMAGE -->
	<div class="container-fluid bg-img">
		<div class=" image1-text text-center ">

		</div>
	</div>
	<br>
	<br>

	<!------ Include the above in your HEAD tag ---------->

	<div class="section-header">
		<h1 class="font-weight-light-bold"
			style="color: #5e35b1; text-align: center;">START YOUR JOURNEY</h1>
	</div>
	<br>

	<div class="how-section1">
		<div class="row">
			<div class="col-md-6 how-img">
				<img
					src="https://image.ibb.co/dDW27U/Work_Section2_freelance_img1.png"
					class="rounded-circle img-fluid" alt="" />
			</div>
			<div class="col-md-6">
				<h4>Find Your Interest</h4>
				<h4 class="subheading">10 steps to choosing a course you are
					truly interested in.</h4>
				<p class="text-muted">Are you still struggling to decide whether
					to further your studies or continue working? This guide aims to
					help you identify whether studying is the right step you should
					take in order to achieve your objectives. Furthermore, by the end
					of these 10 steps, you should be able to decide on 2-3 courses that
					you would like to study eventually.</p>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6">
				<h4>Get hired quickly</h4>
				<h4 class="subheading">SheUnit makes it easy to connect with
					clients and begin doing great work.</h4>
				<p class="text-muted">Freedom to learn course of your Interests.
					On SheUnit, you run your own business and choose your own clients
					and projects. Just Submit your profile and we’ll highlight ideal
					jobs. Also search projects, and respond to client invitations. Wide
					variety and high pay. Clients are now posting jobs in hundreds of
					skill categories, paying top price for great work. More and more
					success. The greater the success you have on projects, the more
					likely you are to get hired by clients that use SheUnit.</p>
			</div>
			<div class="col-md-6 how-img">
				<img
					src="https://image.ibb.co/cHgKnU/Work_Section2_freelance_img2.png"
					class="rounded-circle img-fluid" alt="" />
			</div>
		</div>
		<div class="row">
			<div class="col-md-6 how-img">
				<img
					src="https://image.ibb.co/ctSLu9/Work_Section2_freelance_img3.png"
					class="rounded-circle img-fluid" alt="" />
			</div>
			<div class="col-md-6">
				<h4>Work efficiently, effectively.</h4>
				<h4 class="subheading">With SheUnit, you have the freedom and
					flexibility to control when, where, and how you work. Each project
					includes an online workspace shared by you and your client,
					allowing you to:</h4>
				<p class="text-muted">Send and receive files. Deliver digital
					assets in a secure environment. Share feedback in real time. Use
					GetLance Messages to communicate via text, chat, or video. Use our
					mobile app. Many features can be accessed on your mobile phone when
					on the go.</p>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6">
				<h4>Get paid on time</h4>
				<h4 class="subheading">All projects include She unit Payment
					Protection helping ensure that you get paid for all work
					successfully completed through the freelancing website.</h4>
				<p class="text-muted">All invoices and payments happen through
					SheUnit. Count on a simple and streamlined process. Hourly and
					fixed-price projects. For hourly work, submit timesheets through
					Sheunit. For fixed-price jobs, set milestones and funds are
					released via Sheunit escrow features. Multiple payment options.
					Choose a payment method that works best for you, from direct
					deposit or PayPal to wire transfer and more.</p>
			</div>
			<div class="col-md-6 how-img">
				<img
					src="https://image.ibb.co/gQ9iE9/Work_Section2_freelance_img4.png"
					class="rounded-circle img-fluid" alt="" />
			</div>
		</div>
	</div>
	<hr><br>

	<div class="section-header">
		<h2 class="font-weight-light-bold"
			style="color: #5e35b1; text-align: center;">EXPLORE YOUR
			INTEREST</h2>
	</div>
	<br>
	<br>

	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<div class="card baseBlock">
					<img class="card-img-top" data-src="holder.js/100px180/"
						alt="100%x180" style="height: 180px; width: 100%; display: block;"
						src="img/28.jpg" data-holder-rendered="true">
					<div class="card-body">
						<h4 class="card-title" style="color: #5e35b1;">Interior
							Designing</h4>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a
							href="https://www.youtube.com/playlist?list=PLiNDwSBKmZK-Q4e42gT8jTvhmE_POSSZx"
							target="_blank" class="btn btn-primary" style="background: teal;">GET
							STARTED</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card baseBlock">
					<img class="card-img-top" data-src="holder.js/100px180/"
						alt="100%x180" style="height: 180px; width: 100%; display: block;"
						src="img/5.jpg" data-holder-rendered="true">
					<div class="card-body">
						<h4 class="card-title" style="color: #5e35b1;">Wall Painting
							Tutorials</h4>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="https://www.youtube.com/watch?v=PYV6lx8rgRg" target="_blank"
							class="btn btn-primary" style="background: teal;">GET STARTED</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card baseBlock">
					<img class="card-img-top" data-src="holder.js/100px180/"
						alt="100%x180" style="height: 180px; width: 100%; display: block;"
						src="img/9.jpg" data-holder-rendered="true">
					<div class="card-body">
						<h4 class="card-title" style="color: #5e35b1;">Painting for
							Beginners</h4>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a
							href="https://www.youtube.com/playlist?list=PLS0YZ0hpio5Mai0JKKffaBXBEg4S_6xQk" target="_blank"
							class="btn btn-primary" style="background: teal;">GET STARTED</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card baseBlock">
					<img class="card-img-top" data-src="holder.js/100px180/"
						alt="100%x180" style="height: 180px; width: 100%; display: block;"
						src="img/29.jpg" data-holder-rendered="true">
					<div class="card-body">
						<h4 class="card-title" style="color: #5e35b1;">Sketching
							Tutorials</h4>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a
							href="https://www.youtube.com/playlist?list=PLnWaXZaVfDBf0Ri4XK004ClrlEyVY_VE2" target="_blank"
							class="btn btn-primary" style="background: teal;">GET STARTED</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card baseBlock">
					<img class="card-img-top" data-src="holder.js/100px180/"
						alt="100%x180" style="height: 180px; width: 100%; display: block;"
						src="img/7.jpg" data-holder-rendered="true">
					<div class="card-body">
						<h4 class="card-title" style="color: #5e35b1;">Pottery
							Tutorials</h4>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a
							href="https://www.youtube.com/playlist?list=PLbC14Txh1KZdaX5DkYYX8BBF3j9Bowhce" target="_blank"
							class="btn btn-primary" style="background: teal;">GET STARTED</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card baseBlock">
					<img class="card-img-top" data-src="holder.js/100px180/"
						alt="100%x180" style="height: 180px; width: 100%; display: block;"
						src="img/12.jpg" data-holder-rendered="true">
					<div class="card-body">
						<h4 class="card-title" style="color: #5e35b1;">Handicrafts and
							Decorations</h4>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a
							href="https://www.youtube.com/playlist?list=PLcMqdjxWoOlLtlMOq8F4Xyv8YzvMmyz_V" target="_blank"
							class="btn btn-primary" style="background: teal;">GET STARTED</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br>
	<br>
	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<div class="card baseBlock">
					<img class="card-img-top" data-src="holder.js/100px180/"
						alt="100%x180" style="height: 180px; width: 100%; display: block;"
						src="img/10.webp" data-holder-rendered="true">
					<div class="card-body">
						<h4 class="card-title" style="color: #5e35b1;">Food and Stuff</h4>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a
							href="https://www.youtube.com/playlist?list=PLpfv1AIjenVMmT7iRx6Nwu6uG6A9gSD0j"
							target="_blank" class="btn btn-primary" style="background: teal;">GET
							STARTED</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card baseBlock">
					<img class="card-img-top" data-src="holder.js/100px180/"
						alt="100%x180" style="height: 180px; width: 100%; display: block;"
						src="img/11.webp" data-holder-rendered="true">
					<div class="card-body">
						<h4 class="card-title" style="color: #5e35b1;">Fashion
							Designing</h4>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a
							href="https://www.youtube.com/playlist?list=PLzVBs115vStIGQAR-LL5a3I8hHtPk40rp" target="_blank"
							class="btn btn-primary" style="background: teal;">GET STARTED</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card baseBlock">
					<img class="card-img-top" data-src="holder.js/100px180/"
						alt="100%x180" style="height: 180px; width: 100%; display: block;"
						src="img/13.webp" data-holder-rendered="true">
					<div class="card-body">
						<h4 class="card-title" style="color: #5e35b1;">Photography
							Tutorials</h4>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a
							href="https://www.youtube.com/playlist?list=PLG3eOzJfQr2e2OD4W0GmcSpO5oZ-c5FIu" target="_blank"
							class="btn btn-primary" style="background: teal;">GET STARTED</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card baseBlock">
					<img class="card-img-top" data-src="holder.js/100px180/"
						alt="100%x180" style="height: 180px; width: 100%; display: block;"
						src="img/30.jpg" data-holder-rendered="true">
					<div class="card-body">
						<h4 class="card-title" style="color: #5e35b1;">Tattoo Making
							Tutorials</h4>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a
							href="https://www.youtube.com/playlist?list=PLBWQzaiHYMIx7GbVL7_K69mFlxyBV28Al" target="_blank"
							class="btn btn-primary" style="background: teal;">GET STARTED</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card baseBlock">
					<img class="card-img-top" data-src="holder.js/100px180/"
						alt="100%x180" style="height: 180px; width: 100%; display: block;"
						src="img/31.jpg" data-holder-rendered="true">
					<div class="card-body">
						<h4 class="card-title" style="color: #5e35b1;">Henna
							Tutorials</h4>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a
							href="https://www.youtube.com/playlist?list=PLRPAhuGD0IPlQBhHo82G047vDjteJ5EDk" target="_blank"
							class="btn btn-primary" style="background: teal;">GET STARTED</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card baseBlock">
					<img class="card-img-top" data-src="holder.js/100px180/"
						alt="100%x180" style="height: 180px; width: 100%; display: block;"
						src="img/18.jpg" data-holder-rendered="true">
					<div class="card-body">
						<h4 class="card-title" style="color: #5e35b1;">Story Telling
							Tutorials</h4>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a
							href="https://www.youtube.com/playlist?list=PLct0eVSyutQeKcLNBpQFGfi1d_LRjNR6O" target="_blank"
							class="btn btn-primary" style="background: teal;">GET STARTED</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br>
	<br>
	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<div class="card baseBlock">
					<img class="card-img-top" data-src="holder.js/100px180/"
						alt="100%x180" style="height: 180px; width: 100%; display: block;"
						src="img/14.jpg" data-holder-rendered="true">
					<div class="card-body">
						<h4 class="card-title" style="color: #5e35b1;">Video and Photo
							Editing</h4>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a
							href="youtube.com/playlist?list=PLjVLYmrlmjGcvfG7QnjMFCho1AXaoumLf"
							target="_blank" class="btn btn-primary" style="background: teal;">GET
							STARTED</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card baseBlock">
					<img class="card-img-top" data-src="holder.js/100px180/"
						alt="100%x180" style="height: 180px; width: 100%; display: block;"
						src="img/15.jpg" data-holder-rendered="true">
					<div class="card-body">
						<h4 class="card-title" style="color: #5e35b1;">Graphics
							Designing</h4>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a
							href="https://www.youtube.com/playlist?list=PLdWcYbFFqZr2vNb2XC4LmsbbjneZnbSwo" target="_blank"
							class="btn btn-primary" style="background: teal;">GET STARTED</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card baseBlock">
					<img class="card-img-top" data-src="holder.js/100px180/"
						alt="100%x180" style="height: 180px; width: 100%; display: block;"
						src="img/6.webp" data-holder-rendered="true">
					<div class="card-body">
						<h4 class="card-title" style="color: #5e35b1;">Animations and
							Illustrations</h4>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a
							href="https://www.youtube.com/playlist?list=PLfFk8y2fd3FjeE_CrFASNvDLBp3yF1Hwi" target="_blank"
							class="btn btn-primary" style="background: teal;">GET STARTED</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card baseBlock">
					<img class="card-img-top" data-src="holder.js/100px180/"
						alt="100%x180" style="height: 180px; width: 100%; display: block;"
						src="img/16.webp" data-holder-rendered="true">
					<div class="card-body">
						<h4 class="card-title" style="color: #5e35b1;">User
							Experience</h4>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a
							href="https://www.youtube.com/playlist?list=PLVlQHNRLflP_5_vCknMsxLS-mTJgq1QzH" target="_blank"
							class="btn btn-primary" style="background: teal;">GET STARTED</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card baseBlock">
					<img class="card-img-top" data-src="holder.js/100px180/"
						alt="100%x180" style="height: 180px; width: 100%; display: block;"
						src="img/4.jpg" data-holder-rendered="true">
					<div class="card-body">
						<h4 class="card-title" style="color: #5e35b1;">Grammer and
							Writing</h4>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a
							href="https://www.youtube.com/playlist?list=PL4UroTkVZKTxj4fKIXiDU2F13AYm91kWl" target="_blank"
							class="btn btn-primary" style="background: teal;">GET STARTED</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card baseBlock">
					<img class="card-img-top" data-src="holder.js/100px180/"
						alt="100%x180" style="height: 180px; width: 100%; display: block;"
						src="img/24.jpg" data-holder-rendered="true">
					<div class="card-body">
						<h4 class="card-title" style="color: #5e35b1;">Complete
							Microsoft office</h4>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a
							href="https://www.youtube.com/playlist?list=PLmkaw6oRnRv8UYcRLpxon4rPQm_pud8nd" target="_blank"
							class="btn btn-primary" style="background: teal;">GET STARTED</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br>
	<br>
    <hr>
	<div class="section-header">
		<h1 class="font-weight-light" style="color: teal; text-align: center;">SPECIAL
			COURSES FOR STUDENTS</h1>
	</div>
	<br>
	<br>
	<div class="container">
		<div class="row">
			<div class="col-12">
				<div id="carouselExampleControls" class="carousel slide"
					data-ride="carousel">
					<div class="carousel-inner">
						<div class="carousel-item active">

							<div class="row">
								<div class="col-sm-6">
									<div class="card my-2">
										<div class="card-body">
											<img class="card-img-top" data-src="holder.js/100px180/"
												alt="100%x180"
												style="height: 180px; width: 100%; display: block;"
												src="img/20.jpg" data-holder-rendered="true"><br>
											<h5 class="card-title" style="color:#5e35b1;">Data Structure and Algorithms</h5>
											<p class="card-text">With supporting text below as a
												natural lead-in to additional content.</p>
											<a href="https://www.youtube.com/watch?v=dr-pLeJBr38&list=PLDzeHZWIZsTryvtXdMr6rPh4IDexB5NIA&index=4" target="_blank" class="btn btn-primary" STYLE="BACKGROUND:teal;">GET STARTED</a>
										</div>
									</div>
								</div>
								<div class="col-sm-6">
									<div class="card my-2">
										<div class="card-body">
											<img class="card-img-top" data-src="holder.js/100px180/"
												alt="100%x180"
												style="height: 180px; width: 100%; display: block;"
												src="img/21.jfif" data-holder-rendered="true"><br>
											<h5 class="card-title" style="color:#5e35b1;">Complete Java Tutorials</h5>
											<p class="card-text">With supporting text below as a
												natural lead-in to additional content.</p>
											<a href="https://www.youtube.com/playlist?list=PLfqMhTWNBTe3LtFWcvwpqTkUSlB32kJop"  target="_blank" style="background:teal;" class="btn btn-primary">GET STARTED</a>
										</div>
									</div>
								</div>
								<div class="col-sm-6">
									<div class="card my-2">
										<div class="card-body">
											<img class="card-img-top" data-src="holder.js/100px180/"
												alt="100%x180"
												style="height: 180px; width: 100%; display: block;"
												src="img/22.jpg" data-holder-rendered="true"><br>
											<h5 class="card-title" style="color:#5e35b1;">C/C++ Tutorials</h5>
											<p class="card-text">With supporting text below as a
												natural lead-in to additional content.</p>
											<a href="https://www.youtube.com/playlist?list=PLu0W_9lII9agpFUAlPFe_VNSlXW5uE0YL"  target="_blank" class="btn btn-primary" style="background:teal;">GET STARTED</a>
										</div>
									</div>
								</div>
								<div class="col-sm-6">
									<div class="card my-2">
										<div class="card-body">
											<img class="card-img-top" data-src="holder.js/100px180/"
												alt="100%x180"
												style="height: 180px; width: 100%; display: block;"
												src="img/23.png" data-holder-rendered="true"><br>
											<h5 class="card-title" style="color:#5e35b1;">Database Management System</h5>
											<p class="card-text">With supporting text below as a
												natural lead-in to additional content.</p>
											<a href="https://www.youtube.com/playlist?list=PLDzeHZWIZsTpukecmA2p5rhHM14bl2dHU" target="_blank" class="btn btn-primary" style="background:teal">GET STARTED</a>
										</div>
									</div>
								</div>
							</div>


						</div>
						<div class="carousel-item">


							<div class="row">
								<div class="col-sm-6">
									<div class="card my-2">
										<div class="card-body">
											<img class="card-img-top" data-src="holder.js/100px180/"
												alt="100%x180"
												style="height: 180px; width: 100%; display: block;"
												src="img/24.jpg" data-holder-rendered="true"><br>
											<h5 class="card-title" style="color:#5e35b1;">Complete Microsoft Office</h5>
											<p class="card-text">With supporting text below as a
												natural lead-in to additional content.</p>
											<a href="https://www.youtube.com/playlist?list=PLwmDa-QvqlfhP4IKvwq4QQ-EtBNSK3_AI" target="_blank" class="btn btn-primary" style="background:teal;">GET STARTED</a>
										</div>
									</div>
								</div>
								<div class="col-sm-6">
									<div class="card my-2">
										<div class="card-body">
											<img class="card-img-top" data-src="holder.js/100px180/"
												alt="100%x180"
												style="height: 180px; width: 100%; display: block;"
												src="img/25.jfif" data-holder-rendered="true"><br>
											<h5 class="card-title" style="color:#5e35b1;">Basic to Advance Computer Tutorials</h5>
											<p class="card-text">With supporting text below as a
												natural lead-in to additional content.</p>
											<a href="#" class="btn btn-primary" style="background:teal;">GET STARTED</a>
										</div>
									</div>
								</div>
								<div class="col-sm-6">
									<div class="card my-2">
										<div class="card-body">
											<img class="card-img-top" data-src="holder.js/100px180/"
												alt="100%x180"
												style="height: 180px; width: 100%; display: block;"
												src="img/26.jpg" data-holder-rendered="true"><br>
											<h5 class="card-title" style="color:#5e35b1;">Communication Skills</h5>
											<p class="card-text">With supporting text below as a
												natural lead-in to additional content.</p>
											<a href="https://www.youtube.com/playlist?list=PLOaeOd121eBEEWP14TYgSnFsvaTIjPD22" target="_blank" class="btn btn-primary" style="background:teal;">GET STARTED</a>
										</div>
									</div>
								</div>
								<div class="col-sm-6">
									<div class="card my-2">
										<div class="card-body">
											<img class="card-img-top" data-src="holder.js/100px180/"
												alt="100%x180"
												style="height: 180px; width: 100%; display: block;"
												src="img/27.jpg" data-holder-rendered="true"><br>
											<h5 class="card-title" style="color:#5e35b1;">English Communication</h5>
											<p class="card-text">With supporting text below as a
												natural lead-in to additional content.</p>
											<a href="https://www.youtube.com/playlist?list=PLI776EGpyNJjEU1CAnpkvtwYuraGAL875" target="_blank" class="btn btn-primary" style="background:teal;">GET STARTED</a>
										</div>
									</div>
								</div>
							</div>


						</div>
						<div class="carousel-item">


							<div class="row">
								<div class="col-sm-6">
									<div class="card my-2">
										<div class="card-body">
											<img class="card-img-top" data-src="holder.js/100px180/"
												alt="100%x180"
												style="height: 180px; width: 100%; display: block;"
												src="img/35.webp" data-holder-rendered="true"><br>
											<h5 class="card-title" style="color:#5e35b1;">Operating System</h5>
											<p class="card-text">With supporting text below as a
												natural lead-in to additional content.</p>
											<a href="https://www.youtube.com/playlist?list=PLxCzCOWd7aiGz9donHRrE9I3Mwn6XdP8p" target="_blank" class="btn btn-primary" style="background:teal;">GET STARTED</a>
										</div>
									</div>
								</div>
								<div class="col-sm-6">
									<div class="card my-2">
										<div class="card-body">
											<img class="card-img-top" data-src="holder.js/100px180/"
												alt="100%x180"
												style="height: 180px; width: 100%; display: block;"
												src="img/32.jpg" data-holder-rendered="true"><br>
											<h5 class="card-title" style="color:#5e35b1;">Computer Networks</h5>
											<p class="card-text">With supporting text below as a
												natural lead-in to additional content.</p>
											<a href="https://www.youtube.com/playlist?list=PLxCzCOWd7aiGFBD2-2joCpWOLUrDLvVV_" target="_blank" class="btn btn-primary" style="background:teal;">GET STARTED</a>
										</div>
									</div>
								</div>
								<div class="col-sm-6">
									<div class="card my-2">
										<div class="card-body">
											<img class="card-img-top" data-src="holder.js/100px180/"
												alt="100%x180"
												style="height: 180px; width: 100%; display: block;"
												src="img/33.jpg" data-holder-rendered="true">
											<h5 class="card-title" style="color:#5e35b1;">Web Development Complete Course</h5><br>
											<p class="card-text">With supporting text below as a
												natural lead-in to additional content.</p>
											<a href="https://www.youtube.com/playlist?list=PLfqMhTWNBTe3H6c9OGXb5_6wcc1Mca52n" target="_blank" class="btn btn-primary" style="background:teal;">GET STARTED</a>
										</div>
									</div>
								</div>
								<div class="col-sm-6">
									<div class="card my-2">
										<div class="card-body">
											<img class="card-img-top" data-src="holder.js/100px180/"
												alt="100%x180"
												style="height: 180px; width: 100%; display: block;"
												src="img/34.jfif" data-holder-rendered="true"><br>
											<h5 class="card-title" style="color:#5e35b1;">Aptitude and Reasoning Tutorials</h5>
											<p class="card-text">With supporting text below as a
												natural lead-in to additional content.</p>
											<a href="https://www.youtube.com/playlist?list=PLfqMhTWNBTe3H6c9OGXb5_6wcc1Mca52n"  target="_blank" class="btn btn-primary" style="background:teal;">GET STARTED</a>
										</div>
									</div>
								</div>
							</div>
						</div>

					</div>

				</div>

				<div class="col-12 mt-5 text-center">
					<a class="btn btn-light btn-info" href="#carouselExampleControls"
						role="button" data-slide="prev"> <i
						class="controls class-fade"><<</i>
					</a> <a class="btn btn-light btn-info" href="#carouselExampleControls"
						role="button" data-slide="next"> <i
						class="controls class-active">>></i>
					</a>
				</div>
			</div>
		</div>
	</div>
	<br>
	<br>
	<!-- Footer -->
	<%@include file="allcomponents/footer.jsp"%>
	<script type="text/javascript">
		$('#carouselExampleControls').on('slide.bs.carousel', function(e) {
			var inner = document.querySelector('.carousel-inner');
			var controls = document.querySelectorAll('.controls');
			if (e.direction === 'left') {
				controls[0].className = 'controls class-active';
			}
			if (e.direction === 'right') {
				controls[1].className = 'controls class-active'
			}

			if (e.relatedTarget == inner.lastElementChild) {
				controls[1].className = 'controls class-fade'
			}
			if (e.relatedTarget == inner.firstElementChild) {
				controls[0].className = 'controls class-fade'
			}
		})
	</script>
</body>
</html>