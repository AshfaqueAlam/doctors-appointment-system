<?php session_start();  ?>
<?php include('header.php'); ?>



<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<style>
		.form-box{

		}

		.form{
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

		.form-content{
			margin: 20px;
		}

		.form-content input{
			text-align:center;
			color:black;
		}

		.btn input{
			padding:5px;
			font-size:24px;
			background: blue;
			width: 150px;
			border-radius:5px;
			color:white;
		}

	</style>
</head>

<body>
	<h2 class="text">Patient Login</h2>
	<div class="form-box">
		<div class=form>
		<form action="" method="post">
			<div class="form-content">
				<label for="">Email</label><br>
				<input type="text" placeholder="Enter Your Email Id" name="email">
				<br><br>
			</div>

			<div class="form-content">
				<label for="">Password</label><br>
				<input type="password" placeholder="Enter Your Password" name="password">
				<br><br>
			</div>

			<div class="btn">
				<input type="submit" name="submit">
			</div>

		</form>

		</div>
	</div>

	<!-- login validation -->
			<?php
					$_SESSION['patient']="";

							include('config.php');
							if(isset($_POST["submit"])){


							$sql= "SELECT * FROM patient WHERE email= '" . $_POST["email"]."' AND password= '" . $_POST["password"]."'";

							$result = $conn->query($sql);

									if ($result->num_rows > 0) {
											$_SESSION["email"]= $_POST["email"];

											$_SESSION['patient']= "yes";
										    echo "<script>location.replace('patient/dashboard.php');</script>";
												// echo "u are supposed to redirect to ur profile";
										} else {
										    echo "<span style='color:red;'>Invalid username or password</span>";
										}
						$conn->close();
					}

 			?>
		<!-- login validation End-->


 <?php include('footer.php'); ?>




<script src="js/bootstrap.min.js"></script>


</body>
</html>

