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
					<div class="member-main-content address-book col-md-9">
						<h2 class="title-lg"><?php echo $heading_title;?></h2>
							<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form form-vertical form-change-pass">
								<p><?php echo $text_email; ?></p>
								<div class="col-left">
									<div class="form-group">
									<label for="inputPassword"><?php echo $entry_email; ?><span class="force">*</span></label>
									<input type="text" name="email" value="" class="form-control">
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