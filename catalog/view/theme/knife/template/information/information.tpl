<?php echo $header; ?>
<section class="content">
	<div class="container">
		<div class="row">
			<?php echo $content_top;?>
		</div>	
		<div class="row content_bottom">
			<div class="col-md-3">
				<?php echo $column_left;?>
			</div>
			<div class="col-md-9 resize">
				<div class="product_box ">
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
						</div>                        
						<div class="col-md-12">
							<h1><?php echo $heading_title;?></h1>
							<p><?php echo $description;?></p>
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
<?php echo $footer; ?>