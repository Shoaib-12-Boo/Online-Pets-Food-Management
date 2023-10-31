<div class="side-menu animate-dropdown outer-bottom-xs">
    <div class="head" style="font: 16px/1.335 'Open Sans', Arial, Helvetica, sans-serif; text-transform: capitalize;"><i class="fa fa-paw" aria-hidden="true"></i> &nbsp <b>Browse Our Categories</b></div>
    <nav class="yamm megamenu-horizontal" role="navigation" style="font: 14px/1.335 'Open Sans', Arial, Helvetica, sans-serif; text-transform: capitalize;">
        <ul class="nav">
            <li class="dropdown menu-item">
              <?php $sql=mysqli_query($con,"select id,categoryName  from category");
while($row=mysqli_fetch_array($sql))
{
    ?>
                <a href="category.php?cid=<?php echo $row['id'];?>" class="dropdown-toggle"><i class="fa fa-angle-right" aria-hidden="true"></i>&nbsp
                <?php echo $row['categoryName'];?></a>
                <?php }?>
</li>
</ul>
    </nav>
</div>