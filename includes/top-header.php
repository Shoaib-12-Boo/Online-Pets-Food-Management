<?php
//session_start();

?>

			<div class="bidder links" style="border-bottom:1px solid #e9e9e9;margin-top:1.0em;overflow:hidden;font: 12px/1.335 'Open Sans', Arial, Helvetica, sans-serif;">
				<div class="page" >
                    <ul class="list-unstyled" style="float:left;font-size:1.15em;margin-bottom:1.0em; padding-left: 50px;">
						<?php if(strlen($_SESSION['login'])){   ?>
						<li style="display:inline-block;padding:0 .75em 0 0;text-align:right"> <a href="#"><i class="fa fa-power-off"></i><b> Welcome - <?php echo htmlentities($_SESSION['username']);?></b></a></li><?php } ?>
						<li style="display:inline-block;padding:0 .75em 0 0;text-align:right"><a href="my-account.php"></i>My Account</a></li>
						<li style="display:inline-block;padding:0 .75em 0 0;text-align:right"><a href="my-wishlist.php">Wishlist</a></li>
						<?php if(strlen($_SESSION['login'])==0){   ?>
						<li style="display:inline-block;padding:0 .75em 0 0;text-align:right"><a href="login.php">Login / Register</a></li><?php }else{ ?>
						<li style="display:inline-block;padding:0 .75em 0 0;text-align:right"><a href="logout.php">Logout</a></li><?php } ?>
					</ul>
                    <ul style="font-size:1.15em;margin-bottom:1.0em;text-align:right; padding-right: 50px;">
                    	<li style="display:inline-block;padding:0 .75em 0 0;text-align:right;padding-right:0"><a href="about.php">About</a></li>&nbsp&nbsp&nbsp
                        <li style="display:inline-block;padding:0 .75em 0 0;text-align:right;padding-right:0"><a href="help.php">Help</a></li>&nbsp&nbsp&nbsp
                        <li style="display:inline-block;padding:0 .75em 0 0;text-align:right;padding-right:0"><button><a href="track-orders.php" class="dropdown-toggle" ><span class="key"><b>Track Order</b></a></button></li>
                    </ul>
            	</div>
        	</div>
