<?php
include "header.php";
unset($_SESSION['agent']);
$_SESSION['success_message'] = "You are logged out successfully";
header('location: '.BASE_URL.'agent-login');
exit;