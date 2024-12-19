<?php include 'layouts/top.php'; ?>

<?php
if(!isset($_SESSION['admin'])) {
    header('location: '.ADMIN_URL.'login.php');
    exit;
}
?>

<?php
try {
    $statement = $pdo->prepare("SELECT * FROM properties WHERE type_id=?");
    $statement->execute([$_REQUEST['id']]);
    $total = $statement->rowCount();
    if($total) {
        throw new Exception('There are some properties under this type. So you can not delete this type.');
    }

    $statement = $pdo->prepare("DELETE FROM types WHERE id=?");
    $statement->execute([$_REQUEST['id']]);

    $success_message = "Type is deleted successfully.";
    $_SESSION['success_message'] = $success_message;
    header('location: '.ADMIN_URL.'type-view.php');
    exit;

} catch (Exception $e) {
    $error_message = $e->getMessage();
    $_SESSION['error_message'] = $error_message;
    header('location: '.ADMIN_URL.'type-view.php');
    exit;
}