<!DOCTYPE html>
<html>
<head>
<title>My CV</title>
<link rel="stylesheet" type="text/css" href="MyStyle.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>


<body>


<h1>Work Experience</h1>
<?php 
include "connect.php";
include "navbar.php";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * FROM `workExperience_tbl`";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
  echo "&nbsp;</br>";
  echo "I have demonstrated my work skills as follows:</br>";
  echo "&nbsp;</br>";
  
  echo "<table  border=1 cellpadding=2 cellspacing=0 ><tr><th>Start</th><th>Finish</th><th>Workplace</th><th>Duties</th></tr>";
  // output data of each row
  while($row = $result->fetch_assoc()) {
    echo "<tr><td>".$row["StartDate"]."</td><td>".$row["EndDate"]."</td><td>".$row["Employer"]."</td><td>".$row["Duties"]."</td></tr>";
  }
  echo "</table>";
} else {
  echo "0 results";
}
$conn->close();
?>

</body>
</html>
