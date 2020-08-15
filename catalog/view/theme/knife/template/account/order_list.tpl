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
						<h2 class="title-lg">Lịch sử đặt hàng</h2>
						<?php if ($orders) { ?>
						<?php foreach ($orders as $order) { ?>						
						<div class="box">
							<div class="title-box">
								<span class="pull-left"><strong>Đơn hàng: </strong>#<?php echo $order['order_id']; ?></span>
								<span class="pull-right"><strong>Trạng thái: </strong><?php echo $order['status']; ?></span>
							</div>
							<ul class="wrap-left">
								<li><strong>Ngày: </strong><?php echo $order['date_added']; ?></li>
								<li><strong>Khách hàng: </strong><?php echo $order['name']; ?></li>
								<li><strong>Số lượng: </strong><?php echo $order['products']; ?></li>
								<li><strong>Tổng cộng: </strong><?php echo $order['total']; ?></li>
							</ul>
							<div class="wrap-right">
								<a href="<?php echo $order['href']; ?>" class="btn btn-sm"><i class="fa fa-eye"></i>Xem</a>
								<a href="<?php echo $order['reorder']; ?>" class="btn btn-sm"><i class="fa fa-rotate-left "></i>Đặt lại</a>
							</div>
							<div class="clearfix"></div>
						</div>
						<?php } ?>
						<div class="right count-page"><div id="pagination"><?php echo $pagination; ?></div></div>
						<?php } else { ?>
							<div class="content"><?php echo $text_empty; ?></div>
						<?php } ?>
						<a href="<?php echo $continue; ?>" class="btn"><?php echo $button_continue; ?></a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<?php echo $footer; ?>