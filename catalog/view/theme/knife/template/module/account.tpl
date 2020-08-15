<div class="member-menu col-md-3">
	<h3 class="title-menu"><?php echo $heading_title; ?> <i class="right fa fa-plus"></i></h3>
	<ul class="list-menu">
		<?php if (!$logged) { ?>
		<li><a href="<?php echo $login; ?>"><?php echo $text_login; ?><i class="fa fa-angle-right"></i></a></li>
		<li><a href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?><i class="fa fa-angle-right"></i></a></li>
		<?php } ?>
		<li><a href="<?php echo $account; ?>"><?php echo $text_account; ?><i class="fa fa-angle-right"></i></a></li>
		<?php if ($logged) { ?>
		<li><a href="<?php echo $edit; ?>"><?php echo $text_edit; ?><i class="fa fa-angle-right"></i></a></li>
		<li><a href="<?php echo $password; ?>"><?php echo $text_password; ?><i class="fa fa-angle-right"></i></a></li>
		<?php } ?>
		<li><a href="<?php echo $address; ?>"><?php echo "Địa chỉ của tôi"; ?><i class="fa fa-angle-right"></i></a></li>
		<li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?><i class="fa fa-angle-right"></i></a></li>
		<li><a href="<?php echo $order; ?>"><?php echo $text_order; ?><i class="fa fa-angle-right"></i></a></li>
		<li><a href="<?php echo $return; ?>"><?php echo $text_return; ?><i class="fa fa-angle-right"></i></a></li>
		<li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?><i class="fa fa-angle-right"></i></a></li>
		<li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?><i class="fa fa-angle-right"></i></a></li>
		<?php if ($logged) { ?>
		<li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?><i class="fa fa-angle-right"></i></a></li>
		<?php } ?>
	</ul>
</div>