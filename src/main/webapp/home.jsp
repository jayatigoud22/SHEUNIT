<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
      <%
    UserDetails user2=(UserDetails)session.getAttribute("userD");
    
    if(user2==null)
    {
    	response.sendRedirect("login.jsp");
       session.setAttribute("Login-error","Please Login!");
    }
    %>
    

	
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.bg-img {
	background: url("img/fulltree.png");
	width: 100%;
	height:850px;
	background-repeat: no-repeat;
	background-size: 100% 100%;
}

#span1 {
	font-size: 55px;
	font-weight: 300;
	margin-right: 100px;
}

#span2 {
	font-size: 55px;
	font-weight: 300;
	margin-right: 35px;
}

.hovering:hover {
	background-color: black;
}

/* equal card height */
.row-equal>div[class*='col-'] {
	display: flex;
	flex: 1 0 auto;
}

.row-equal .card {
	width: 100%;
}

@media ( max-width : 768px) {
	.carousel-inner .carousel-item>div {
		display: none;
	}
	.carousel-inner .carousel-item>div:first-child {
		display: block;
	}
}

.carousel-inner .carousel-item.active, .carousel-inner .carousel-item-next,
	.carousel-inner .carousel-item-prev {
	display: flex;
}

/* display 3 */
@media ( min-width : 768px) {
	.carousel-inner .carousel-item-right.active, .carousel-inner .carousel-item-next
		{
		transform: translateX(33.333%);
	}
	.carousel-inner .carousel-item-left.active, .carousel-inner .carousel-item-prev
		{
		transform: translateX(-33.333%);
	}
}

.carousel-inner .carousel-item-right, .carousel-inner .carousel-item-left
	{
	transform: translateX(0);
}

.section-header h3 {
	font-size: 36px;
	color: #283d50;
	text-align: center;
	font-weight: 500;
	position: relative;
}

.section-header p {
	text-align: center;
	margin: auto;
	font-size: 15px;
	padding-bottom: 60px;
	color: #556877;
	width: 50%;
}

#clients {
	padding: 60px 0;
}

#clients .clients-wrap {
	border-top: 1px solid #d6eaff;
	border-left: 1px solid #d6eaff;
	margin-bottom: 30px;
}

#clients .client-logo {
	padding: 64px;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-pack: center;
	-webkit-justify-content: center;
	-ms-flex-pack: center;
	justify-content: center;
	-webkit-box-align: center;
	-webkit-align-items: center;
	-ms-flex-align: center;
	align-items: center;
	border-right: 1px solid #d6eaff;
	border-bottom: 1px solid #d6eaff;
	overflow: hidden;
	background: #fff;
	height: 160px;
}

#clients img {
	transition: all 0.4s ease-in-out;
}
</style>

<meta charset="ISO-8859-1">
<title>Home Page</title>
<%@include file="allcomponents/allcss.jsp"%>
</head>
<body>
	<%@include file="allcomponents/navbar.jsp"%>

	<!-- BACKGROUND IMAGE -->
	<div class="container-fluid bg-img">
		<div class=" image1-text text-center ">
			<h1
				style="padding-top: 120px; color: #5e35b1; font-size: 60px; font-weight: 600;">
				HOLD THE<br> <span id="span1">VISION</span> <br> TRUST THE
				<br> <span id="span2">PROCESS</span>
			</h1>
			<a href="addBusiness.jsp" class="btn btn-light text-white mt-3 hovering" style="background-color:teal;">Add My Business</a>
