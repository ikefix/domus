<?php include 'header.php'; ?>

<?php
if(!isset($_SESSION['agent'])) {
    header('location: '.BASE_URL.'agent-login');
    exit;
}

// Initialize variables
$error_message = null;

function getPackageData($pdo, $packageId) {
    $statement = $pdo->prepare("SELECT * FROM packages WHERE id=?");
    $statement->execute([$packageId]);
    return $statement->fetch(PDO::FETCH_ASSOC);
}

if (isset($_POST['form_paystack'])) {
    try {
        // Fetch selected package data
        $packageData = getPackageData($pdo, $_POST['package_id']);
        $allowed_properties = $packageData['allowed_properties'];
        $_SESSION['package_id'] = $packageData['id'];
        $_SESSION['price'] = $packageData['price'];
        $_SESSION['allowed_days'] = $packageData['allowed_days'];

        // Check if total properties exceed allowed properties (for downgrades)
        $statement = $pdo->prepare("SELECT * FROM properties WHERE agent_id=?");
        $statement->execute([$_SESSION['agent']['id']]);
        $total_properties = $statement->rowCount();

        if ($allowed_properties != -1 && $total_properties > $allowed_properties) {
            unset($_SESSION['package_id']);
            unset($_SESSION['price']);
            unset($_SESSION['allowed_days']);
            throw new Exception('You are going to downgrade your package. Please delete some properties first so that it does not exceed the selected package\'s total allowed properties limit.');
        }

        // Handle free plan
        if ($packageData['price'] == 0) {
            $pdo->beginTransaction();

            // Set previous active orders to inactive
            $statement = $pdo->prepare("UPDATE orders SET currently_active = 0 WHERE agent_id = ? AND currently_active = 1");
            $statement->execute([$_SESSION['agent']['id']]);

            // Insert the free plan order
            $statement = $pdo->prepare("INSERT INTO orders 
                (agent_id, package_id, transaction_id, payment_method, paid_amount, status, purchase_date, expire_date, currently_active) 
                VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)");
            $statement->execute([
                $_SESSION['agent']['id'],
                $packageData['id'],          // Package ID for free plan
                null,                        // No transaction ID for free
                'Free Plan',                 // Payment Method
                0,                           // Amount
                'Completed',                 // Status
                date('Y-m-d'),               // Purchase Date
                date('Y-m-d', strtotime('+' . $packageData['allowed_days'] . ' days')), // Expire Date
                1                            // Currently Active
            ]);

            $pdo->commit();

            // Clear session variables
            unset($_SESSION['package_id']);
            unset($_SESSION['price']);
            unset($_SESSION['allowed_days']);

            $_SESSION['success_message'] = 'You have successfully activated the Free Plan.';
            header('Location: ' . BASE_URL . 'agent-orders');
            exit;

        } else {
            // Prepare Paystack payment request
            $url = "https://api.paystack.co/transaction/initialize";
            $data = [
                'email' => $_SESSION['agent']['email'], // Agent's email
                'amount' => $_SESSION['price'] * 100,   // Amount in kobo
                'callback_url' => BASE_URL . 'agent-paystack-success.php', // Callback URL
            ];

            $ch = curl_init($url);
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
            curl_setopt($ch, CURLOPT_POST, true);
            curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($data));
            curl_setopt($ch, CURLOPT_HTTPHEADER, [
                "Authorization: Bearer sk_live_d46c07f08130c16479dff3be6010f16c38012b07", // Paystack secret key
                "Cache-Control: no-cache",
            ]);

            $response = json_decode(curl_exec($ch), true);
            curl_close($ch);

            if ($response['status']) {
                // Redirect to Paystack authorization URL
                header('Location: ' . $response['data']['authorization_url']);
                exit;
            } else {
                throw new Exception($response['message']);
            }
        }
    } catch (Exception $e) {
        $error_message = $e->getMessage();
    }
}

?>


