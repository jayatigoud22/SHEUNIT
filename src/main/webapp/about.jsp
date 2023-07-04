<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Explore</title>
<%@include file="allcomponents/allcss.jsp"%>
</head>
<body>
	<%@include file="allcomponents/navbar.jsp"%>
	<div class="container-fluid section-4">
		<div id="carouselExampleFade" class="carousel slide carousel-fade"
			data-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img class="d-block w-100" src="img/3.webp" alt="First slide">
				</div>
				<div class="carousel-item">
					<img class="d-block w-100" src="img/2.png" alt="Second slide">
				</div>
				<div class="carousel-item">
					<img class="d-block w-100" src="img/1.jpg" alt="Third slide">
				</div>
			</div>
			<a class="carousel-control-prev" href="#carouselExampleFade"
				role="button" data-slide="prev"> <span
				class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#carouselExampleFade"
				role="button" data-slide="next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>
	</div>
		<br>

		<h1 class="h1-responsive font-weight-light-bold text-center my-4">About
			us</h1>
		<div class="container my-5">
			<div class="row">
				<div class="col-lg-6">
					<img class="w-100 shadow" src="img/8.jpg" style="margin-top: 75px;" />
				</div>
				<div class="col-lg-6">
					<div class="p-5 mt-4">
						<h3 class="display-6">SheUnit:Women Empowerment Portal</h3>
						<p class="lead" style="text-align: justify">
							SheUnit is an online platform setup to remove barrier for women
							to get quality carrier guidance, upskilling and job opportunities
							to work from home and start their own online business.<br>
							The portal will help in building a bridge between user and their
							clients. Women will get independent and will get financial
							support. More reach to job opportunities will help students and
							freshers.
						</p>
						<br> <a href="#" class="btn btn-dark" style="color: white">Read
							More</a>
					</div>
				</div>
			</div>
			<br>
            <h1 class="h1-responsive font-weight-light-bold text-center my-4">Our Services</h1><br>
			<div class="card-deck">
			
				<div class="card">
					<img class="card-img-top" src="img/c4.gif" alt="Card image cap" style="width:380px;height:280px;">
					<div class="card-body">
						<h5 class="card-title">Education and Trainings</h5>
						<p class="card-text">Training and education are similar yet
							different in many ways. Training is the process of learning
							something. The goal is to learn how to perform a specific skill
							or behavior. On the other hand, education is a systematic process
							of learning something with the goal of acquiring knowledge.</p><br>
							<br> <a href="services.jsp" class="btn btn-dark" style="color: white">Read
							More</a>
					</div>
				</div>
				<div class="card">
					<img class="card-img-top" src="img/c7.gif" alt="Card image cap" style="width:380px;height:280px;">
					<div class="card-body">
						<h5 class="card-title">Schemes and Programs</h5>
						<p class="card-text">Programs are a sub components of mission
							and look into a related groups of health issues and desire to
							achieve the respective goals and targets those put together can
							lead the country in its envisioned mission. Schemes are sub
							components of programmes with definitive objectives and targets.</p>
							<br> <a href="services.jsp" class="btn btn-dark" style="color: white">Read
							More</a>
					</div>
				</div>
				<div class="card">
					<img class="card-img-top" src="img/c11.gif" alt="Card image cap" style="width:380px;height:280px;">
					<div class="card-body">
						<h5 class="card-title">Business and Job opportunities</h5>
						<p class="card-text"> In a job, you earn a salary, but business owners can earn a
							salary and enjoy the profits of their business when it is
							successful. However, your income from working a job is more
							reliable than earning an income from your business. If you come
							to work in a job, you get paid for your time..</p>
						  <br> <a href="services.jsp" class="btn btn-dark" style="color: white">Read
							More</a>
					</div>
				</div>
			</div>

		</div>

		<%@include file="allcomponents/footer.jsp"%>
</body>