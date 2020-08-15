<?php echo $header; ?>
	<div class="banner">
		<?php echo $column_left; ?>
		<div class="wrap-content-abs">
			<div class="container">
				<div class="row">
					<h2 class="banner-title col-md-12"><?php echo $heading_title; ?></h2>
				</div>				
			</div>
		</div>
	</div>
		<div id="page" class="text-center page-404">
		<p><?php echo $text_error; ?></p>
		<a href="<?php echo $continue; ?>" class="#"><img src="catalog/view/theme/<?php echo $this->config->get('config_template');?>/image/front/img-404.jpg" alt="404" style="width:40%;"></a>
		<div class="wrap-icon" style="margin-bottom:50px;">
			<a href="<?php echo $continue; ?>" class="#"><span><i class="fa fa-home fa-2x"></i></span></a>
		</div>
	</div>	
<?php echo $footer; ?>