<div class="page-top" style="background-image: url('<?php echo BASE_URL; ?>uploads/banner.jpg')">
    <div class="bg"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2>Payment</h2>
            </div>
        </div>
    </div>
</div>

<div class="page-content user-panel">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-12">
                <?php include 'agent-sidebar.php'; ?>
            </div>
            <div class="col-lg-9 col-md-12">
                <h4>Currently Active Plan</h4>
                
                <div class="row box-items mb-4">
                    <?php
                    $statement = $pdo->prepare("SELECT * FROM orders 
                                                JOIN packages 
                                                ON orders.package_id=packages.id 
                                                WHERE agent_id=? AND currently_active=?");
                    $statement->execute([$_SESSION['agent']['id'],1]);
                    $result = $statement->fetchAll(PDO::FETCH_ASSOC);
                    $total = $statement->rowCount();
                    ?>

                    <?php if($total): ?>
                    <div class="col-md-4">
                        <div class="box1">
                            <?php
                            foreach ($result as $row) {
                                ?>
                                <h4>₦<?php echo $row['price']; ?></h4>
                                <p><?php echo $row['name']; ?></p>
                                <?php
                            }
                            ?>
                        </div>
                    </div>
                    <?php else: ?>
                    <div class="col-md-12 text-danger">
                        No Package Found.
                    </div>
                    <?php endif; ?>
                </div>

                <?php
                if(isset($error_message)) {
                    echo "<div class='text-danger mb_20'>" . htmlspecialchars($error_message) . "</div>";
                }
                ?>

                <h4>Upgrade Plan (Make Payment)</h4>
                <div class="table-responsive">
                    <table class="table table-bordered upgrade-plan-table">
                        <tr>
                            <td>
                                <form action="" method="post">
                                <select name="package_id" class="form-control select2">
                                    <?php
                                    $statement = $pdo->prepare("SELECT * FROM packages ORDER BY id ASC");
                                    $statement->execute();
                                    $result = $statement->fetchAll(PDO::FETCH_ASSOC);
                                    foreach ($result as $row) {
                                        ?>
                                            <option value="<?php echo $row['id']; ?>"><?php echo $row['name']; ?> (₦<?php echo $row['price']; ?>)</option>    
                                        <?php
                                    }
                                    ?>
                                </select>
                            </td>
                            <td>
                                <button type="submit" class="btn btn-secondary btn-sm buy-button" name="form_paypal">Pay with PayPal</button>
                                </form>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <form action="" method="post">
                                <select name="package_id" class="form-control select2">
                                    <?php
                                    $statement = $pdo->prepare("SELECT * FROM packages ORDER BY id ASC");
                                    $statement->execute();
                                    $result = $statement->fetchAll(PDO::FETCH_ASSOC);
                                    foreach ($result as $row) {
                                        ?>
                                            <option value="<?php echo $row['id']; ?>"><?php echo $row['name']; ?> (₦<?php echo $row['price']; ?>)</option>    
                                        <?php
                                    }
                                    ?>
                                </select>
                            </td>
                            <td>
                                <button type="submit" class="btn btn-secondary btn-sm buy-button" name="form_stripe">Pay with Stripe</button>
                                </form>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <form action="" method="post">
                                <select name="package_id" class="form-control select2">
                                    <?php
                                    $statement = $pdo->prepare("SELECT * FROM packages ORDER BY id ASC");
                                    $statement->execute();
                                    $result = $statement->fetchAll(PDO::FETCH_ASSOC);
                                    foreach ($result as $row) {
                                        ?>
                                            <option value="<?php echo $row['id']; ?>"><?php echo $row['name']; ?> (₦<?php echo $row['price']; ?>)</option>    
                                        <?php
                                    }
                                    ?>
                                </select>
                            </td>
                            <td>
                                <button type="submit" class="btn btn-secondary btn-sm buy-button" name="form_paystack">Pay with Paystack</button>
                                </form>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<?php include 'footer.php'; ?>
