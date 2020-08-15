<?php echo $header; ?>
<section class="content">
	<div class="container">
		<div class="row content_bottom">
			<div class="col-md-12">
				<div class="product_box ">
					<div id="map" class="map"></div>
						<div class="row">
							<div class="col-md-9">
								<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-inline">
									<input type="hidden" name="form" value="contact">
									<div class="form-group">
										<input name="name" type="text" class="form-control" placeholder="Tên">	
										<?php if ($error_name) { ?>
										<p class="error"><?php echo $error_name; ?></p>
										<?php } ?>
									</div>
									<div class="form-group">
										<input name="email" type="text" class="form-control" placeholder="Email">
										<?php if ($error_email) { ?>
										<p class="error"><?php echo $error_email; ?></p>
										<?php } ?>
									</div>
									<div class="form-group">
										<input name="title" type="text" class="form-control" placeholder="Tiêu đề">				
									</div>
									<div>
										<textarea name="enquiry" id="" rows ="10" class="contact-area" placeholder="Nội dung"></textarea>
										<?php if ($error_enquiry) { ?>
										<p class="error"><?php echo $error_enquiry; ?></p>
										<?php } ?>
									</div>
									<div class="form-group">
										<button type="submit" class="btn btn-default right">Send Message</button>
									</div>
								</form>
							</div>
							<div class="col-md-3">
								<div class="address">
									<i class="glyphicon glyphicon-map-marker"></i>
									<p><?php echo $this->config->get('config_address');?></p>
								</div>
								<div class="phone">
									<i class="glyphicon glyphicon-earphone"></i>
									<p><?php echo $this->config->get('config_telephone');?></p>
								</div>
								<div class="mail">
									<i class="glyphicon glyphicon-envelope"></i>
									<p><?php echo $this->config->get('config_email');?></p>
								</div>
							</div>
						</div>
				</div>
			</div>
			<!--- giới thiêu---->
		</div>
		<div class="row">
			<div class="col-md-12">
				<?php echo $content_bottom;?>
			</div>
		</div>
	</div>
</section>
<script>
	$(document).ready(function(){
		$("#map").gmap3({
			marker: {
				address: "<?php echo $this->config->get('config_address');?>",
				options: {
					icon: "../images/location.png"
				}
			},
			overlay: {
				address: "<?php echo $this->config->get('config_address');?>",
				options: {
					content: '<div class="style-tooltip-map"><i class="icon-ib icon-scissors"></i><?php echo $this->config->get('config_address');?></div>',
					offset: {
						y: -120,
						x: 20
					}
				}
			},
			map: {
				options: {
					styles: [{
						stylers: [{
							"saturation": -100
						}]
					}, ],
					zoom: 16
				}
			}
		});
	});
</script>
<?php echo $footer; ?>