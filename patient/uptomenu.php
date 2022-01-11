	
	<!DOCTYPE html>
	<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Document</title>
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

		</style>
	</head>
	<body>
	<nav class="menu">
		<h2>Doctor Appointment Management System</h2>
		<ul>
			<li><a href="logout.php">Log Out</a></li>
			<li><a href="view_booking.php">View Appoinment</a></li>
			<li><a href="dashboard.php">Dashboard</a></li>
		</ul>
	</nav>

	</body>
	</html>