<a href="allPost.jsp" class="btn btn-light mt-3 ml-2" style="color:teal;">Explore </a>
<a href="admin.jsp" class="btn btn-light mt-3 ml-2" style="color:teal;">Admin </a>

		</div>
	</div>

	<div class="container my-5">
		<div class="row">
			<div class="col-lg-6">
				<img class="w-100 shadow" src="img/c4.png" style="margin-top: 75px;" />
			</div>
			<div class="col-lg-6">
				<div class="p-5 mt-4">
					<h3 class="display-4" style="color: teal;">SheUnit:Women
						Empowerment Portal</h3>
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
						style="color: white; background: teal;">Know More</a>
				</div>
			</div>
		</div>
	</div>
	<br><hr><br>
	<div class="container text-center my-3">
		<h1 class="font-weight-light" style="color: teal;">Resources</h1>
		<br>
		<div class="row mx-auto my-auto">
			<div id="recipeCarousel" class="carousel slide w-100"
				data-ride="carousel">
				<div class="carousel-inner w-100" role="listbox">
					<div class="carousel-item active">
						<div class="col-md-4">
							<div class="card card-body">
								<img class="img-fluid" src="img/r1.jpg"><br>
								<a href="https://wcd.nic.in/schemes-listing/2405"><button type="button" class="btn btn-info text-white">Women
									Welfare Schemes</button></a>
								<br>
								<p style="text-align: justify;">This is a sub-scheme under
									National Social Assistance Programme (NSAP) of Ministry of
									Rural Development. Under the scheme, central assistance @ Rs.
									300/- per month is provided to widows in the age group of 40-79
									years and the pension amount is enhanced to Rs 500/- per month
									on attaining 80 years.</p>
							</div>
						</div>
					</div>
					<div class="carousel-item">
						<div class="col-md-4">
							<div class="card card-body">
								<img class="img-fluid" src="img/r2.png"><br>
								<a href="https://www.startupindia.gov.in/content/sih/en/women_entrepreneurs.html"><button type="button" class="btn btn-info text-white">Women
									Enterprenuers in India</button></a>
								<br>
								<p style="text-align: justify;">Our passion is to support
									women entrepreneurs along their small business journey.We exist
									to empower women to make an impact in their communities and
									create opportunities in BC economy.Get Networking.This is
									almost nothing more powerful for aspiring entrepreneurs than
									the reach and help of their network.</p>
							</div>
						</div>
					</div>
					<div class="carousel-item">
						<div class="col-md-4">
							<div class="card card-body">
								<img class="img-fluid" src="img/r3.jpg"><br>
								<a href="https://www.naaree.com/top-career-options-women-india/"><button type="button" class="btn btn-info text-white">Business
									& Job opportunities</button></a>
								<br>
								<p style="text-align: justify;">Best business to start from
									home for women Affiliate marketing, Affiliate marketing is one
									of the most lucrative online business models, Blogging.
									Proofreader, A virtual assistant, Freelance editor. Freelance
									writer, Sell on Etsy, Social media management, Get Networking.</p>
							</div>
						</div>
					</div>
					<div class="carousel-item">
						<div class="col-md-4">
							<div class="card card-body">
								<img class="img-fluid" src="img/r4.png"><br>
								<a href="https://pib.gov.in/PressReleasePage.aspx?PRID=1579521"><button type="button" class="btn btn-info text-white">Women
									Safety In India</button></a>
								<br>
								<p style="text-align: justify;">The Ministry of Women and
									Child Development has been administering various special laws
									relating to women such as the Protection of Women from Domestic
									Violence Act, 2005; Dowry Prohibition Act, 1961; Indecent
									Representation of Women Act, 1986;</p>
							</div>
						</div>
					</div>
					<div class="carousel-item">
						<div class="col-md-4">
							<div class="card card-body">
								<img class="img-fluid" src="img/r5.jpg"><br>
								<a href="https://give.do/blog/10-ngos-for-women-you-should-support-for-women-rights/"><button type="button" class="btn btn-info text-white">Top
									NGO's in India</button></a>
								<br>
								<p style="text-align: justify;">Listed below are the NGOs
									for women which are helping women get legal justice and
									encouraging them to take their lives in their own hands. Guria
									India, Sayodhya Home For Women In Need, Shikshan Ane Samaj
									Kalyan Kendra, The Prajnya Trust.</p>
							</div>
						</div>
					</div>
					<div class="carousel-item">
						<div class="col-md-4">
							<div class="card card-body">
								<img class="img-fluid" src="img/r6.jpg"><br>
								<a href="https://www.buddy4study.com/article/scholarships-for-indian-girls-and-women"><button type="button" class="btn btn-info text-white">Scholarships
									Program for Women</button></a>
								<br>
								<p style="text-align: justify">The list of the available
									scholarship for girls is not confined to the only few mentioned
									above. There are several other scholarships that are
									exclusively for girls. Find below the list of those
									scholarships for girls. Also, we strongly suggest that you
									share this information with as many women as you can and help
									them build a brighter future.</p>
							</div>
						</div>
					</div>
				</div>
				<a class="carousel-control-prev w-auto" href="#recipeCarousel"
					role="button" data-slide="prev"> <span
					class="carousel-control-prev-icon bg-dark border border-dark rounded-circle"
					aria-hidden="true"></span> <span class="sr-only">Previous</span>
				</a> <a class="carousel-control-next w-auto" href="#recipeCarousel"
					role="button" data-slide="next"> <span
					class="carousel-control-next-icon bg-dark border border-dark rounded-circle"
					aria-hidden="true"></span> <span class="sr-only">Next</span>
				</a>
			</div>
		</div>
	</div>
