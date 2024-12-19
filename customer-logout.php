<?php
include "header.php";
unset($_SESSION['customer']);
$_SESSION['success_message'] = "You are logged out successfully";
header('location: '.BASE_URL.'customer-login');
exit;