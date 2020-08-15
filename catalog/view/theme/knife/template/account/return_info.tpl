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
						<table class="table">
							<thead>
								<tr>
									<th colspan=2><?php echo $text_return_detail; ?></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td data-title="Chi tiết trả hàng">
										<p><strong><?php echo $text_return_id; ?> </strong>#<?php echo $return_id; ?></p>
										<p><strong><?php echo $text_date_added; ?> </strong><?php echo $date_added; ?></p>
									</td>
									<td data-title="Chi tiết trả hàng">
										<p><strong><?php echo $text_order_id; ?> </strong>#<?php echo $order_id; ?></p>
										<p><strong><?php echo $text_date_ordered; ?> </strong><?php echo $date_ordered; ?></p>
									</td>
								</tr>
							</tbody>
						</table>

						<h2 class="title title-sm"><span><?php echo $text_product; ?></span></h2>

						<table class="table">
							<thead>
								<tr>
									<th><?php echo $column_product; ?></th>
									<th><?php echo $column_model; ?></th>
									<th><?php echo $column_quantity; ?></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td data-title="Tên sản phẩm"><?php echo $product; ?></td>
									<td data-title="Kiểu dáng"><?php echo $model; ?></td>
									<td data-title="Số lượng"><?php echo $quantity; ?></td>
								</tr>
							</tbody>
						</table>

						<table class="table">
							<thead>
								<tr>
									<th><?php echo $column_reason; ?></th>
									<th><?php echo $column_opened; ?></th>
									<th><?php echo $column_action; ?></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td  data-title="Lý do"><?php echo $reason; ?></td>
									<td data-title="Đã mở"><?php echo $opened; ?></td>
									<?php if($action) { ?>
									<td data-title="Hành động"><?php echo $action; ?></td>
									<?php } else { ?>
									<td data-title="Hành động">Không</td>
									<?php } ?>
								</tr>
							</tbody>
						</table>
						<p class="text-right"><a href="<?php echo $continue; ?>" class="btn">Tiếp tục</a></p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>    
<?php echo $footer; ?>