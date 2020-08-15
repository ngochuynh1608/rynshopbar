<?php echo $header; ?>
<div class="banner">
	<?php echo $content_top;?>
	<div class="wrap-content-abs">
		<div class="container">
			<div class="row">
				<h2 class="banner-title col-md-12">Tin Tức</h2>
			</div>				
		</div>
	</div>
</div>
<div class="content">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="content-top">
					<div class="row">
						<div class="col-sm-9 col-md-9">
							<div class="box news-detail">
								<h3 class="news-title"><?php echo $heading_title; ?></h3>
								<div class="article-detail">
									<p><strong><?php echo $short_description; ?></strong></p>
									<?php echo $description; ?>
								</div>
							</div>
						</div>
						<?php if(!empty($news)){?>
						<div class="col-sm-3 col-md-3">
							<div class="box news-related">
								<h2 class="news-related-heading">Bài viết liên quan:</h2>
								<div class="inner">
									<ul class="news-related-content">
										<?php $i=0;foreach ($news as $news_item) { $i++;?>
										<li><a href="<?php echo $news_item['href']; ?>"><?php echo Text::word_limiter($news_item['name'],12); ?></a></li>										
										<?php if($i==5) break ; }?>
									</ul>
								</div>
							</div>
						</div>
						<?php } ?>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<?php echo $footer; ?>
