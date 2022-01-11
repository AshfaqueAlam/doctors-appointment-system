<?php if(!isset($_SESSION)){
	session_start();
	}  
?>

<?php include('uptomenu.php'); ?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
	<style>
		.text{
			margin: 0px 0px;
			padding: 30px;
			text-align:center;
			background:blue;
			color:white;
			}
	</style>
</head>
<body>
	<h2 class="text">My Appoinment</h2>

	<div class="all_user" style="margin-top:0px; margin-left: 40px;">

				<?php 
					include('../config.php');
					

					$sql = " SELECT * FROM booking WHERE email = '".$_SESSION["email"]."'  ";
					$result = mysqli_query($conn,$sql);
					$count = mysqli_num_rows($result);

					if($count>=1){
						echo "<table border='1' align='center' cellpadding='32'>
							<tr>
								<th>My Disease Type</th>
								<th>My Doctor</th>
								<th>Appoinment Date</th>
								<th>Time</th>
								
							</tr>";
						while($row=mysqli_fetch_array($result)){
								echo "<tr>";
								echo "<td>".$row['expertise']."</td>";
								echo "<td>".$row['dname']."</td>";
								echo "<td>".$row['dates']."</td>";
								echo "<td>".$row['tyme']."</td>";
						?>
								
						<?php
								echo "</tr>";
						}
						echo "</table>";
					}
					else{
						print "<p align='center'>Sorry, No match found for your search result..!!!</p>";
					}

					?>

					<!-- Cancel Booking -->


			<?php
							include('config.php');
							if(isset($_POST['submit'])){
							
							// sql to delete a record
							$sql = "DELETE * FROM booking";

							if (mysqli_query($conn, $sql)) {
							    echo "<script>alert('Your booking has been Canceled!');</script>";
							} else {
							     echo "<script>alert('There was an Error')<script>";
							}

							mysqli_close($conn);
						}
					?> 



	<!-- Cancel Booking End-->
			</div>
		
	
	
	

	
 <?php include('footer.php'); ?>

	
</body>
</html>