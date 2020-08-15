<div class="row">
	<div class="col-sm-6 col-md-6">
		<form  class="form-vertical">
			<h2 class="title ttu"><span><?php echo $text_new_customer; ?></span></h2>
			<p class="help-block"><?php echo $text_checkout; ?></p>
			<div class="wrap-radio" for="register">
				<?php if ($account == 'register') { ?>
				<input type="radio" name="account" value="register" id="register" checked="checked" />
				<?php } else { ?>
				<input type="radio" name="account" value="register" id="register" />
				<?php } ?>
				<label for="register" class="radio"><span><span></span></span><?php echo $text_register; ?></label>
			</div>
			<?php if ($guest_checkout) { ?>
			<div class="wrap-radio" for="guest">
				<?php if ($account == 'guest') { ?>
				<input type="radio" name="account" value="guest" id="guest" checked="checked" />
				<?php } else { ?>
				<input type="radio" name="account" value="guest" id="guest" />
				<?php } ?>
				<label for="guest" class="radio"><span><span></span></span><?php echo $text_guest; ?></label>
			</div>
			<?php } ?>	
			<p class="help-block"><?php echo $text_register_account; ?></p>
			<a type="button" id="button-account" class="btn"><?php echo $button_continue; ?></a>
		</form>
	</div>
	<div class="col-sm-6 col-md-6 col-right" id="login">
		<h2 class="title ttu"><span><?php echo $text_returning_customer; ?></span></h2>
		<p class="help-block"><?php echo $text_i_am_returning_customer; ?></p>
		<form action="" class="form-vertical">
			<div class="form-group">
				<label for="inputEmail"><?php echo $entry_email; ?></label>
				<input type="text" id="inputEmail" class="form-control" name="email" value="">
			</div>
			<div class="form-group">
				<label for="inputPassword"><?php echo $entry_password; ?></label>
				<input type="password" id="inputPassword" class="form-control" name="password" value="">
			</div>
			<a href="<?php echo $forgotten; ?>" class="link"><?php echo $text_forgotten; ?></a>
			<div class="mt10">
				<a  type="button" class="btn" id="button-login"><?php echo $button_login; ?></a>
			</div>
		</form>
	</div>
</div>