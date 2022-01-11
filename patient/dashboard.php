<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>mms-patient</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">

	<style>
		.text{
			margin: 0px 0px;
			padding: 30px;
			text-align:center;
			background:blue;
			color:white;
		}
		.form-group{
			background: black;
			width:400px;
			height: 400px;
			padding: 25px;
			text-align:center;
			margin: 8vh auto;
			font-size:24px;
			color:white;
			opacity: .8;
		}

		.btn{
			margin-top:50px;
			paddding:5px;
			font-size:24px;
			background: blue;
			width: 150px;
			border-radius:5px;
			color:white;
		}

		.btn:hover{
			background: white;
			color:black;

		}

		label select{
			text-align:center;
			color:black;
		}
	</style>
</head>
<body>

<?php include('uptomenu.php'); ?>

<h2 class="text">Welcome to Your Panel</h2>

        <div>
			<form action="search_result.php" method="post" class="form-group">

			<!-- testing -->
			<label>
				Search By:
				<br>
				<select name="address" type="text"/>
										<option class="selfont">-Select-</option>
										<option>Airport</option>
										<option>Girish Park</option>
										<option>Garia</option>
										<option>Saltlake</option>
										
									</select>

			</label><br><br>
			<!-- testing end-->

			<label>
				Category:
				<br>
				<select name="expertise" type="text" />
										<option>-Select-</option>
										<option>Cardiologist</option>
										<option>General Physician</option>
										<option>Laparoscopic Surgeon</option>
										<option>Prosthodontist</option>
									</select>
									<br>

			</label>
			<button class="btn" name="submit" type="submit">Search</button>
			<br>

			</form>

        </div>
	
<?php include('footer.php'); ?>


<script src="js/bootstrap.min.js"></script>


</body>
</html>
