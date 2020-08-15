<?php if ($error_warning) { ?>

<div class="warning"><?php echo $error_warning; ?></div>

<?php } ?>

<?php if ($payment_methods) { ?>

<form class="form-vertical">

	<p><?php echo $text_payment_method; ?></p>

	<?php foreach ($payment_methods as $payment_method) { ?>

	<div class="wrap-radio-1 cash-on-delivery">

		<?php if ($payment_method['code'] == $code || !$code) { ?>

		<?php $code = $payment_method['code']; ?>

		<input type="radio" name="payment_method" value="<?php echo $payment_method['code']; ?>" id="<?php echo $payment_method['code']; ?>" checked="checked" />

		<?php } else { ?>

		<input type="radio" name="payment_method" value="<?php echo $payment_method['code']; ?>" id="<?php echo $payment_method['code']; ?>" />

		<?php } ?></td>

		<label class="radio" for="<?php echo $payment_method['code']; ?>"><span><span></span></span><?php echo $payment_method['title']; ?></label>
        <p> Bất cứ đơn hàng nào thuộc Dao đều được Free ship</p>

	</div>

	<?php } ?>

	<div class="form-group">

		<label for="inputAddComment"><?php echo $text_comments; ?></label>

		<textarea name="comment" class="form-control" id="inputAddComment"><?php echo $comment; ?></textarea>

	</div>

	<?php if ($text_agree) { ?>

	<div class="pull-right agree-policy">

		<p class="text-policy"><?php echo $text_agree; ?></p>

		<?php if ($agree) { ?>

		<div class="checkbox-policy">

			<input id="checkbox3" type="checkbox" name="agree" value="1" checked="checked">

			<label for="checkbox3" class="checkbox"><span></span></label>

		</div>

		<?php } else { ?>

		<div class="checkbox-policy">

			<input id="checkbox3" type="checkbox" name="agree" value="1">

			<label for="checkbox3" class="checkbox"><span></span></label>

		</div>

		<?php } ?>

	</div>

	<div class="clearfix"></div>

	<a type="button" id="button-payment-method"  class="btn pull-right"><?php echo $button_continue; ?></a>

	<?php } else { ?>

	<div class="clearfix"></div>

	<a type="button" id="button-payment-method"  class="btn pull-right"><?php echo $button_continue; ?></a>

	<?php } ?>

	<div class="clearfix"></div>

</form>

<?php } ?>