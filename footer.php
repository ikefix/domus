<?php
$statement = $pdo->prepare("SELECT * FROM settings WHERE id=?");
$statement->execute([1]);
$footer_data = $statement->fetchAll(PDO::FETCH_ASSOC);
?>
<div class="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6">
                    <div class="item">
                        <h2 class="heading">Important Links</h2>
                        <ul class="useful-links">
                            <li><a href="<?php echo BASE_URL; ?>">Home</a></li>
                            <li><a href="<?php echo BASE_URL; ?>properties.php?name=&location_id=&type_id=&amenity_id=&purpose=&bedrooms=&bathrooms=&price=&p=1">Properties</a></li>
                            <li><a href="<?php echo BASE_URL; ?>agents/1">Agents</a></li>
                            <li><a href="<?php echo BASE_URL; ?>blog">Blog</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="item">
                        <h2 class="heading">Locations</h2>
                        <ul class="useful-links">
                            <?php
                            $statement = $pdo->prepare("SELECT * FROM locations ORDER BY name ASC LIMIT 4");
                            $statement->execute();
                            $result = $statement->fetchAll(PDO::FETCH_ASSOC);
                            foreach ($result as $row) {
                                ?>
                                <li><a href="<?php echo BASE_URL; ?>location/<?php echo $row['slug']; ?>"><?php echo $row['name']; ?></a></li>
                                <?php
                            }
                            ?>
                        </ul>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6">
                    <div class="item">
                        <h2 class="heading">Contact</h2>
                        <div class="list-item">
                            <div class="left">
                                <i class="fas fa-map-marker-alt"></i>
                            </div>
                            <div class="right">
                                <?php echo $footer_data[0]['address']; ?>
                            </div>
                        </div>
                        <div class="list-item">
                            <div class="left">
                                <i class="fas fa-phone"></i>
                            </div>
                            <div class="right"><?php echo $footer_data[0]['email']; ?></div>
                        </div>
                        <div class="list-item">
                            <div class="left">
                                <i class="fas fa-envelope"></i>
                            </div>
                            <div class="right"><?php echo $footer_data[0]['phone']; ?></div>
                        </div>

                        <?php if($footer_data[0]['facebook']!='' || $footer_data[0]['twitter']!='' || $footer_data[0]['linkedin']!='' || $footer_data[0]['instagram']!='' || $footer_data[0]['youtube']!=''): ?>
                        <ul class="social">

                            <?php if($footer_data[0]['facebook']!=''): ?>
                            <li>
                                <a href="<?php echo $footer_data[0]['facebook']; ?>"><i class="fab fa-facebook-f"></i></a>
                            </li>
                            <?php endif; ?>

                            <?php if($footer_data[0]['twitter']!=''): ?>
                            <li>
                                <a href="<?php echo $footer_data[0]['twitter']; ?>"><i class="fab fa-twitter"></i></a>
                            </li>
                            <?php endif; ?>

                            <?php if($footer_data[0]['youtube']!=''): ?>
                            <li>
                                <a href="<?php echo $footer_data[0]['youtube']; ?>"><i class="fab fa-youtube"></i></a>
                            </li>
                            <?php endif; ?>

                            <?php if($footer_data[0]['linkedin']!=''): ?>
                            <li>
                                <a href="<?php echo $footer_data[0]['linkedin']; ?>"><i class="fab fa-linkedin-in"></i></a>
                            </li>
                            <?php endif; ?>

                            <?php if($footer_data[0]['instagram']!=''): ?>
                            <li>
                                <a href="<?php echo $footer_data[0]['instagram']; ?>"><i class="fab fa-instagram"></i></a>
                            </li>
                            <?php endif; ?>

                        </ul>
                        <?php endif; ?>

                        
                    </div>
                </div>

                <div class="col-lg-3 col-md-6">
                    <div class="item">
                        <h2 class="heading">Newsletter</h2>
                        <p>
                            To get the latest news from our website, please
                            subscribe us here:
                        </p>
                        <form action="<?php echo BASE_URL; ?>ajax-newsletter.php" method="post" class="form_newsletter">
                            <div class="form-group">
                                <input type="text" name="email" class="form-control" placeholder="Enter your email">
                            </div>
                            <div class="form-group">
                                <input type="submit" class="btn btn-primary" value="Subscribe Now">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="footer-bottom">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="copyright">
                        <?php echo $footer_data[0]['copyright']; ?>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="right">
                        <ul>
                            <li>
                                <a href="<?php echo BASE_URL; ?>terms-of-use">Terms of Use</a>
                            </li>
                            <li>
                                <a href="<?php echo BASE_URL; ?>privacy-policy">Privacy Policy</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="scroll-top">
        <i class="fas fa-angle-up"></i>
    </div>


    <script>
(function($){
	"use strict";
	$(document).ready(function(){
		$(".form_newsletter").on('submit', function(e){
			e.preventDefault();
			let formData = new FormData(this);
			let form = this;
			$.ajax({
				url: this.action,
	            type: 'POST',
	            data: formData,
				success: function(data) {
					data = JSON.parse(data);
					if(data.error_message) {
                        iziToast.show({
                            message: data.error_message,
                            position: 'topRight',
                            color: 'red',
                        });
					} else {
						form.reset();
                        iziToast.show({
                            message: data.success_message,
                            position: 'topRight',
                            color: 'green',
                        });
					}
				},
				cache:false,
				contentType:false,
				processData:false
			});
		});
	});
})(jQuery);
</script>

    <script src="<?php echo BASE_URL; ?>dist/js/custom.js"></script>

    <?php if(isset($error_message)): ?>
    <script>
        iziToast.show({
            message: '<?php echo $error_message; ?>',
            position: 'topRight',
            color: 'red',
        });
    </script>
    <?php endif; ?>

    <?php if(isset($success_message)): ?>
    <script>
        iziToast.show({
            message: '<?php echo $success_message; ?>',
            position: 'topRight',
            color: 'green',
        });
    </script>
    <?php endif; ?>

    <?php if(isset($_SESSION['success_message'])): ?>
    <script>
        iziToast.show({
            message: '<?php echo $_SESSION['success_message']; ?>',
            position: 'topRight',
            color: 'green',
        });
    </script>
    <?php unset($_SESSION['success_message']); ?>
    <?php endif; ?>

    <?php if(isset($_SESSION['error_message'])): ?>
    <script>
        iziToast.show({
            message: '<?php echo $_SESSION['error_message']; ?>',
            position: 'topRight',
            color: 'red',
        });
    </script>
    <?php unset($_SESSION['error_message']); ?>
    <?php endif; ?>

</body>
</html>