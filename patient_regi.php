<?php include('header.php'); ?>

<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

  <title>Patient Registration</title>
</head>

<body>
  <font size="3">

    <!-- this is for patient registration -->

    <div class="container recipient_reg my-5">
      <h3 class="text-center">Patient Registration</h3>

      <div class="formstyle">
        <form enctype="multipart/form-data" method="post" class="row g-3">
          <div class="col-md-12">

            <div class="mb-3">
              <label for="validationDefault01" class="form-label">Name</label>
              <input type="text" class="form-control has-validation" id="validationDefault01" placeholder="Enter your Name" name="name" autocomplete="off" title="Please enter your name." required />
            </div><br>

            <div class="mb-3">
              <label for="validationDefault02" class="form-label">Age</label>
              <input type="number" class="form-control has-validation" id="validationDefault02" placeholder="Enter your Age" name="age" autocomplete="off" title="Please enter your age." required />
            </div><br>


            <div class="mb-4">
              <label for="validationDefault03" class="form-label">Mobile No.</label>
              <input type="number" class="form-control has-validation" id="validationDefault03" placeholder="Enter your Mobile Number" name="contact" autocomplete="off" pattern="[0-9]{10,11}" title="Please enter your mobile no." required />
            </div><br>


            <div class="mb-3">
              <label for="validationDefault04" class="form-label">Address</label>
              <input type="text" class="form-control has-validation" id="validationDefault04" placeholder="Enter your Current Address" name="address" autocomplete="off" title="Please enter your address." required />
            </div><br>


            <label for="inputBGroup" class="form-label">Blood Group</label>
            <select id="inputBGroup" class="form-select" name="bgroup" required>
              <option selected>Choose...</option>
              <option value="O+">O+</option>
              <option value="O-">O-</option>
              <option value="AB+">AB+</option>
              <option value="AB-">AB-</option>
              <option value="A+">A+</option>
              <option value="A-">A-</option>
              <option value="B+">B+</option>
              <option value="B-">B-</option>
            </select><br>


            <div class="mb-3">
              <label for="validationDefault05" class="form-label">Email</label>
              <input type="email" class="form-control has-validation" id="validationDefault05" placeholder="Enter your Email" name="email" autocomplete="off" title="Please enter your email." required />
            </div><br>


            <div class="mb-3">
              <label for="validationDefault06" class="form-label">Password</label>
              <input type="password" class="form-control has-validation" id="validationDefault06" placeholder="Enter your Password" name="password" autocomplete="off" title="Please enter a password." required />
            </div><br>



            <div class="row">
              <div class="col d-flex justify-content-center align-items-center">
                <button type="submit" class="btn btn-primary" name="submit">
                  Register
                </button>
              </div>
            </div>

          </div> <!-- col-md-12 -->

        </form>
      </div>

    </div>

  </font>

  <?php include('footer.php'); ?>

  <!--  containerFluid Ends -->




  <script src="js/bootstrap.min.js"></script>


  <!-- validation and insertion -->

  <?php
    include('config.php');
    if (isset($_POST['submit'])) {

        $sql1 = "SELECT * FROM patient WHERE email='" . $_POST["email"] . "' ";
        $result = $conn->query($sql1);
        if ($result->num_rows > 0) {
            echo "<script>alert('Sorry, user already exist!');</script>";
        } else {
            $sql = "INSERT INTO patient (name,age,contact,address,bgroup,email, password)
							VALUES ('" . $_POST["name"] . "','" . $_POST["age"] . "','" . $_POST["contact"] . "','" . $_POST["address"] . "','" . $_POST["bgroup"] . "', '" . $_POST["email"] . "','" . $_POST["password"] . "' )";

            if ($conn->query($sql) === TRUE) {
                echo "<script>location.replace('patient_success_msg.php');</script>";
            } else {
                echo "<script>alert('There was an Error')<script>" . $sql . "<br>" . $conn->error;
            }

            $conn->close();
        }
    }
    ?>

  <!-- validation and insertion End-->


  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>

</html>