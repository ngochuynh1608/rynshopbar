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
					<div class="member-main-content my-account col-md-9">
						<h2 class="title-lg">Bản tin</h2>
						<p>Bạn có muốn nhận các bản tin khuyến mãi từ Chương trình:</p>
						<form action="<?php echo $action; ?>" class="form form-newsletter" method="post" enctype="multipart/form-data">
						<?php if ($newsletter) { ?>
							<div class="wrap-radio">
							  <input id="inputYes" name="newsletter" type="radio" name="radio" value="1" checked="checked">
							  <label for="inputYes" class="radio"><span><span></span></span>Có</label>
							</div>
							<div class="wrap-radio">
							  <input id="inputNo" name="newsletter" type="radio" name="radio" value="0">
							  <label for="inputNo" class="radio"><span><span></span></span>Không</label>
							</div>
						<?php } else { ?>
							<div class="wrap-radio">
							  <input id="inputYes" name="newsletter" type="radio" name="radio" value="1" >
							  <label for="inputYes" class="radio"><span><span></span></span>Có</label>
							</div>
							<div class="wrap-radio">
							  <input id="inputNo" name="newsletter" type="radio" name="radio" value="0" checked="checked">
							  <label for="inputNo" class="radio"><span><span></span></span>Không</label>
							</div>
						<?php } ?>													
						<div class="mt20">
							<a href="<?php echo $back; ?>" class="btn pull-left"><i class="fa fa-mail-reply"></i><?php echo $button_back; ?></a>
							<button type="submit" class="btn pull-right"><?php echo $button_continue; ?></button>
						</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>               
<?php echo $footer; ?>