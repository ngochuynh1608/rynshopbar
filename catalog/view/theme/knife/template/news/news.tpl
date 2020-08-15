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
						<div class="titlebg col-md-12">
							<h2><?php echo $heading_title;?></h2>
						</div>               
						<div class="col-md-12">
							<div class="news_detail">
								<?php echo $description;?>
							</div>
						</div> 
						<div class="col-md-12">
							<h6 class="title_sm">Tin tức liên quan </h6>
						</div> 
						<div class="col-md-12">
							<div class="news_relate">
								<ul>
								<?php foreach($news as $new){?>
									<li><a href="<?php echo $new['href'];?>"><?php echo $new['name'];?></a></li>
								<?php }?>
								</ul>
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
<?php echo $footer; ?>
