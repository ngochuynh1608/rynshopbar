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
	<div class="content">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="content-top">
						<!-- Yêu cầu hình ảnh 300 x 202 -->
						<ul class="list-news list-news-st-02 box box-2-layout">
							<?php foreach ($news as $news_item) { ?>
							<li>
								<a href="<?php echo $news_item['href']; ?>" class="news-title"><?php echo Text::word_limiter($news_item['name'],12); ?></a>
								<a href="<?php echo $news_item['href']; ?>"><img src="<?php echo $news_item['thumb']; ?>" alt="img" width="153" height="103"></a>
								<p class="news-content-brief"><?php echo Text::word_limiter($news_item['short_description'],20); ?></p>
							</li>							
							<?php } ?>
						</ul>
						<div class="divider"></div>
						<div class="box pagination"><?php echo $pagination; ?></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
<?php echo $footer; ?>