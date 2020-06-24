<!DOCTYPE html>
<html>
  <head>
    <title>My CV Webapp</title>
    <link rel="stylesheet" type="text/css" href="MyStyle.css">
  </head>
  <body>
  <h1>My CV </h1>
  <!--
 <nav>
| <a href="index.php">Home</a> | <a href="education.php">Education</a> | <a href="wex.php">Work Experience</a> | <a href="skills.php">Skills</a> | <a href="portfolio.php">Online Portfolio</a> |
 </nav>
 -->
 <?php
include "navbar.php";
 ?>

 <h2>Profile</h2>
 <p>Some stuff about how wonderful I am and how you would really want to employ me because I am so briliant if you know what I mean ...</p>
 <h2>About Me:</h2>
<table border=0 cellpadding=1>
<tr>
<td class="BoldTD"> Name:</td>
<td class="TDDetails"> Bob Robertson</td>
</tr>
<tr>
<td class="BoldTD"> Address:</td>
<td class="TDDetails">16 Short Street<br/>Undertown<br/>Burton on Trent</br>Staffordshire<br/>D381TY</td>
</tr>
<tr>
<td class="BoldTD"> Landline:</td>
<td class="TDDetails"> 01235 123456</td>
</tr>
<tr>
<td class="BoldTD"> Mobile:</td>
<td class="TDDetails"> 0789 123456</td>
</tr>
<tr>
<td class="BoldTD"> email:</td>
<td class="TDDetails"> <a href="mailto:bob@mailme.com">bob@mailme.com</a></td>
</tr>
  </body>
</html>
