<?php
// Paystack secret key
$paystackSecretKey = "sk_live_d46c07f08130c16479dff3be6010f16c38012b07";

// Verify the transaction reference
if (isset($_GET['reference'])) {
    $reference = $_GET['reference'];

    // Verify the payment
    $curl = curl_init();
    curl_setopt_array($curl, [
        CURLOPT_URL => "https://api.paystack.co/transaction/verify/$reference",
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_HTTPHEADER => [
            "Authorization: Bearer $paystackSecretKey",
            "Cache-Control: no-cache"
        ]
    ]);

    $response = curl_exec($curl);
    $error = curl_error($curl);
    curl_close($curl);

    if ($error) {
        die("Curl Error: " . $error);
    }

    // Debug: Log the raw response from Paystack
    file_put_contents('response_log.txt', $response . PHP_EOL, FILE_APPEND);

    // Check if the response is a string before decoding
    if (is_string($response)) {
        $responseData = json_decode($response, true);
    } else {
        die("Invalid response from Paystack: " . var_export($response, true));
    }

    if ($responseData['status'] && $responseData['data']['status'] === 'success') {
        // Payment was successful
        $metadata = $responseData['data']['metadata'];

        if (is_string($metadata)) {
            $metadata = json_decode($metadata, true);
        }

        // Extract form data from metadata
        $name = $metadata['name'];
        $phone = $metadata['phone'];
        $wasap = $metadata['wasap'];
        $email = $metadata['email'];
        $location_client = $metadata['location_client'];
        $propertyType = $metadata['property_type'];
        $houseType = $metadata['house_type'];
        $othersDescription = $metadata['others_description'];

        try {
            // Database connection
            $pdo = new PDO('mysql:host=localhost;dbname=domus', 'root', '');
            $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

            // Insert data into the database
            $stmt = $pdo->prepare("INSERT INTO matched_agent (name, phone, wasap, email, property_type, house_type, others_description,location_client) VALUES (?, ?, ?, ?, ?, ?, ?, ?)");
            $stmt->execute([$name, $phone, $wasap, $email, $propertyType, $houseType, $othersDescription, $location_client]);

            header("Location: payment-success.php");
            exit();

        } catch (PDOException $e) {
            die("Database error: " . $e->getMessage());
        }
    } else {
        die("Payment verification failed: " . $responseData['message']);
    }
} else {
    die("No transaction reference found.");
}
?>
