<?php
session_start();
if(isset($_SESSION["loggedin"]) && $_SESSION["loggedin"] === true){
	echo '<script>alert("Success !");</script>';
	header("refresh: 2; url=index.php");
	
    exit;
}
else {
	header("refresh: 1; url=login.php");
}
?>
<html>
<head>
</head>
<body>
<P>REDIRECTING</p>
</body>
</html>