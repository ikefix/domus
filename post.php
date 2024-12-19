<?php include 'header.php'; ?>

<?php
$statement = $pdo->prepare("SELECT * FROM posts WHERE slug=?");
$statement->execute(array($_REQUEST['slug']));
$result = $statement->fetchAll(PDO::FETCH_ASSOC);
$updated_total_view = $result[0]['total_view'] + 1;

$statement = $pdo->prepare("UPDATE posts SET total_view=? WHERE slug=?");
$statement->execute(array($updated_total_view,$_REQUEST['slug']));
?>

<div class="page-top" style="background-image: url('<?php echo BASE_URL; ?>uploads/banner.jpg')">
    <div class="bg"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2><?php echo $result[0]['title']; ?></h2>
            </div>
        </div>
    </div>
</div>

<div class="page-content">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8 col-md-12">
                <div class="featured-photo">
                    <img src="<?php echo BASE_URL; ?>uploads/<?php echo $result[0]['photo']; ?>" alt="" />
                </div>
                <div class="sub">
                    <div class="item">
                        <b><i class="fa fa-clock-o"></i></b>
                        <?php
                        $ts = strtotime($result[0]['posted_on']);
                        echo date("F j, Y", $ts);
                        ?>
                    </div>
                    <div class="item">
                        <b><i class="fa fa-eye"></i></b>
                        <?php echo $result[0]['total_view']; ?>
                    </div>
                </div>
                <div class="main-text">
                    <?php echo $result[0]['description']; ?>
                </div>
            </div>
        </div>
    </div>
</div>

<?php include 'footer.php'; ?>