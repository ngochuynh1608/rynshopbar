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
				<?php if ($success) { ?>
					<div class="success"><div class="alert alert-success alert-dismissible" role="alert"><button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button><i class="fa fa-check-circle fa-lg"></i><?php echo $success; ?></div></div>
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
					<div class="member-main-content my-account col-md-9">
						<h2 class="title-lg">Tài khoản</h2>
						<p class="say-hello"><?php  echo "Xin chào ".$this->customer->getFirstName(); ?></p>
						<p>Từ mục Bảng Điều Khiển Tài khoản Của Tôi bạn có thể thấy xem được những hoạt động tài khoản của bạn gần đây và cập nhật thông tin tài khoản. Hãy chọn một liên kết bên dưới để xem hoặc chỉnh sửa thông tin.</p>
						<div class="col-left">
							<div class="box">
								<p class="title-box"><?php echo $text_my_account; ?></p>
								<div class="content-box">
									<ul>
										<li><a href="<?php echo $edit; ?>"><?php echo $text_edit; ?><i class="fa fa-pencil"></i></a></li>
										<li><a href="<?php echo $password; ?>"><?php echo $text_password; ?><i class="fa fa-pencil"></i></a></li>
										<li><a href="<?php echo $address; ?>"><?php echo $text_address; ?><i class="fa fa-pencil"></i></a></li>
										<li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?><i class="fa fa-pencil"></i></a></li>
									</ul>
								</div>
							</div>
							<div class="box">
								<p class="title-box"><?php echo $text_my_newsletter; ?></p>
								<div class="content-box">
									<p><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></p>
								</div>
							</div>
						</div>
						<div class="col-right">
							<div class="box">
								<p class="title-box"><?php echo $text_my_orders; ?></p>
								<div class="content-box">
									<ul>
										<li><a href="<?php echo $order; ?>"><?php echo $text_order; ?><i class="fa fa-pencil"></i></a></li>
										<li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?><i class="fa fa-pencil"></i></a></li>
										<li><a href="<?php echo $return; ?>"><?php echo $text_return; ?><i class="fa fa-pencil"></i></a></li>										
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<?php echo $footer; ?>