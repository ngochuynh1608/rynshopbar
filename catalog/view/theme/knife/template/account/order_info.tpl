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
					<div class="member-main-content col-md-9">
						<h2 class="title-lg"><?php echo $heading_title; ?></h2>
						<table class="table">
							<thead>
								<tr>
									<th colspan=2>Chi tiết đơn hàng</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td data-title="Chi tiết đơn hàng">
										<?php if ($invoice_no) { ?>
										<p><strong><?php echo $text_invoice_no; ?></strong> <?php echo $invoice_no; ?></p>
										<?php } ?>
										<p><strong>Mã sản phẩm: </strong>#<?php echo $order_id; ?></p>
										<p><strong>Ngày: </strong><?php echo $date_added; ?></p>
									</td>
									<td data-title="Chi tiết đơn hàng">
										<?php if ($payment_method) { ?>
										<p><strong>Phương thức thanh toán: </strong><?php echo $payment_method; ?></p>
										<?php } ?>
										<?php if ($shipping_method) { ?>
										<p><strong>Hình thức vận chuyển: </strong><?php echo $shipping_method; ?></p>
										<?php } ?>
									</td>
								</tr>
							</tbody>
						</table>
						<table class="table">
							<thead>
								<tr>
									<th>Địa chỉ thanh toán</th>
									<th>Địa chỉ vận chuyển</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td data-title="Địa chỉ thanh toán">
										<?php echo $text_payment_address; ?>
									</td>
									<?php if ($shipping_address) { ?>
										<td><?php echo $text_shipping_address; ?></td>
									<?php } ?>
									<td>
										<?php echo $payment_address; ?>
									</td>
									<?php if ($shipping_address) { ?>
										<td><?php echo $shipping_address; ?></td>
									<?php } ?>									
								</tr>
							</tbody>
						</table>						
						<table class="table table-center">
							<thead>
								<tr>
									<th>Tên sản phẩm</th>
									<th>Mã sản phẩm</th>
									<th>Số lượng</th>
									<th>Đơn giá</th>
									<th>Tổng cộng</th>
									<?php if ($products) { ?>
									<th style="width: 80px;"></th>
									<?php } ?>
								</tr>
							</thead>
							<tbody>
							<?php foreach ($products as $product) { ?>										
								<tr>
									<td data-title="Tên sản phẩm"><?php echo $product['name']; ?></td>
									<td data-title="Mã sản phẩm"><?php echo $product['model']; ?></td>
									<td data-title="Số lượng"><?php echo $product['quantity']; ?></td>
									<td data-title="Đơn giá"><?php echo $product['price']; ?></td>
									<td data-title="Tổng cộng"><?php echo $product['total']; ?></td>
									<td><a href="<?php echo $product['return']; ?>" class="btn btn-sm" alt="<?php echo $button_return; ?>" title="<?php echo $button_return; ?>"><i class="fa fa-rotate-left "></i>Trả</a></td>
								</tr>
							<?php } ?>
							<?php foreach ($totals as $total) { ?>
								<tr class="padding-sm">
									<td colspan=3></td>
									<td><?php echo $total['title']; ?></td>
									<td><?php echo $total['text']; ?></td>
									<?php if ($products) { ?>
									<td></td>
									<?php } ?>
								</tr>
							<?php } ?>
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