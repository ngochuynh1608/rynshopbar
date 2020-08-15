<?php echo $header; ?>
<div class="banner">
	<?php echo $content_top; ?>
	<div class="wrap-content-abs">
		<div class="container">
			<div class="row">
				<h2 class="banner-title col-md-12"><?php echo $heading_title; ?></h2>
			</div>				
		</div>
	</div>
</div>
<div class="content">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<?php if ($error_warning) { ?>
					<div class="warning"><div class="alert alert-success alert-dismissible" role="alert"><button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button><i class="fa fa-check-circle fa-lg"></i><?php echo $error_warning; ?></div></div>
				<?php } ?>
				<ol class="breadcrumb">
					<?php $i=0; foreach ($breadcrumbs as $breadcrumb) { $i++; ?>
						<li>
							<?php if($i== count($breadcrumbs)){ ?>
								<?php echo Text::word_limiter($breadcrumb['text'],10); ?>
							<?php }else { ?>
							<a href="<?php echo $breadcrumb['href']; ?>"><?php echo Text::word_limiter($breadcrumb['text'],10); ?></a>
							<?php } ?>
						</li>
					<?php } ?>
				</ol>
				<div class="row member-management">
					<?php echo $column_left;?>
					<div class="member-main-content order-history col-md-9">
						<h2 class="title-lg"><?php echo $heading_title; ?></h2>
							<p class="note"><?php echo $text_description; ?></p>
							<h2 class="title title-sm"><span>Thông tin đặt hàng</span></h2>
						<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-vertical form-product-return">
							<div class="box">
								<div class="col-left">
									<div class="form-group">
										<label for="inputFirstName"><?php echo $entry_firstname; ?><span class="force">*</span></label>
										<input type="text" class="form-control" id="inputFirstName" name="firstname" value="<?php echo $firstname; ?>">
										<?php if ($error_firstname) { ?>
										<span class="error"><?php echo $error_firstname; ?></span>
										<?php } ?>
									</div>
									<div class="form-group">
										<label for="inputLastName"><?php echo $entry_lastname; ?><span class="force">*</span></label>
										<input type="text" class="form-control" id="inputLastName" name="lastname" value="<?php echo $lastname; ?>">
										<?php if ($error_lastname) { ?>
										<span class="error"><?php echo $error_lastname; ?></span>
										<?php } ?>
									</div>
									<div class="form-group">
										<label for="inputEmail"><?php echo $entry_email; ?><span class="force">*</span></label>
										<input type="email" class="form-control" id="inputEmail" name="email" value="<?php echo $email; ?>">
										<?php if ($error_email) { ?>
										<span class="error"><?php echo $error_email; ?></span>
										<?php } ?>
									</div>
									<div class="form-group">
										<label for="inputPhone"><?php echo $entry_telephone; ?><span class="force">*</span></label>
										<input type="text" class="form-control" id="inputPhone" name="telephone" value="<?php echo $telephone; ?>">
										<?php if ($error_telephone) { ?>
										<span class="error"><?php echo $error_telephone; ?></span>
										<?php } ?>
									</div>
								</div>
								<div class="col-right">
									<div class="form-group">
										<label for="inputOrderID"><?php echo $entry_order_id; ?><span class="force">*</span></label>
										<input type="text" class="form-control" id="inputOrderID" name="order_id" value="<?php echo $order_id; ?>">
										<?php if ($error_order_id) { ?>
										<span class="error"><?php echo $error_order_id; ?></span>
										<?php } ?>
									</div>
									<div class="form-group">
										<label for="inputOrderDate"><?php echo $entry_date_ordered; ?></label>
										<input type="text" class="form-control date" id="inputOrderDate" name="date_ordered" value="<?php echo $date_ordered; ?>">
									</div>
								</div>
								<div class="clearfix"></div>
							</div>

							<h2 class="title title-sm mt20"><span>Thông tin sản phẩm và lí do trả hàng</span></h2>
							<div class="box">
								<div class="row">
									<div class="col-md-4">
										<div class="form-group">
											<label for="inputProductName"><?php echo $entry_product; ?><span class="force">*</span></label>
											<input type="text" class="form-control" id="inputProductName" name="product" value="<?php echo $product; ?>">
											<?php if ($error_product) { ?>
											<span class="error"><?php echo $error_product; ?></span>											
											<?php } ?>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group">
											<label for="inputProductID"><?php echo $entry_model; ?><span class="force">*</span></label>
											<input type="text" class="form-control" id="inputProductID" name="model" value="<?php echo $model; ?>">
											<?php if ($error_model) { ?>
											<span class="error"><?php echo $error_model; ?></span>											
											<?php } ?>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group">
											<label for="inputQuanlity"><?php echo $entry_quantity; ?></label>
											<input type="text" class="form-control" id="inputQuanlity" name="quantity" value="<?php echo $quantity; ?>">
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-4">
										<div class="form-group">
											<label for="inputProductName"><?php echo $entry_reason; ?> <span class="force">*</span></label>											
											<?php foreach ($return_reasons as $return_reason) { ?>
											<?php if ($return_reason['return_reason_id'] == $return_reason_id) { ?>
											<div class="wrap-radio">
											<input id="return-reason-id<?php echo $return_reason['return_reason_id']; ?>" type="radio" name="return_reason_id" value="<?php echo $return_reason['return_reason_id']; ?>" checked="checked">
											<label for="return-reason-id<?php echo $return_reason['return_reason_id']; ?>" class="radio"><span><span></span></span><?php echo $return_reason['name']; ?></label>											
											</div>
											<?php } else { ?>
											<div class="wrap-radio">
											<input id="return-reason-id<?php echo $return_reason['return_reason_id']; ?>" type="radio" name="return_reason_id" value="<?php echo $return_reason['return_reason_id']; ?>">
											<label for="return-reason-id<?php echo $return_reason['return_reason_id']; ?>" class="radio"><span><span></span></span><?php echo $return_reason['name']; ?></label>		
											</div>
											<?php  } ?>
											<?php  } ?>												
											<?php if ($error_reason) { ?>
											<span class="error"><?php echo $error_reason; ?></span>
											<?php } ?>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group wrap-radio-inline">
											<label for="inputProductName"><?php echo $entry_opened; ?> <span class="force">*</span></label>											
											<div class="wrap-radio">
											<?php if ($opened) { ?>
											<input id="opened" type="radio" name="opened" value="1" checked="checked">
											<?php } else { ?>
											<input id="opened" type="radio" name="opened" value="1">
											<?php } ?>
											  <label for="opened" class="radio"><span><span></span></span>Có</label>
											</div>
											<div class="wrap-radio">
											<?php if (!$opened) { ?>
											  <input id="unopened" type="radio" name="opened" value="0" checked="checked">
											   <?php } else { ?>
											  <input id="unopened" type="radio" name="opened" value="0">
											  <?php } ?>
											  <label for="unopened" class="radio"><span><span></span></span>Không</label>
											</div>
										</div>
										<div class="form-group">
											<label for="inputFaulty"><?php echo $entry_fault_detail; ?> </label>
											<textarea name="inputFaulty" id="" cols="30" rows="10" class="form-control"><?php echo $comment; ?></textarea>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group">
											<label for="inputCaptcha"><?php echo $entry_captcha; ?></label>
											<input type="text" class="form-control" id="inputCaptcha" name="captcha" value="<?php echo $captcha; ?>">
											<img src="index.php?route=product/product/captcha" alt="" />
											<?php if ($error_captcha) { ?>
											<span class="error"><?php echo $error_captcha; ?></span>
											<?php } ?>
										</div>
									</div>
								</div>
							</div>
							<?php if ($text_agree) { ?>
							<a href="<?php echo $back; ?>" class="btn btn-back pull-left"><?php echo $button_back; ?></a>
							<?php echo $text_agree; ?>
							<?php if ($agree) { ?>
							<input type="checkbox" name="agree" value="1" checked="checked" />
							<?php } else { ?>
							<input type="checkbox" name="agree" value="1" />
							<?php } ?>
							<input type="submit" value="<?php echo $button_continue; ?>" class="btn btn-continue pull-right" />
							<?php } else { ?>
							<a href="<?php echo $back; ?>" class="btn btn-back pull-left"><?php echo $button_back; ?></a>
							<button type="submit" class="btn btn-continue pull-right"><?php echo $button_continue; ?></button>
							<?php } ?>
							<div class="clearfix"></div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>    
<script type="text/javascript"><!--
$(document).ready(function() {
  $('.date').datepicker({dateFormat: 'yy-mm-dd'});
});
//--></script>
  
<?php echo $footer; ?>