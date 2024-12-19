<?php include 'header.php'; ?>

<div class="page-top" style="background-image: url('<?php echo BASE_URL; ?>uploads/banner.jpg')">
    <div class="bg"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2>Blog</h2>
            </div>
        </div>
    </div>
</div>

<div class="blog">
    <div class="container">
        <div class="row">

            <?php
            $per_page = 12;
            $q = $pdo->prepare("SELECT * FROM posts ORDER BY id DESC");
            $q->execute();
            $total = $q->rowCount();
            
            $total_pages = ceil($total/$per_page);    
            
            if(!isset($_REQUEST['p'])) {
                $start = 1;
            } else {
                $start = $per_page * ($_REQUEST['p']-1) + 1;
            }
            
            $j=0;
            $k=0;
            $arr1 = [];
            $res = $q->fetchAll();
            foreach($res as $row) {
                $j++;
                if($j>=$start) {
                    $k++;
                    if($k>$per_page) {break;}
                    $arr1[] = $row['id'];
                }
            }
            ?>
            <?php
            foreach ($res as $row) {
            
                if(!in_array($row['id'],$arr1)) {
                    continue;
                }
            
                ?>
                <div class="col-lg-4 col-md-6">
                        <div class="item">
                            <div class="photo">
                                <img src="<?php echo BASE_URL; ?>uploads/<?php echo $row['photo']; ?>" alt="">
                            </div>
                            <div class="text">
                                <h2>
                                    <a href="<?php echo BASE_URL; ?>post/<?php echo $row['slug']; ?>"><?php echo $row['title']; ?></a>
                                </h2>
                                <div class="short-des">
                                    <p>
                                        <?php echo $row['short_description']; ?>
                                    </p>
                                </div>
                                <div class="button">
                                    <a href="<?php echo BASE_URL; ?>post/<?php echo $row['slug']; ?>" class="btn btn-primary">Read More</a>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php
            }
            
            ?><div class="col-md-12"><?php 
            if($total_pages>1):
            if(isset($_REQUEST['p'])) {
                if($_REQUEST['p'] == 1) {
                    echo '<a class="links" href="javascript:void;" style="background:#ddd;"> << </a>';
                } else {
                    echo '<a class="links" href="'.BASE_URL.'blog.php?p='.($_REQUEST['p']-1).'"> << </a>';
                }
            } else {
                echo '<a class="links" href="javascript:void;" style="background:#ddd;"> << </a>';
            }
            
            
            for($i=1;$i<=$total_pages;$i++) {
                echo '<a class="links" href="'.BASE_URL.'blog.php?p='.$i.'">'.$i.'</a>';
            }
            
            if(isset($_REQUEST['p'])) {
                if($_REQUEST['p'] == $total_pages) {
                    echo '<a class="links" href="javascript:void;" style="background:#ddd;"> >> </a>';
                } else {
                    echo '<a class="links" href="'.BASE_URL.'blog.php?p='.($_REQUEST['p']+1).'"> >> </a>';
                }
            } else {
                echo '<a class="links" href="'.BASE_URL.'blog.php?p=2"> >> </a>';
            }
            endif;
            ?>
            </div>

            
            
        </div>
    </div>
</div>

<?php include 'footer.php'; ?>