<?php include('header.php'); ?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>

	<style>


		.image{
			width:100%;
			height: 90vh;
			background-image: url("./img/Doctors.jpg");	
			background-repeat: no-repeat;
			background-size: cover;
			background-position: center;
		}

		.box{
			position: absolute;
			top:30%;
			left:40px;
			width: 500px;
			hight:100px;
			padding: 20px;
			background: black;
			opacity: .7;
			
		}

		.box h3{
			text-transform: uppercase;
			font-size: 30px;
			font-weight:bold;
			color:white;
			text-align: center;
			margin-bottom:20px;
		}

		.box p{
			font-size:18px;
			color:white;
			text-align: center;
		}

		.btn{
			background: blue;
			padding: 10px;
			margin: 10px 130px;
		}

		.btn:hover{
			background: #4245f5;
		}

		.btn a{

			text-transform: uppercase;
			font-size: 15px;
			font-weight:bold;
			color:white;
			text-align: center;
			text-decoration:none;

		}

		.btn a:hover{
			color:black;
		}

		.about-box{
			padding:20px;
			/* margin:20px 0; */
			display: flex;
			background: blue;
			justify-content: space-between;
			align-items: center;
			color:white;
		}

		.about-box h3{
			margin-left: 10px;
			font-size: 40px;
			font-weight: bold;
		
		}
		.about{
			width: 700px;
			
		}

		.about h4{
			font-size: 20px;
			font-weight: bold;
		}
		.about p{
			font-size: 16px;
		}
		.contact{
			margin: 30px 0;
			text-align: center;
			font-size:16px;
		}

		.contact-title{
			text-transform: uppercase;
			font-size:30px;
			font-weight:bold;
		}

		.phone-email-box{
			display: flex;
		}

		.phone-box{
			width: 50%;
			background:#A533FF;
			text-align: center;
			font-size:30px;
			padding:30px;
			color:white;
			opacity: 0.8;
		}

		.email-box{
			width: 50%;
			background:#FF3F33;
			text-align: center;
			font-size:30px;
			padding:30px;
			color:white;
			opacity: 0.8;
		}

		

	</style>
</head>
<body>
	 <!-- Hero Section -->
	<div>
		<div class="image">

		</div>

		<div class="box">
			<h3>making health care better together</h3>
			<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quia quaerat ut molestias iste iusto inventore explicabo ratione maxime facere? Recusandae a nam ipsa cupiditate magnam ea iusto nostrum consequatur temporibus?</p>

			<div class="btn">
				<a href="patient_login.php">MAKE AN appointment</a>
			</div>
		</div>
	</div>
	<!-- about us -->

	<div class="about-box">
		<h3> About Us</h3>

		<div class="about">
			<h4> Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ea, perspiciatis.</h4>

			<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel maiores veniam, quis, vitae possimus error repudiandae quaerat tenetur ipsam quod explicabo. Numquam, sequi! Nulla optio modi adipisci ipsa quidem fugit reiciendis repudiandae quo, ducimus, deserunt accusamus, hic incidunt. Soluta, amet?</p> <br>

			<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Est sed dolores iste ab dicta placeat!</p>
		</div>
	</div>

	<!-- contact us  -->
	<div>
		<div class="contact">
			<p class="contact-title">Contact Us</p>
			<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. At, consequuntur.</p>
		</div>
		<div class="phone-email-box">

			<div class="phone-box">
				<i class="fas fa-phone-alt"></i>
				<div>
					<p>Call Today</p>
					<p>900-200-600-100</p>
				</div>
			</div>

			<div class="email-box">
				<i class="fas fa-envelope-open-text"></i>
				<div>
					<p>Email Us</p>
					<p>contact@doctorappointmentmanagementsystem.com</p>
				</div>
			</div>
		</div>
	</div>
</body>
</html>	

<?php include('footer.php'); ?>