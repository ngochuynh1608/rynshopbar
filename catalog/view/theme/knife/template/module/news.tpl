<div class="row">
  <div class="col-md-12">
  <div class="news-list">
  <div class="col-md-12"><h5>Tin tức mới nhất</h5></div>
  <?php foreach ($all_news as $news) { ?>
	<div class="col-lg-3 col-md-4 col-sm-6 card-news">
		<img src="<?php echo $news['image'];?> " width="100%" />
		<div class="card-body">
			<a href="<?php echo $news['view']; ?>"><?php echo $news['title']; ?></a>
			<br/>
			<?php echo $news['description']; ?>
		</div>
		<div class="card-footer">
			<span style="float:right;"><?php echo $news['date_added']; ?></span><br />
		</div>
	</div>
  <?php } ?>
  </div>
  </div>
</div>
