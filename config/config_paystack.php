<?php

// Paystack
require_once "vendor/autoload.php";
use Omnipay\Omnipay;

// Define your Paystack secret key
define('PAYSTACK_SECRET_KEY', 'sk_live_d46c07f08130c16479d'); // Your Paystack secret key

// Define your Paystack return and cancel URLs
define('PAYSTACK_RETURN_URL', BASE_URL.'agent-paystack-success.php'); // Replace BASE_URL with your actual base URL
define('PAYSTACK_CANCEL_URL', BASE_URL.'agent-paystack-cancel.php'); // Replace BASE_URL with your actual base URL
define('PAYSTACK_CURRENCY', 'NGN'); // set your currency here (e.g., 'NGN' for Nigerian Naira, 'USD' for U.S. Dollar)

// Create Omnipay Paystack gateway instance
$gateway = Omnipay::create('Paystack');
$gateway->setSecretKey(PAYSTACK_SECRET_KEY);

// Prepare the purchase request (assuming you have collected the necessary data from a form)
$response = $gateway->purchase([
    'amount' => '5000', // Amount to charge, in your currency's smallest unit (5000 kobo = 50.00 NGN)
    'currency' => PAYSTACK_CURRENCY, // Currency for the transaction
    'email' => 'customer@example.com', // Customer email
    'reference' => uniqid('txn_', true), // Unique transaction reference
    'callback_url' => PAYSTACK_RETURN_URL, // Where the user is redirected after a successful payment
])->send();

if ($response->isRedirect()) {
    // Redirect the user to Paystack for payment
    $response->redirect();
} else {
    // Payment failed: display the error message to the user
    echo 'Payment failed: ' . $response->getMessage();
}
