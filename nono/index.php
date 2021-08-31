<?php
$insert= false;
if(isset($_POST['name'])){

$server = "localhost";
$username = "root";
$password = "";

$con = mysqli_connect($server,$username,$password);

if(!$con){
    die("connection failed due to" . mysqli_connect_error());
}

//echo "successfully connected to the db";
$name =$_POST['name'];
$email =$_POST['email'];
$phone =$_POST['phone'];
$desc =$_POST['desc'];

$sql="INSERT INTO `dbit_trip`.`trip` (`name`, `email`, `phone`, `other`, `dateT`) VALUES ('$name', '$email', '$phone', '$desc', current_timestamp());";


if($con->query($sql) == true){
    $insert = true;
}
else{
    echo "error";
}
$con->close();
}
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to travel form</title>
    <link rel="stylesheet" href="style.css">
    
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@700;900&family=Roboto:wght@900&display=swap" rel="stylesheet">
</head>
<body>
    
    <div class="container">
        <h3>Welcome to DBIT Trip Form</h3>
        <p>Enter your details to confirm your seat in the trip</p>

        <form action="index.php" method="post">
            
            <input type="text" name="name" id="name" placeholder="Enter your name" required>
            
            <input type="email" name="email" id="" placeholder="Enter email id" required>
            
            <input type="number" name="phone" id="phone" placeholder="Enter phone number">
            <textarea name="desc" id="desc" cols="30" rows="8" placeholder="Enter any query here"></textarea>
            <button class="btn" type="submit">Submit</button>
            <button class="btn">Reset</button>
        </form>


    </div>

    <script src="index.js">

    </script>
</body>
</html>