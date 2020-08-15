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
					<div class="member-main-content order-history col-md-9">
						<h2 class="title-lg"><?php echo $heading_title; ?></h2>

						<!-- Không có bất kỳ đơn trả hàng nào -->

						<!-- <p class="mb">Bạn chưa có bất kỳ đơn trả hàng nào!</p>
						<a href="#" class="btn">Tiếp tục</a> -->

						<!-- Có đơn trả hàng -->
						<?php if ($returns) { ?>
						<?php foreach ($returns as $return) { ?>
						<div class="box">
							<div class="title-box">
								<span class="pull-left"><strong><?php echo $text_return_id; ?> </strong>#<?php echo $return['return_id']; ?></span>
								<span class="pull-right"><strong><?php echo $text_status; ?> </strong><?php echo $return['status']; ?></span>
							</div>
							<ul class="wrap-left">
								<li><strong><?php echo $text_date_added; ?> </strong><?php echo $return['date_added']; ?></li>
								<li><strong><?php echo $text_customer; ?> </strong><?php echo $return['name']; ?></li>
								<li><strong><?php echo $text_order_id; ?> </strong><?php echo $return['order_id']; ?></li>
							</ul>
							<div class="wrap-right">
								<a href="<?php echo $return['href']; ?>" class="btn btn-sm"><i class="fa fa-eye"></i>Xem chi tiết</a>
							</div>
							<div class="clearfix"></div>
						</div>						
						<?php } ?>
						<div class="pagination"><?php echo $pagination; ?></div>
						<?php } else { ?>
						<p class="mb"><?php echo $text_empty; ?></p>
						<?php } ?>
						<a href="<?php echo $continue; ?>" class="btn"><i class="fa fa-mail-reply"></i>Quay lại</a>
					</div>							
				</div>
			</div>
		</div>
	</div>
</div>    
<?php echo $footer; ?>