<?php if(!isset($_SESSION)){
	session_start();
	}  
?> 

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
	<style>

		body{

			margin:0;
			padding:0;
		}
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
<?php include('uptomenu.php'); ?>
		<h2 class="text">Search Result</h2>


		<?php 
			include('../config.php');
					

					$sql = " SELECT * FROM doctor WHERE address = '" . $_POST["address"]."' AND expertise = '" . $_POST["expertise"]."' ";
					$result = mysqli_query($conn,$sql);
					$count = mysqli_num_rows($result);

					if($count>=1){
						echo "<table border='1' align='center' cellpadding='32'>
							<tr>
								<th>SL.</th>
								<th>Name</th>
								<th>Address</th>
								
								<th>Mobile</th>
								
								<th>Email</th>
								<th>Expertise in</th>
								<th>Fee</th>
								<th>Book</th>
								
							</tr>";
						while($row=mysqli_fetch_array($result)){
								echo "<tr>";
								echo "<td>".$row['doc_id']."</td>";
								echo "<td>".$row['name']."</td>";
								echo "<td>".$row['address']."</td>";
								
								echo "<td>".$row['contact']."</td>";
								echo "<td>".$row['email']."</td>";

								echo "<td>".$row['expertise']."</td>";
								echo "<td>".$row['fee']."</td>";
						?>
							<td><a href="booking.php?doc_id=<?php echo $row['doc_id'] ?>">Book</a></td>;
						<?php 		
								
								echo "</tr>";
						}
						echo "</table>";
					} 
					else{
						print "<p align='center'>Sorry, No match found for your search result..!!!</p>";
					}

					?>
<?php include('footer.php'); ?>
</body>
</html>
