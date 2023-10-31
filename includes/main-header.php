<?php 

 if(isset($_Get['action'])){
		if(!empty($_SESSION['cart'])){
		foreach($_POST['quantity'] as $key => $val){
			if($val==0){
				unset($_SESSION['cart'][$key]);
			}else{
				$_SESSION['cart'][$key]['quantity']=$val;
			}
		}
		}
	}
?>
	<div class="main-header">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-3 logo-holder">
					<!-- ============================================================= LOGO ============================================================= -->
<div class="logo">
	<a href="index.php"><img src="img/pet-logo.png" width="230" height="70" alt="" /></a>
</div>
</div>
<div class="col-xs-12 col-sm-12 col-md-6 top-search-holder">
<div>
        <form method="get" style="box-sizing:border-box;float:left;margin-left:2.44em;position:relative;width:466px;-webkit-box-sizing:border-box;-moz-box-sizing:border-box; top: 20px; left: 70px;">
                <legend style="height:0;left:-5000px;line-height:1%;overflow:hidden;position:absolute;text-indent:-9999em;width:0">Search This Site</legend>
                <label for="query" style="height:0;left:-5000px;line-height:1%;overflow:hidden;position:absolute;text-indent:-9999em;width:0;display:none;">Search Auctions and Items</label>
                <span class="search-icon" style="background:url('assets/images/icons-2f4352fab5b44c80a65111c4ab7f20bf.gif') no-repeat transparent -75px 0;background-size:100px 150px;display:block;height:16px;left:8px;outline:0;position:absolute;top:8px;width:16px;"> </span>
                <input name="query" id="query" placeholder="Search Food Items" type="text" style="background-color:#F8F8F8;border:1px solid #ccc;border-radius:3px 0 0 3px;box-sizing:border-box;color:#6a6a6a;float:left;height:34px;font-family:Arial, Helvetica, sans-serif;font-size:14px;outline:0;padding:3px 4px 3px 30px;width:383px;-webkit-box-sizing:border-box;-moz-box-sizing:border-box" />
                <button type="submit" name="search" style="background: #81bb35;border: 0;color:#fff;border-radius:0 3px 3px 0;box-sizing:border-box;float:left;font-size:1.15em;line-height:17px;margin:0;padding:8px 15px 9px;text-transform:capitalize;-webkit-box-sizing:border-box;-moz-box-sizing:border-box">Search</button>
        </form>
</div><!-- /.search-area -->
<!-- ============================================================= SEARCH AREA : END ============================================================= -->				</div><!-- /.top-search-holder -->

				<div class="col-xs-12 col-sm-12 col-md-3 animate-dropdown top-cart-row">
					<!-- ============================================================= SHOPPING CART DROPDOWN ============================================================= -->
