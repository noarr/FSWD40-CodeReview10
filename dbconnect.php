<?php 

define('DBHOST', 'localhost');
define('DBUSER', 'root');
define('DBPASS', '');
define('DBNAME', 'cr10_nora_horvath_biglibrary');

$con = mysqli_connect(DBHOST, DBUSER, DBPASS, DBNAME);

if(!$con) {
	die("Connection failed: " . mysqli_error());
} else {
	echo "";
}

 ?>