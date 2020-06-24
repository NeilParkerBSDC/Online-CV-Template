<!DOCTYPE html>
<html>
<head>
<title>My CV</title>
<link rel="stylesheet" type="text/css" href="MyStyle.css">
</head>


<body>


<h1>Education</h1>
<?php 
include "connect.php";
include "navbar.php";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * FROM `education_tbl`";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
  echo "<table  border=1><tr><th>Start</th><th>finish</th><th>Instituion</th><th>quals</th></tr>";
  // output data of each row
  while($row = $result->fetch_assoc()) {
    echo "<tr><td>".$row["StartDate"]."</td><td>".$row["EndDate"]."</td><td>".$row["Institution"]."</td><td>".$row["Qualifications"]."</td></tr>";
  }
  echo "</table>";
} else {
  echo "0 results";
}
$conn->close();
?>

</body>
</html>
