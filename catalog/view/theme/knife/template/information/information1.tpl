<?php echo $header; ?>
	<div class="banner">
		<?php echo $content_top;?>
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
					<div class="content-top">
						<div class="span7 box box-intro-image-lg">
							<!-- Ảnh cho layout chia 1 -->
							<?php echo $column_left; ?>
						</div>
						<div class="box-intro-text">
							<h2 class="title bdb ttu span5 last box"><span><?php echo $heading_title; ?></span></h2>
							<?php echo $description; ?>
						</div>
						<div class="clearfix"></div>
						<?php echo $content_bottom; ?>
					</div>
				</div>
			</div>
		</div>
	</div>
<?php echo $footer; ?>