<br><hr>
	<section id="clients" class="section-bg">

		<div class="container">

			<div class="section-header">
				<h1 class="font-weight-light"
					style="color: teal; text-align: center;">Our Community
					Partners</h1>
			</div>
			<br>

			<div class="row no-gutters clients-wrap clearfix wow fadeInUp"
				style="visibility: visible; animation-name: fadeInUp;">

				<div class="col-lg-3 col-md-4 col-xs-6">
					<div class="client-logo">
						<img src="img/p1.png" class="img-fluid" alt="">
					</div>
				</div>

				<div class="col-lg-3 col-md-4 col-xs-6">
					<div class="client-logo">
						<img src="img/p2.png" class="img-fluid" alt="">
					</div>
				</div>

				<div class="col-lg-3 col-md-4 col-xs-6">
					<div class="client-logo">
						<img src="img/p3.png" class="img-fluid" alt="">
					</div>
				</div>

				<div class="col-lg-3 col-md-4 col-xs-6">
					<div class="client-logo">
						<img src="img/p4.png" class="img-fluid" alt="">
					</div>
				</div>

				<div class="col-lg-3 col-md-4 col-xs-6">
					<div class="client-logo">
						<img src="img/p5.png" class="img-fluid" alt="">
					</div>
				</div>

				<div class="col-lg-3 col-md-4 col-xs-6">
					<div class="client-logo">
						<img src="img/p6.png" class="img-fluid" alt="">
					</div>
				</div>

				<div class="col-lg-3 col-md-4 col-xs-6">
					<div class="client-logo">
						<img src="img/p7.png" class="img-fluid" alt="">
					</div>
				</div>

				<div class="col-lg-3 col-md-4 col-xs-6">
					<div class="client-logo">
						<img src="img/p8.png" class="img-fluid" alt="">
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-xs-6">
					<div class="client-logo">
						<img src="img/p9.png" class="img-fluid" alt="">
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-xs-6">
					<div class="client-logo">
						<img class="img-fluid" alt="" src="img/p10.jpg">
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-xs-6">
					<div class="client-logo">
						<img class="img-fluid" alt="" src="img/p11.png">
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-xs-6">
					<div class="client-logo">
						<img class="img-fluid" alt="" src="img/p12.png">
					</div>
				</div>
			</div>
		</div>
	</section>
	
	<!-- ------------- -->
<hr>
		<div class="container my-5 py-5 z-depth-1">
			<!--Section: Content-->
			<section class="px-md-5 mx-md-5 text-center dark-grey-text">

				<!--Grid row-->
				<div class="row d-flex justify-content-center">

					<!--Grid column-->
					<div class="col-xl-6 col-md-8">

						<h1 class="font-weight-light" style="color:teal;">Call to action</h1>

						<h4 class="text-muted">Tell us what can we help you</h4><br>

						<a class="btn btn-info btn-md ml-0 mb-5" href="Register.jsp" role="button" style="background:teal;">Register for Full access<i class="fa fa-magic ml-2"></i>
						</a>

					</div>
					<!--Grid column-->

				</div>
				<!--Grid row-->


				<!--Grid row-->
				<div class="row">

					<!--First column-->
					<div class="col-lg-3 col-md-6">
						<i class="fas fa-gem fa-3x blue-text" style="color:#5e35b1;"></i>

						<p class="font-weight-bold my-3" style="color:teal;">Training and Scholarship opportunities</p>

						<p class="text-muted">Lorem ipsum dolor sit amet consectetur
							adipisicing elit.</p>
					</div>
					<!--/First column-->

					<!--Second column-->
					<div class="col-lg-3 col-md-6">
						<i class="fas fa-chart-area fa-3x teal-text" style="color:#5e35b1;"></i>

						<p class="font-weight-bold my-3" style="color:teal;">Business and Work opportunities</p>

						<p class="text-muted">Lorem ipsum dolor sit amet consectetur
							adipisicing elit.</p>
					</div>
					<!--/Second column-->

					<!--Third column-->
					<div class="col-lg-3 col-md-6">
						<i class="fas fa-cogs fa-3x indigo-text" style="color:#5e35b1;"></i>

						<p class="font-weight-bold my-3" style="color:teal;">Government Schemes and Programs</p>

						<p class="text-muted">Lorem ipsum dolor sit amet consectetur
							adipisicing elit.</p>
					</div>
					<!--/Third column-->

					<!--Fourth column-->
					<div class="col-lg-3 col-md-6">
						<i class="fas fa-cloud-upload-alt fa-3x deep-purple-text" style="color:#5e35b1;"></i>

						<p class="font-weight-bold my-3" style="color:teal;">network and Market Linkage</p>

						<p class="text-muted">Lorem ipsum dolor sit amet consectetur
							adipisicing elit.</p>
					</div>
					<!--/Fourth column-->

				</div>
				<!--/Grid row-->

			</section>
		</div>
	<!-- Footer -->
	<%@include file="allcomponents/footer.jsp"%>

	<script type="text/javascript">
		$('#recipeCarousel').carousel({
			interval : 10000
		})

		$('.carousel .carousel-item').each(function() {
			var minPerSlide = 3;
			var next = $(this).next();
			if (!next.length) {
				next = $(this).siblings(':first');
			}
			next.children(':first-child').clone().appendTo($(this));

			for (var i = 0; i < minPerSlide; i++) {
				next = next.next();
				if (!next.length) {
					next = $(this).siblings(':first');
				}

				next.children(':first-child').clone().appendTo($(this));
			}
		});
	</script>
</body>
</html>