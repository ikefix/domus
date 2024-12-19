<?php
include 'header.php';

if(!isset($_REQUEST['email'])||!isset($_REQUEST['token'])) {
    header('location: '.BASE_URL);
    exit;
}

$statement = $pdo->prepare("SELECT * FROM customers WHERE email=? AND token=?");
$statement->execute([$_REQUEST['email'],$_REQUEST['token']]);
$total = $statement->rowCount();
if($total) {
    $statement = $pdo->prepare("UPDATE customers SET token=?, status=? WHERE email=? AND token=?");
    $statement->execute(['',1,$_REQUEST['email'],$_REQUEST['token']]);
    $_SESSION['success_message'] = 'Registration verified successfully. Please login now.';
    header('location: '.BASE_URL.'customer-login');
    exit;
} else {
    header('location: '.BASE_URL);
    exit;
}