<?php
if(!empty($_SESSION['cart'])){
	?>
	<div class="dropdown dropdown-cart">
		<a href="#" class="dropdown-toggle lnk-cart" data-toggle="dropdown">
			<div class="items-cart-inner">
				<div class="total-price-basket">
					<span class="lbl">cart -</span>
					<span class="total-price">
						<span class="sign">Rs.</span>
						<span class="value"><?php echo $_SESSION['tp']; ?></span>
					</span>
				</div>
				<div class="basket">
					<i class="glyphicon glyphicon-shopping-cart"></i>
				</div>
				<div class="basket-item-count"><span class="count"><?php echo $_SESSION['qnty'];?></span></div>
			
		    </div>
		</a>
		<ul class="dropdown-menu">
		
		 <?php
    $sql = "SELECT * FROM products WHERE id IN(";
			foreach($_SESSION['cart'] as $id => $value){
			$sql .=$id. ",";
			}
			$sql=substr($sql,0,-1) . ") ORDER BY id ASC";
			$query = mysqli_query($con,$sql);
			$totalprice=0;
			$totalqunty=0;
			if(!empty($query)){
			while($row = mysqli_fetch_array($query)){
				$quantity=$_SESSION['cart'][$row['id']]['quantity'];
				$subtotal= $_SESSION['cart'][$row['id']]['quantity']*$row['productPrice']+$row['shippingCharge'];
				$totalprice += $subtotal;
				$_SESSION['qnty']=$totalqunty+=$quantity;

	?>
		
		
			<li>
				<div class="cart-item product-summary">
					<div class="row">
						<div class="col-xs-4">
							<div class="image">
								<a href="detail.html"><img  src="admin/productimages/<?php echo $row['id'];?>/<?php echo $row['productImage1'];?>" width="35" height="50" alt=""></a>
							</div>
						</div>
						<div class="col-xs-7">
							
							<h3 class="name"><a href="index.php?page-detail"><?php echo $row['productName']; ?></a></h3>
							<div class="price">Rs.<?php echo ($row['productPrice']+$row['shippingCharge']); ?>*<?php echo $_SESSION['cart'][$row['id']]['quantity']; ?></div>
						</div>
						
					</div>
				</div><!-- /.cart-item -->
			
				<?php } }?>
				<div class="clearfix"></div>
			<hr>
		
			<div class="clearfix cart-total">
				<div class="pull-right">
					
						<span class="text">Total :</span><span class='price'>Rs.<?php echo $_SESSION['tp']="$totalprice". ".00"; ?></span>
						
				</div>
			
				<div class="clearfix"></div>
					
				<a href="my-cart.php" class="btn btn-upper btn-primary btn-block m-t-20">My Cart</a>	
			</div><!-- /.cart-total-->
					
				
		</li>
		</ul><!-- /.dropdown-menu-->
	</div><!-- /.dropdown-cart -->
<?php } else { ?>
<div class="dropdown dropdown-cart" >
		<a href="#" class="dropdown-toggle lnk-cart" data-toggle="dropdown">
			<div class="items-cart-inner">
				<div class="total-price-basket">
					<span class="lbl">cart -</span>
					<span class="total-price">
						<span class="sign">Rs.</span>
						<span class="value">00.00</span>
					</span>
				</div>
				<div class="basket">
					<i class="glyphicon glyphicon-shopping-cart"></i>
				</div>
				<div class="basket-item-count"><span class="count">0</span></div>
			
		    </div>
		</a>
		<ul class="dropdown-menu">
		
	
		
		
			<li>
				<div class="cart-item product-summary">
					<div class="row">
						<div class="col-xs-12">
							Your Shopping Cart is Empty.
						</div>
						
						
					</div>
				</div><!-- /.cart-item -->
			
				
			<hr>
		
			<div class="clearfix cart-total">
				
				<div class="clearfix"></div>
					
				<a href="index.php" class="btn btn-upper btn-primary btn-block m-t-20">Continue Shooping</a>	
			</div><!-- /.cart-total-->
					
				
		</li>
		</ul><!-- /.dropdown-menu-->
	</div>
	<?php }?>




<!-- ============================================================= SHOPPING CART DROPDOWN : END============================================================= -->				</div><!-- /.top-cart-row -->
			</div><!-- /.row -->

		</div><!-- /.container -->

	</div>


<!--     <header class="page clearfix" role="banner" style="color: #333333; font: 12px/1.335 'Open Sans', Arial, Helvetica, sans-serif;">
        <a href="biddingforgood.html" class="logo"><img src="assets/images/img/portal/logos.png" width="250" alt="BiddingForGood" height="61" /></a>
        <form method="get"  action="#">
            <fieldset id="search" role="search" class="clearfix" style="top: 20px; left: 70px;">
                <legend>Search This Site</legend>
                <label for="query" style="display:none;">Search Auctions and Items</label>
                <span class="search-icon"> </span>
                <input name="query" id="query" placeholder="Search Auctions and Items" type="text" />
                <button type="submit" name="search">Search</button>
            </fieldset>
        </form>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </header> -->