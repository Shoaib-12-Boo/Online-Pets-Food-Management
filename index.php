<?php
session_start();
error_reporting(0);
include('includes/config.php');
if(isset($_GET['action']) && $_GET['action']=="add"){
	$id=intval($_GET['id']);
	if(isset($_SESSION['cart'][$id])){
		$_SESSION['cart'][$id]['quantity']++;
	}else{
		$sql_p="SELECT * FROM products WHERE id={$id}";
		$query_p=mysqli_query($con,$sql_p);
		if(mysqli_num_rows($query_p)!=0){
			$row_p=mysqli_fetch_array($query_p);
			$_SESSION['cart'][$row_p['id']]=array("quantity" => 1, "price" => $row_p['productPrice']);
			header('location:index.php');
		}else{
			$message="Product ID is invalid";
		}
	}
}


?>
<!DOCTYPE html>
<html lang="en">
	<head>
		<!-- Meta -->
		<meta charset="utf-8">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
		<meta name="description" content="">
		<meta name="author" content="">
	    <meta name="keywords" content="MediaCenter, Template, eCommerce">
	    <meta name="robots" content="all">

	    <title>PetWell | Online Pet Food Store</title>

	    <!-- Bootstrap Core CSS -->
	    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
	    <!-- Customizable CSS -->
	    <link rel="stylesheet" href="assets/css/main.css">
	    <link rel="stylesheet" href="assets/css/green.css">
	    <link rel="stylesheet" href="assets/css/owl.carousel.css">
		<link rel="stylesheet" href="assets/css/owl.transitions.css">
		<!--<link rel="stylesheet" href="assets/css/owl.theme.css">-->
		<link href="assets/css/lightbox.css" rel="stylesheet">
		<link rel="stylesheet" href="assets/css/animate.min.css">
		<link rel="stylesheet" href="assets/css/rateit.css">
		<link rel="stylesheet" href="assets/css/bootstrap-select.min.css">

		<!-- Demo Purpose Only. Should be removed in production -->
		<link rel="stylesheet" href="assets/css/config.css">
		<link href="assets/css/green.css" rel="alternate stylesheet" title="Green color">
		<link href="assets/css/blue.css" rel="alternate stylesheet" title="Blue color">
		<link href="assets/css/red.css" rel="alternate stylesheet" title="Red color">
		<link href="assets/css/orange.css" rel="alternate stylesheet" title="Orange color">
		<link href="assets/css/dark-green.css" rel="alternate stylesheet" title="Darkgreen color">
		<link rel="stylesheet" href="assets/css/font-awesome.min.css">
		<link href='http://fonts.googleapis.com/css?family=Roboto:300,400,500,700' rel='stylesheet' type='text/css'>
		<!-- Favicon -->
		<link rel="shortcut icon" href="assets/images/favicon.png">

	</head>
    <body class="cnt-home" style="color: #333333; font: 12px/1.335 'Open Sans', Arial, Helvetica, sans-serif;">
		<!-- ============================================== HEADER ============================================== -->
<header class="header-style-1">
<?php include('includes/top-header.php');?>
<?php include('includes/main-header.php');?>
<?php include('includes/menu-bar.php');?>
</header>

   <section class="banner" >
        <div class="fluid-container" style="background: url(assets/images/banners/pet-banner.jpg);background-size:cover;overflow:hidden;max-height:620px;height:300px;max-width:100%;position:relative;">
            <div class="fluid-container" style="height:100%;width:500px;display:flex;align-items:center;display:flex;flex-direction:column">
                <span class="title-text" style="color:#fff;font-size:35px;font-weight:bold;margin-bottom:15px; padding-top: 30px; padding-left: 40px;">Find your pets Food!</span>
                <span class="content-text" style="color:#fff;font-size:16px;margin-bottom:15px; padding-left: 100px;"> Pakistan’s largest online pet store where you can find all you want for a pet. We have all type of brands like Royal Canin, Nutragold, Bonnie, Brit, Dibaq, Mera Finest Fit, Happy cat food, Meow mix, Mera Classic, Mr Pet, Proline food.</span>
                <div class="actions"style="display:flex;align-items:center">
                    <a href="#" class="btn btn-success" style="background: #FFDF2A;border: 0;color:#022A58;border-radius:0 3px 3px 0;box-sizing:border-box;float:left;font-size:1.3em;line-height:17px;margin:0;padding:8px 15px 9px;text-transform:capitalize;-webkit-box-sizing:border-box;-moz-box-sizing:border-box;"><b>Learn How</b></a>
                </div>
            </div>
        </div>
        <div class="container"></div>
    </section>
