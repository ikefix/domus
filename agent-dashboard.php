<?php include 'header.php'; ?>

<?php
if(!isset($_SESSION['agent'])) {
    header('location: '.BASE_URL.'agent-login');
    exit;
}
?>

<?php
$statement = $pdo->prepare("SELECT * FROM properties WHERE agent_id=?");
$statement->execute(array($_SESSION['agent']['id']));
$total_properties = $statement->rowCount();

$statement = $pdo->prepare("SELECT * FROM orders WHERE agent_id=?");
$statement->execute(array($_SESSION['agent']['id']));
$total_orders = $statement->rowCount();

$statement = $pdo->prepare("SELECT * FROM messages WHERE agent_id=?");
$statement->execute(array($_SESSION['agent']['id']));
$total_messages = $statement->rowCount();
?>

<div class="page-top" style="background-image: url('<?php echo BASE_URL; ?>uploads/banner.jpg')">
    <div class="bg"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2>Dashboard</h2>
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
                <h3 class="mb_20">Hello, <?php echo $_SESSION['agent']['full_name']; ?></h3>

                <div class="row box-items">
                    <div class="col-md-4">
                        <div class="box1">
                            <h4><?php echo $total_properties; ?></h4>
                            <p>Properties</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="box2">
                            <h4><?php echo $total_orders; ?></h4>
                            <p>Orders</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="box3">
                            <h4><?php echo $total_messages; ?></h4>
                            <p>Messages</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<?php include 'footer.php'; ?>