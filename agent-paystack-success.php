<?php include 'header.php'; ?>

<?php
// Ensure the user is logged in
if (!isset($_SESSION['agent'])) {
    header('Location: ' . BASE_URL . 'agent-login');
    exit;
}

// Check if Paystack reference is present in the URL
if (array_key_exists('reference', $_GET)) {
    $reference = $_GET['reference'];

    // Verify the payment with Paystack
    $url = "https://api.paystack.co/transaction/verify/$reference";
    $ch = curl_init($url);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_HTTPHEADER, [
        "Authorization: Bearer sk_live_d46c07f08130c16479dff3be6010f16c38012b07", // Paystack secret key
        "Cache-Control: no-cache",
    ]);

    $response = json_decode(curl_exec($ch), true);
    curl_close($ch);

    if ($response['status'] && $response['data']['status'] === 'success') {
        // Get payment details from Paystack response
        $payment_id = $response['data']['id'];
        $payer_email = $response['data']['customer']['email'];
        $amount = $response['data']['amount'] / 100; // Convert from kobo to currency unit
        $currency = $response['data']['currency'];
        $payment_status = $response['data']['status'];

        try {
            // Begin database transaction
            $pdo->beginTransaction();

            // Set previous active orders to inactive
            $statement = $pdo->prepare("UPDATE orders SET currently_active = 0 WHERE agent_id = ? AND currently_active = 1");
            $statement->execute([$_SESSION['agent']['id']]);

            // Insert the new order
            $statement = $pdo->prepare("INSERT INTO orders 
                (agent_id, package_id, transaction_id, payment_method, paid_amount, status, purchase_date, expire_date, currently_active) 
                VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)");
            $statement->execute([
                $_SESSION['agent']['id'],
                $_SESSION['package_id'],
                $payment_id,
                'Paystack',
                $amount,
                'Completed',
                date('Y-m-d'),
                date('Y-m-d', strtotime('+' . $_SESSION['allowed_days'] . ' days')),
                1
            ]);

            // Commit the transaction
            $pdo->commit();

            // Set success message and clear session variables
            $_SESSION['success_message'] = 'Payment was successful.';
            unset($_SESSION['package_id']);
            unset($_SESSION['price']);
            unset($_SESSION['allowed_days']);

            // Redirect to agent orders page
            header('Location: ' . BASE_URL . 'agent-orders');
            exit;

        } catch (Exception $e) {
            // Rollback the transaction in case of error
            $pdo->rollBack();
            error_log('Paystack Payment Processing Error: ' . $e->getMessage());
            echo 'Payment could not be completed. Please try again.';
        }

    } else {
        // Show error message from Paystack
        echo "Error: " . $response['message'];
    }

} else {
    // Redirect if the reference is missing
    header('Location: ' . PAYSTACK_CANCEL_URL);
}
?>