<!-- ============================================== HEADER : END ============================================== -->
<div class="body-content outer-top-xs" id="top-banner-and-menu">
	<div class="container">
		<div class="furniture-container homepage-container">
		<div class="row">

			<div class="col-xs-12 col-sm-12 col-md-3 sidebar">
				<!-- ================================== TOP NAVIGATION ================================== -->
	<?php include('includes/side-menu.php');?>
<!-- ================================== TOP NAVIGATION : END ================================== -->
			</div><!-- /.sidemenu-holder -->
			<div class="col-xs-12 col-sm-12 col-md-9 homebanner-holder">
				<!-- ========================================== SECTION – HERO ========================================= -->
<div id="hero" class="homepage-slider3">
	<div id="owl-main" class="owl-carousel owl-inner-nav owl-ui-sm">
		<div class="full-width-slider">
			<div class="item" style="background-image: url(assets/images/sliders/sliders/banner-1.jpg);">
				<!-- /.container-fluid -->
			</div><!-- /.item -->
		</div><!-- /.full-width-slider -->
	    <div class="full-width-slider">
			<div class="item full-width-slider" style="background-image: url(assets/images/sliders/sliders/banner-2.jpg);">
			</div><!-- /.item -->
		</div><!-- /.full-width-slider -->

        <div class="full-width-slider">
			<div class="item full-width-slider" style="background-image: url(assets/images/sliders/sliders/banner-3.jpg);">
			</div><!-- /.item -->
		</div><!-- /.full-width-slider -->

		<div class="full-width-slider">
			<div class="item full-width-slider" style="background-image: url(assets/images/sliders/sliders/banner-4.jpg);">
			</div><!-- /.item -->
		</div><!-- /.full-width-slider -->


	</div><!-- /.owl-carousel -->
</div>

<!-- ========================================= SECTION – HERO : END ========================================= -->
				<!-- ============================================== INFO BOXES ============================================== -->
<div class="info-boxes wow fadeInUp">
	<div class="info-boxes-inner">
		<div class="row">
			<div class="col-md-6 col-sm-4 col-lg-4">
				<div class="info-box">
					<div class="row">
						<div class="col-xs-2">
						     <i class="icon fa fa-dollar"></i>
						</div>
						<div class="col-xs-10">
							<h4 class="info-box-heading green" style="color: #7BAE23;">money back</h4>
						</div>
					</div>	
					<h6 class="text">30 Day Money Back Guarantee.</h6>
				</div>
			</div><!-- .col -->

			<div class="hidden-md col-sm-4 col-lg-4">
				<div class="info-box">
					<div class="row">
						<div class="col-xs-2">
							<i class="icon fa fa-truck"></i>
						</div>
						<div class="col-xs-10">
							<h4 class="info-box-heading orange" style="color: #FFC30C;">free shipping</h4>
						</div>
					</div>
					<h6 class="text">free ship-on over Rs.600/-</h6>
				</div>
			</div><!-- .col -->

			<div class="col-md-6 col-sm-4 col-lg-4">
				<div class="info-box">
					<div class="row">
						<div class="col-xs-2">
							<i class="icon fa fa-gift"></i>
						</div>
						<div class="col-xs-10">
							<h4 class="info-box-heading red" style="color: #FF2B1E;">Special Sale</h4>
						</div>
					</div>
					<h6 class="text">All items-sale up to 20% off </h6>
				</div>
			</div><!-- .col -->
		</div><!-- /.row -->
	</div><!-- /.info-boxes-inner -->
</div></br></br><!-- /.info-boxes -->
<!-- ============================================== INFO BOXES : END ============================================== -->
			</div><!-- /.homebanner-holder -->

		</div><!-- /.row -->

		<!-- ============================================== SCROLL TABS ============================================== -->
		<div id="product-tabs-slider" class="scroll-tabs inner-bottom-vs  wow fadeInUp">
			<div class="more-info-tab clearfix">
			   <h3 class="new-product-title pull-left" style="font: 24px/1.335 'Open Sans', Arial, Helvetica, sans-serif; text-transform: capitalize;"><b>Customer Favorites</b></h3>
				<ul class="nav nav-tabs nav-tab-line pull-right" id="new-products-1">
					<li class="active"><a href="#all" data-toggle="tab">All</a></li>
					<li><a href="#books" data-toggle="tab">Cat Foods</a></li>
					<li><a href="#furniture" data-toggle="tab">Bird Foods</a></li>
				</ul><!-- /.nav-tabs -->
			</div>

			<div class="tab-content outer-top-xs">
				<div class="tab-pane in active" id="all">
					<div class="product-slider">
						<div class="owl-carousel home-owl-carousel custom-carousel owl-theme" data-item="4">
