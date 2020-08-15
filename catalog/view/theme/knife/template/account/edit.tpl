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
					<div class="member-main-content address-book col-md-9">
						<h2 class="title-lg">Chỉnh sửa tài khoản</h2>
						<form action="<?php echo $action; ?>" class="form form-vertical form-change-pass" method="post" enctype="multipart/form-data">
							<div class="col-left">
								<div class="form-group">
									<label for="inputFirstName">Tên: <span class="force">*</span></label>
									<?php if ($error_firstname) { ?>
										<span class="error"><?php echo $error_firstname; ?></span>
									<?php } ?></span></label>
									<input type="text" name="firstname" value="<?php echo $firstname; ?>" class="form-control" id="inputFirstName">
								</div>
								<div class="form-group">
									<?php if ($error_lastname) { ?>
										<span class="error"><?php echo $error_lastname; ?></span>
									<?php } ?>
									<label for="inputLastName">Họ: <span class="force">*</span></label>
									<input type="text"  name="lastname" value="<?php echo $lastname; ?>" class="form-control" id="inputLastName">
								</div>
								<div class="form-group">
									<label for="inputEmail">Email: <span class="force">*</span></label>
									<?php if ($error_email) { ?>
										<span class="error"><?php echo $error_email; ?></span>
									<?php } ?>
									<input type="email" name="email" value="<?php echo $email; ?>" class="form-control warning" id="inputEmail">
								</div>
								<div class="form-group">
									<label for="inputPhone">Điện thoại: <span class="force">*</span></label>
									<?php if ($error_telephone) { ?>
										<span class="error"><?php echo $error_telephone; ?></span>
									<?php } ?>
									<input type="text" name="telephone" value="<?php echo $telephone; ?>" class="form-control" id="inputPhone">
								</div>
								<div class="form-group">
									<label for="inputFax">Fax:</label>
									<input type="text" name="fax" value="<?php echo $fax; ?>" class="form-control" id="inputFax">
								</div>
							</div>
							<div class="clearfix"></div>
							<a href="<?php echo $back; ?>" class="btn btn-back"><?php echo $button_back; ?></a>
							<button type="submit" class="btn btn-continue"><?php echo $button_continue; ?></button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<?php echo $footer; ?>