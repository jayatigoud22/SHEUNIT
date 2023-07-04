<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact us</title>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<%@include file="allcomponents/allcss.jsp"%>
<style class="text/css">
@import
	url('https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700,800,900|Rubik:300,400,500,700,900')
	;

* {
	-webkit-font-smoothing: antialiased;
	-webkit-text-shadow: rgba(0, 0, 0, .01) 0 0 1px;
	text-shadow: rgba(0, 0, 0, .01) 0 0 1px;
}

body {
	font-family: 'Rubik', sans-serif;
	font-size: 14px;
	font-weight: 400;
	background: #fff;
	color: #000000;
	margin-top: 10px;
}

div {
	display: block;
	position: relative;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

h1, h2, h3, h4, h5, h6 {
	font-family: 'Roboto', sans-serif;
	font-weight: 500;
	-webkit-font-smoothing: antialiased;
	-webkit-text-shadow: rgba(0, 0, 0, .01) 0 0 1px;
	text-shadow: rgba(0, 0, 0, .01) 0 0 1px;
}

.button {
	display: inline-block;
	background: teal;
	border-radius: 5px;
	height: 48px;
	-webkit-transition: all 200ms ease;
	-moz-transition: all 200ms ease;
	-ms-transition: all 200ms ease;
	-o-transition: all 200ms ease;
	transition: all 200ms ease;
}

.button a {
	display: block;
	font-size: 18px;
	font-weight: 400;
	line-height: 48px;
	color: #FFFFFF;
	padding-left: 35px;
	padding-right: 35px;
}

.button:hover {
	opacity: 0.8;
}

.contact_info {
	width: 100%;
	padding-top: 70px;
}

.contact_info_item {
	width: calc(( 100% - 60px)/3);
	height: 100px;
	border: solid 1px teal;
	box-shadow: 0px 1px 5px rgba(0, 0, 0, 0.1);
	padding-left: 32px;
	padding-right: 15px;
}

.contact_info_image {
	width: 35px;
	height: 35px;
	text-align: center;
}

.contact_info_image img {
	max-width: 100%;
}

.contact_info_content {
	padding-left: 17px;
}

.contact_info_title {
	font-weight: 500;
}

.contact_info_text {
	font-size: 12px;
	color: rgba(0, 0, 0, 0.5);
}

/*********************************
4.1 Contact Form
*********************************/
.contact_form {
	padding-top: 85px;
}

.contact_form_container {
	
}

.contact_form_title {
	font-size: 30px;
	font-weight: 500;
	margin-bottom: 37px;
}

.contact_form_inputs {
	margin-bottom: 30px;
}

.input_field {
	width: calc(( 100% - 60px)/3);
	height: 50px;
	padding-left: 25px;
	border: solid 1px teal;
	border-radius: 5px;
	outline: none;
	color: #0e8ce4;
	-webkit-transition: all 200ms ease;
	-moz-transition: all 200ms ease;
	-ms-transition: all 200ms ease;
	-o-transition: all 200ms ease;
	transition: all 200ms ease;
}

.input_field:focus, .text_field:focus {
	border-color: teal;
}

.input_field:hover, .text_field:hover {
	border-color: teal;
}

.input_field::-webkit-input-placeholder, .text_field::-webkit-input-placeholder
	{
	font-size: 16px;
	font-weight: 400;
	color: rgba(0, 0, 0, 0.3);
}

.input_field:-moz-placeholder, .text_field:-moz-placeholder {
	font-size: 16px;
	font-weight: 400;
	color: rgba(0, 0, 0, 0.3);
}

.input_field::-moz-placeholder, .text_field::-moz-placeholder {
	font-size: 16px;
	font-weight: 400;
	color: rgba(0, 0, 0, 0.3);
}

.input_field:-ms-input-placeholder, .text_field:-ms-input-placeholder {
	font-size: 16px;
	font-weight: 400;
	color: rgba(0, 0, 0, 0.3);
}

.input_field::input-placeholder, .text_field::input-placeholder {
	font-size: 16px;
	font-weight: 400;
	color: rgba(0, 0, 0, 0.3);
}

.text_field {
	width: 100%;
	height: 160px;
	padding-left: 25px;
	padding-top: 15px;
	border: solid 1px teal;
	border-radius: 5px;
	color: #0e8ce4;
	outline: none;
	-webkit-transition: all 200ms ease;
	-moz-transition: all 200ms ease;
	-ms-transition: all 200ms ease;
	-o-transition: all 200ms ease;
	transition: all 200ms ease;
}

.contact_submit_button {
	padding-left: 35px;
	padding-right: 35px;
	color: #FFFFFF;
	font-size: 18px;
	border: none;
	outline: none;
	cursor: pointer;
	margin-top: 24px;
}

.panel {
	width: 100%;
	height: 50px;
	background: #fafafa;
	margin-top: 120px;
}

@media only screen and (max-width: 991px) {
	.contact_info_item {
		width: 100%;
		margin-bottom: 30px;
	}
	.contact_info_item:last-child {
		margin-bottom: 0px;
	}
}

@media only screen and (max-width: 767px) {
	.input_field {
		margin-bottom: 30px;
		width: 100%;
	}
	.input_field:last-child {
		margin-bottom: 0px;
	}
}

@media only screen and (max-width: 575px) {
	.contact_submit_button {
		font-size: 13px;
		padding-left: 25px;
		padding-right: 25px;
	}
}
</style>
</head>
<body>
	<%@include file="allcomponents/navbar.jsp"%>
	<!--Section: Contact v.2-->
	<div class="contact_info">
	<h1 style="text-align:center;color:teal;">Contact us</h1><br>
			<p style="text-align:center;">Do you have any questions? Please do not hesitate to contact
				us directly. Our team will come back to you within a matter of hours
				to help you.</p><br>
		<div class="container">
			<div class="row">
				<div class="col-lg-10 offset-lg-1">
					<div
						class="contact_info_container d-flex flex-lg-row flex-column justify-content-between align-items-between">

						<!-- Contact Item -->
						<div
							class="contact_info_item d-flex flex-row align-items-center justify-content-start">
							<div class="contact_info_image">
								<img src="https://img.icons8.com/office/24/000000/iphone.png"
									alt="">
							</div>
							<div class="contact_info_content">
								<div class="contact_info_title">Phone</div>
								<div class="contact_info_text">+91 9876 543 2198</div>
							</div>
						</div>

						<!-- Contact Item -->
						<div
							class="contact_info_item d-flex flex-row align-items-center justify-content-start">
							<div class="contact_info_image">
								<img
									src="https://img.icons8.com/ultraviolet/24/000000/filled-message.png"
									alt="">
							</div>
							<div class="contact_info_content">
								<div class="contact_info_title">Email</div>
								<div class="contact_info_text">contact@Sheunit.com</div>
							</div>
						</div>

						<!-- Contact Item -->
						<div
							class="contact_info_item d-flex flex-row align-items-center justify-content-start">
							<div class="contact_info_image">
								<img
									src="https://img.icons8.com/ultraviolet/24/000000/map-marker.png"
									alt="">
							</div>
							<div class="contact_info_content">
								<div class="contact_info_title">Address</div>
								<div class="contact_info_text">298, Indore(M.P), INDIA</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Contact Form -->

	<div class="contact_form">
		<div class="container">
			<div class="row">
				<div class="col-lg-10 offset-lg-1">
					<div class="contact_form_container">
						<div class="contact_form_title" style="color:teal;">Get in Touch</div>

						<form action="#" name="submit-to-google-sheet" class="contact__form" id="contact_form">
							<div
								class="contact_form_inputs d-flex flex-md-row flex-column justify-content-between align-items-between">
								
								<input type="text" id="contact_form_name"
									class="contact_form_name input_field" name="Name" placeholder="Your name"
									required="required" data-error="Name is required."> 
								<input type="text" id="contact_form_email"
									class="contact_form_email input_field" name="Email" placeholder="Your email"
									required="required" data-error="Email is required."> 
								<input
									type="text" id="contact_form_phone"
									class="contact_form_phone input_field" name="Phone"
									placeholder="Your phone number">
							</div>
							<div class="contact_form_text">
								<textarea id="contact_form_message"
									class="text_field contact_form_message" name="Message" rows="4"
									placeholder="Message" required="required"
									data-error="Please, write us a message."></textarea>
							</div>
							<div class="contact_form_button">
								<button type="submit" class="button contact_submit_button"  style="background:teal;">Submit
									</button>
							</div>
						</form>
                           <span id="msg"></span>
					</div>
				</div>
			</div>
		</div>
		<div class="panel"></div>
	</div>


	<%@include file="allcomponents/footer.jsp"%>
	<script type="text/javascript">
     const scriptURL = 'https://script.google.com/macros/s/AKfycbwUlAqvrXkKR73AcJnPKqJsUp1Zgz1-cGX0VASLN3-eplwDHRSwzlitPEfIWnwNdIcC/exec'
     const form = document.forms['submit-to-google-sheet']
     const msg = document.getElementById("msg")
     form.addEventListener('submit', e => {
       e.preventDefault()
       fetch(scriptURL, { method: 'POST', body: new FormData(form)})
         .then(response => {
           msg.innerHTML = "Message sent Successfully"
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