<?php
$ret=mysqli_query($con,"select * from products");
while ($row=mysqli_fetch_array($ret))
{
	# code...

?>

	<div class="item item-carousel">
	<div class="products">
	<div class="product">
		<div class="product-image">
			<div class="image">
				<a href="product-details.php?pid=<?php echo htmlentities($row['id']);?>">
				<img  src="admin/productimages/<?php echo htmlentities($row['id']);?>/<?php echo htmlentities($row['productImage1']);?>" data-echo="admin/productimages/<?php echo htmlentities($row['id']);?>/<?php echo htmlentities($row['productImage1']);?>"  width="180" height="300" alt=""></a>
			</div><!-- /.image -->
		</div><!-- /.product-image -->

		<div class="product-info text-left">
			<h3 class="name"><a href="product-details.php?pid=<?php echo htmlentities($row['id']);?>"><?php echo htmlentities($row['productName']);?></a></h3>
			<div class="rating rateit-small"></div>
			<div class="description"></div>

			<div class="product-price">
				<span class="price">Rs.<?php echo htmlentities($row['productPrice']);?></span>
				<span class="price-before-discount">Rs.<?php echo htmlentities($row['productPriceBeforeDiscount']);?></span>
			</div><!-- /.product-price -->
		</div><!-- /.product-info -->
		<div class="action">
			<a href="index.php?page=product&action=add&id=<?php echo $row['id']; ?>" class="lnk btn btn-primary">Add to Cart</a></div>
		</div><!-- /.product -->
	</div><!-- /.products -->
	</div><!-- /.item -->
	<?php } ?>
	</div><!-- /.home-owl-carousel -->
	</div><!-- /.product-slider -->
	</div>

	<div class="tab-pane" id="books">
		<div class="product-slider">
			<div class="owl-carousel home-owl-carousel custom-carousel owl-theme">
		<?php
$ret=mysqli_query($con,"select * from products where category=3");
while ($row=mysqli_fetch_array($ret))
{
	# code...
?>

		<div class="item item-carousel">
			<div class="products">
				<div class="product">
					<div class="product-image">
						<div class="image">
							<a href="product-details.php?pid=<?php echo htmlentities($row['id']);?>">
							<img  src="admin/productimages/<?php echo htmlentities($row['id']);?>/<?php echo htmlentities($row['productImage1']);?>" data-echo="admin/productimages/<?php echo htmlentities($row['id']);?>/<?php echo htmlentities($row['productImage1']);?>"  width="180" height="300" alt="">
							</a>
						</div><!-- /.image -->
					</div><!-- /.product-image -->
					<div class="product-info text-left">
						<h3 class="name">
							<a href="product-details.php?pid=<?php echo htmlentities($row['id']);?>"><?php echo htmlentities($row['productName']);?></a>
						</h3>
						<div class="rating rateit-small"></div>
						<div class="description"></div>
						<div class="product-price">
							<span class="price">Rs. <?php echo htmlentities($row['productPrice']);?></span>
							<span class="price-before-discount">Rs.<?php echo htmlentities($row['productPriceBeforeDiscount']);?></span>
						</div><!-- /.product-price -->
					</div><!-- /.product-info -->
					<div class="action">
						<a href="index.php?page=product&action=add&id=<?php echo $row['id']; ?>" class="lnk btn btn-primary">Add to Cart</a>
					</div>
				</div><!-- /.product -->
			</div><!-- /.products -->
		</div><!-- /.item -->
	<?php } ?>
	</div><!-- /.home-owl-carousel -->
	</div><!-- /.product-slider -->
	</div>


	<div class="tab-pane" id="furniture">
		<div class="product-slider">
			<div class="owl-carousel home-owl-carousel custom-carousel owl-theme">
		<?php
