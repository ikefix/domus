<?php include 'header.php'; ?>

<?php
if (isset($_GET['session_id'])) {
    \Stripe\Stripe::setApiKey(STRIPE_TEST_SK);
    $response = \Stripe\Checkout\Session::retrieve($_GET['session_id']);
    $paymentIntent = $response->payment_intent; // Transaction Id

    // Previous currently_active to 0
    $statement = $pdo->prepare("UPDATE orders SET currently_active=? WHERE agent_id=? AND currently_active=?");
    $statement->execute(array(0,$_SESSION['agent']['id'],1));

    // Insert into database
    $statement = $pdo->prepare("INSERT INTO orders (agent_id, package_id, transaction_id, payment_method, paid_amount, status, purchase_date, expire_date, currently_active) VALUES (?,?,?,?,?,?,?,?,?)");
    $statement->execute(array(
        $_SESSION['agent']['id'],
        $_SESSION['package_id'],
        $paymentIntent,
        'Stripe',
        $_SESSION['price'],
        'Completed',
        date('Y-m-d'),
        date('Y-m-d', strtotime('+'.$_SESSION['allowed_days'].' days')),
        1
    ));

    $_SESSION['success_message'] = 'Payment is successful.';

    unset($_SESSION['package_id']);
    unset($_SESSION['price']);
    unset($_SESSION['allowed_days']);

    header('location: '.BASE_URL.'agent-orders');
    exit;

} else {
    echo "Payment failed!";
}