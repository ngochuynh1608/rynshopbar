<?php echo $header; ?>
<div class="banner">		<?php echo $content_top;?>		<div class="wrap-content-abs">			<div class="container">				<div class="row">					<h2 class="banner-title col-md-12"><?php echo $heading_title; ?></h2>				</div>							</div>		</div>	</div>
<div class="content">
	<div class="container">
		<div class="row">
			<div class="col-md-12">			
				<?php if ($attention) { ?>
				<div class="attention"><div class="alert alert-success alert-dismissible" role="alert">
				  <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
				  <i class="fa fa-check-circle fa-lg"></i> <?php echo $attention; ?>
				</div></div>
				<?php } ?>
				<?php if ($success) { ?>
				<div class="success"><div class="alert alert-success alert-dismissible" role="alert">
				  <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
				  <i class="fa fa-check-circle fa-lg"></i> <?php echo $success; ?>
				</div></div>
				<?php } ?>
				<?php if ($error_warning) { ?>
				<div class="warning"><div class="alert alert-success alert-dismissible" role="alert">
				  <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
				  <i class="fa fa-check-circle fa-lg"></i> <?php echo $error_warning; ?>
				</div></div>
				<?php } ?>
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
				<?php if (!empty($products)) { ?>
				<form enctype="multipart/form-data" class="form-cart-detail" method="post" action="<?php echo $action; ?> ">
					<table class="table table-cart-detail">
						<thead>
							<tr>
								<th>Sản phẩm</th>
								<th>Tên sản phẩm</th>
								<th>Mã sản phẩm</th>
								<th>Số lượng</th>
								<th>Đơn giá</th>
								<th>Tổng cộng</th>
							</tr>
						</thead>
						<?php foreach ($products as $product) { ?>
						<?php if ($product['thumb']) { ?>
						<tbody>
							<tr>
								<td data-title="Sản phẩm"><img src="<?php echo $product['thumb']; ?>" alt="image"></td>
								<td data-title="Tên sản phẩm"><?php echo $product['name']; ?>
									<?php if (!$product['stock']) { ?>
									<span style="color:red;">***</span>
									<?php } ?>
								</td>
								<td data-title="Mã sản phẩm"><?php echo $product['model']; ?></td>
								<td data-title="Số lượng">
									<div class="number-increment-button">
										
											<input type="text" name="quantity[<?php echo $product['key']; ?>]" value='<?php echo $product['quantity']; ?>'>
											<a href="#" class="button plus" data-value="+"><i class="fa fa-plus"></i></a>
											<a href="#" class="button minus" data-value="-"><i class="fa fa-minus"></i></a>
										
									</div>
									<button type="submit" class="btn btn-refresh"><i class="glyphicon glyphicon-refresh"></i></button>
									<a href="<?php echo $product['remove']; ?>" class="btn btn-inverse btn-remove"><i class="glyphicon glyphicon-remove"></i></a>																		

								</td>
								<td data-title="Đơn giá" class="price"><?php echo $product['price']; ?></td>
								<td data-title="Tổng cộng" class="total-price"><?php echo $product['total']; ?></td>
							</tr>						
						</tbody>
						<?php } ?>
						<?php } ?>
					</table>
					<div class="total-cart">
						<div class="inner">
							<p>
								<span class="label">Đơn giá:</span>
								<span class="value"><?php echo $totals[0]['text']; ?></span>
							</p>
							<p>
								<span class="label">Tổng cộng:</span>
								<span class="value"><?php echo $totals[1]['text']; ?></span>
							</p>
						</div>
					</div>
					<?php } else { ?>
						<div class="content"><?php echo $text_empty; ?></div>
					<?php } ?>
					<div class="wrap-btn">
						<a href="<?php echo $continue; ?>" class="left btn btn-inverse"><?php echo $button_shopping; ?></a>
						<a href="<?php echo $checkout; ?>" class="right btn"><?php echo $button_checkout; ?></a>
						<div class="clearfix"></div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<?php  echo $footer; ?>