$ret=mysqli_query($con,"select * from products where category=5");
while ($row=mysqli_fetch_array($ret))
{
?>

		<div class="item item-carousel">
			<div class="products">
				<div class="product">
					<div class="product-image">
						<div class="image">
							<a href="product-details.php?pid=<?php echo htmlentities($row['id']);?>">
							<img  src="admin/productimages/<?php echo htmlentities($row['id']);?>/<?php echo htmlentities($row['productImage1']);?>" data-echo="admin/productimages/<?php echo htmlentities($row['id']);?>/<?php echo htmlentities($row['productImage1']);?>"  width="180" height="300" alt="">
							</a>
						</div>
					</div>
					<div class="product-info text-left">
			        	<h3 class="name">
			        		<a href="product-details.php?pid=<?php echo htmlentities($row['id']);?>"><?php echo htmlentities($row['productName']);?>
			        		</a>
			        	</h3>
						<div class="rating rateit-small"></div>
						<div class="description"></div>
						<div class="product-price">
							<span class="price">Rs.<?php echo htmlentities($row['productPrice']);?>	</span>
							<span class="price-before-discount">Rs.<?php echo htmlentities($row['productPriceBeforeDiscount']);?></span>
						</div>
					</div>
					<div class="action">
						<a href="index.php?page=product&action=add&id=<?php echo $row['id']; ?>" class="lnk btn btn-primary">Add to Cart</a>
					</div>
				</div>
			</div>
		</div>
	<?php } ?>
		</div>
		</div>
		</div>
		</div>
		</div>


         <!-- ============================================== TABS ============================================== -->
			<div class="sections prod-slider-small outer-top-small">
				<div class="row">
					<div class="col-md-6">
	                   <section class="section">
	                   	<h3 class="section-title" style="font: 24px/1.335 'Open Sans', Arial, Helvetica, sans-serif; text-transform: capitalize;"><b>Customer Favorites - Dog Foods</b></h3>
	                   	<div class="owl-carousel homepage-owl-carousel custom-carousel outer-top-xs owl-theme" data-item="2">
<?php
$ret=mysqli_query($con,"select * from products where category=4 and subCategory=4");
while ($row=mysqli_fetch_array($ret))
{
?>

		<div class="item item-carousel">
			<div class="products">
	<div class="product">
		<div class="product-image">
			<div class="image">
				<a href="product-details.php?pid=<?php echo htmlentities($row['id']);?>"><img  src="admin/productimages/<?php echo htmlentities($row['id']);?>/<?php echo htmlentities($row['productImage1']);?>" data-echo="admin/productimages/<?php echo htmlentities($row['id']);?>/<?php echo htmlentities($row['productImage1']);?>"  width="180" height="300"></a>
			</div><!-- /.image -->
		</div><!-- /.product-image -->

		<div class="product-info text-left">
			<h3 class="name"><a href="product-details.php?pid=<?php echo htmlentities($row['id']);?>"><?php echo htmlentities($row['productName']);?></a></h3>
			<div class="rating rateit-small"></div>
			<div class="description"></div>

			<div class="product-price">
				<span class="price">
					Rs. <?php echo htmlentities($row['productPrice']);?>			</span>
										     <span class="price-before-discount">Rs.<?php echo htmlentities($row['productPriceBeforeDiscount']);?></span>
			</div>

		</div>
					<div class="action"><a href="index.php?page=product&action=add&id=<?php echo $row['id']; ?>" class="lnk btn btn-primary">Add to Cart</a></div>
			</div>
			</div>
		</div>
<?php }?>

			                   	</div>
	                   </section>
					</div>
					<div class="col-md-6">
						<section class="section">
							<h3 class="section-title" style="font: 24px/1.335 'Open Sans', Arial, Helvetica, sans-serif; text-transform: capitalize;"><b>Customer Favorites - Cat Foods</b></h3>
		                   	<div class="owl-carousel homepage-owl-carousel custom-carousel outer-top-xs owl-theme" data-item="2">
	<?php
