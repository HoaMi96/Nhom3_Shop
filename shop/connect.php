<?php
ob_start();
?>
	<?php
			$servername = "localhost";
			$username = "root";
			$password = "";
			$dbname = "quanlibanhang";

			// Create connection
			$connect = mysqli_connect($servername, $username, $password, $dbname);
			mysqli_set_charset($connect, 'UTF8');
			// Check connection
			if (!$connect) {
			    die("Connection failed: " . mysqli_connect_error());
			}
	?>
<?php
ob_end_flush();
?>