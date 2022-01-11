<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>mms-doctors</title>
	<link rel="stylesheet" href="../patient/css/bootstrap.min.css">
	<link rel="stylesheet" href="../style.css">
	<style>
		.menu{
			width: 100%;
			hight: 32px;
			background: black;
			overflow: auto;
		}

		.menu h2{
			float: left;
			margin-left:10px;
			margin-top:	22px;
			font-size: 20px;
			color:white;
		}

		.menu li{
			float: right;
			display: inline-block;
			margin: 10px 10px;
			padding: 15px;
		}

		.menu li a{
			color:white;
			font-size:15px;
			padding-bottom: 10px;
		}

		.menu li a:hover{
			color:#FF3F33;
			text-decoration:none;
			border-bottom: 3px solid #FF3F33;
			cursor:pointer;
		}

		.text{
			margin: 0px 0px;
			padding: 30px;
			text-align:center;
			background:blue;
			color:white;
		}

		.icon li:hover{
			color:#FF3F33;
			text-decoration:none;
			border-bottom: 3px solid #FF3F33 ;
			cursor:pointer;
		}

		footer{

			width:100%;
			height: 60px;
			background:black;
			padding: 5px;
			clear: both;
		}

		.copywrite{
			font-color:black;
			margin:10px 10px;
			font-size:16px;
			color:white;
			display: inline-block;
			
		}
		.icon{
			display: inline-block;
			margin-left: 600px;
		
		}
		.icon li{
			color:white;
			margin: 13px 10px;
			font-size: 20px;
			display: inline-block;
		}
	</style>
</head>
<body>


	<?php
		if($_SESSION['adminstatus'] == ""){
			header("location:doctorlogin.php");
		}
		
		   

	 ?>



	<nav class="menu">
		<h2>Doctor Appointment Management System</h2>
		<ul>
			<li><a href="../doctor_patient_login.php">Logout</a></li>
		</ul>
	</nav>
	
