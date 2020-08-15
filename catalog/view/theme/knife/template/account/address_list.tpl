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
					<div class="member-main-content address-book col-md-9">
						<h2 class="title-lg"><?php echo $heading_title; ?></h2>
						<?php if(count($addresses) == 1) {?>				
							<div class="col-left">
								<div class="box">
									<p class="title-box">Địa chỉ</p>
									<a href="<?php echo $addresses[0]['delete']; ?>" class="btn btn-sm btn-change btn-delete btn-inverse"><i class="glyphicon glyphicon-remove"></i>Xóa</a>
									<a href="<?php echo $addresses[0]['update']; ?>" class="btn btn-sm btn-change"><i class="fa fa-pencil"></i>Thay đổi</a>									
									<div class="content-box">
										<?php echo $addresses[0]['address']; ?>
									</div>									
								</div>
								<p class="rwd-tac"><a href="<?php echo $back; ?>" class="btn btn-back"><i class="fa fa-mail-reply"></i><?php echo $button_back; ?></a></p>
							</div>
							<div class="col-right">
								<div class="box">
									<p class="title-box">Địa chỉ bổ sung</p>
									<div class="content-box">
										<p>Không có địa chỉ thêm vào nào khác trong sổ địa chỉ của quí khách</p>
									</div>
								</div>							
							</div>
						<?php } else { ?>
							<?php foreach ($addresses as $result) { ?>
							<div class="col-left">
								<div class="box">
									<p class="title-box">Địa chỉ</p>
									<a href="<?php echo $result['delete']; ?>" class="btn btn-sm btn-change btn-delete btn-inverse"><i class="glyphicon glyphicon-remove"></i>Xóa</a>
									<a href="<?php echo $result['update']; ?>" class="btn btn-sm btn-change"><i class="fa fa-pencil"></i>Thay đổi</a>									
									<div class="content-box">
										<?php echo $result['address']; ?>
									</div>
									
								</div>
								<p class="rwd-tac"><a href="<?php echo $back; ?>" class="btn btn-back"><i class="fa fa-mail-reply"></i><?php echo $button_back; ?></a></p>
							</div>	
							<?php } ?>
						<?php } ?>
						<div class="col-right">
							<p class="rwd-tac"><a href="<?php echo $insert; ?>" class="btn btn-add"><i class="fa fa-plus"></i><?php echo $button_new_address; ?></a></p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<?php echo $footer; ?>