$ret=mysqli_query($con,"select * from products where category=3");
while ($row=mysqli_fetch_array($ret))
{
?>

		<div class="item item-carousel">
			<div class="products">
	<div class="product">
		<div class="product-image">
			<div class="image">
				<a href="product-details.php?pid=<?php echo htmlentities($row['id']);?>"><img  src="admin/productimages/<?php echo htmlentities($row['id']);?>/<?php echo htmlentities($row['productImage1']);?>" data-echo="admin/productimages/<?php echo htmlentities($row['id']);?>/<?php echo htmlentities($row['productImage1']);?>"  width="300" height="300"></a>
			</div><!-- /.image -->
		</div><!-- /.product-image -->

		<div class="product-info text-left">
			<h3 class="name"><a href="product-details.php?pid=<?php echo htmlentities($row['id']);?>"><?php echo htmlentities($row['productName']);?></a></h3>
			<div class="rating rateit-small"></div>
			<div class="description"></div>

			<div class="product-price">
				<span class="price">
					Rs .<?php echo htmlentities($row['productPrice']);?>			</span>
										     <span class="price-before-discount">Rs.<?php echo htmlentities($row['productPriceBeforeDiscount']);?></span>

			</div>

		</div>
					<div class="action"><a href="index.php?page=product&action=add&id=<?php echo $row['id']; ?>" class="lnk btn btn-primary">Add to Cart</a></div>
			</div>
			</div>
		</div>
<?php }?>

				                   	</div>
	                   </section>

					</div>
				</div>
			</div>
		<!-- ============================================== TABS : END ============================================== -->

	<section class="section featured-product inner-xs wow fadeInUp">
		<h3 class="section-title" style="font: 24px/1.335 'Open Sans', Arial, Helvetica, sans-serif; text-transform: capitalize;"><b>Best Selling Pet Accessories</b></h3>
		<div class="owl-carousel best-seller custom-carousel owl-theme outer-top-xs">
			<?php
$ret=mysqli_query($con,"select * from products where category=6");
while ($row=mysqli_fetch_array($ret))
{
	# code...
?>
				<div class="item">
					<div class="products">




												<div class="product">
							<div class="product-micro">
								<div class="row product-micro-row">
									<div class="col col-xs-6">
										<div class="product-image">
											<div class="image">
												<a href="admin/productimages/<?php echo htmlentities($row['id']);?>/<?php echo htmlentities($row['productImage1']);?>" data-lightbox="image-1" data-title="<?php echo htmlentities($row['productName']);?>">
													<img data-echo="admin/productimages/<?php echo htmlentities($row['id']);?>/<?php echo htmlentities($row['productImage1']);?>" width="170" height="174" alt="">
													<div class="zoom-overlay"></div>
												</a>
											</div><!-- /.image -->

										</div><!-- /.product-image -->
									</div><!-- /.col -->
									<div class="col col-xs-6">
										<div class="product-info">
											<h3 class="name"><a href="product-details.php?pid=<?php echo htmlentities($row['id']);?>"><?php echo htmlentities($row['productName']);?></a></h3>
											<div class="rating rateit-small"></div>
											<div class="product-price">
												<span class="price">
													Rs. <?php echo htmlentities($row['productPrice']);?>
												</span>

											</div><!-- /.product-price -->
											<div class="action"><a href="index.php?page=product&action=add&id=<?php echo $row['id']; ?>" class="lnk btn btn-primary">Add To Cart</a></div>
										</div>
									</div><!-- /.col -->
								</div><!-- /.product-micro-row -->
							</div><!-- /.product-micro -->
						</div>


											</div>
				</div><?php } ?>
							</div>
		</section>
<?php include('includes/brands-slider.php');?>
</div>
</div>
<?php include('includes/footer.php');?>

	<script src="assets/js/jquery-1.11.1.min.js"></script>

	<script src="assets/js/bootstrap.min.js"></script>

	<script src="assets/js/bootstrap-hover-dropdown.min.js"></script>
	<script src="assets/js/owl.carousel.min.js"></script>

	<script src="assets/js/echo.min.js"></script>
	<script src="assets/js/jquery.easing-1.3.min.js"></script>
	<script src="assets/js/bootstrap-slider.min.js"></script>
    <script src="assets/js/jquery.rateit.min.js"></script>
    <script type="text/javascript" src="assets/js/lightbox.min.js"></script>
    <script src="assets/js/bootstrap-select.min.js"></script>
    <script src="assets/js/wow.min.js"></script>
	<script src="assets/js/scripts.js"></script>

	<!-- For demo purposes – can be removed on production -->
	
	<script src="switchstylesheet/switchstylesheet.js"></script>
	
	<script>
		$(document).ready(function(){ 
			$(".changecolor").switchstylesheet( { seperator:"color"} );
			$('.show-theme-options').click(function(){
				$(this).parent().toggleClass('open');
				return false;
			});
		});

		$(window).bind("load", function() {
		   $('.show-theme-options').delay(2000).trigger('click');
		});
	</script>
	<!-- For demo purposes – can be removed on production : End -->

</body>
</html>