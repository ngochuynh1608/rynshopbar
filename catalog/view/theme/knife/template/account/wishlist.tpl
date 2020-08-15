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
				<div id="notification"></div>
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
				<?php if ($products) { ?>
				<div class="row member-management">
					<div class="member-main-content wishlist col-md-12">
						<h2 class="title-lg"><?php echo $heading_title; ?></h2>
						<form action="./" class="form-cart-detail form-wishlist">
							<table class="table table-cart-detail">
								<thead>
									<tr>
										<th>Sản phẩm</th>
										<th>Mã sản phẩm</th>
										<th>Tình trạng</th>
										<th>Đơn giá</th>
										<th></th>
									</tr>
								</thead>
								<?php foreach ($products as $product) { ?>
								<tbody>
									<tr>							
										<td data-title="Sản phẩm">
											<img src="<?php echo $product['thumb']; ?>" class="product-image" alt="image">
											<p class="product-name"><?php echo $product['name']; ?></p>
											<a href="<?php echo $product['remove']; ?>" class="wrap-icon-remove"><i class="icon-ib icon-remove"></i> Bỏ sản phẩm</a>
										</td>
										<td data-title="Mã sản phẩm"><?php echo $product['model']; ?></td>
										<td data-title="Còn hàng"><?php echo $product['stock']; ?></td>
										<?php if ($product['price']) { ?>
										<td data-title="Đơn giá" class="price">
										<?php if (!$product['special']) { ?>
											<span class="price-new"><?php echo $product['price']; ?></span>
										<?php } else { ?>
											<span class="price-old"><?php echo $product['price']; ?></span>
											<span class="price-new"><?php echo $product['special']; ?></span>										
										<?php } ?>
										<?php } ?>
										</td>
										<td data-title="Tổng cộng" class="total-price"><a href="javascript:void(0);" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="btn btn-inverse">Cho vào giỏ hàng</a></td>
									</tr>
								</tbody>
								<?php } ?>
							</table>
						</form>
						<p class="text-right">
							<a href="<?php echo $continue; ?>" class="btn"><?php echo $button_continue; ?></a>
						</p>
					</div>
				</div>
				<?php } else { ?>
				<h2 class="title-lg"><?php echo $text_empty; ?></h2>			
				<p class="text-right">
					<a href="<?php echo $continue; ?>" class="btn"><?php echo $button_continue; ?></a>
				</p>
				<?php } ?>
			</div>
		</div>
	</div>
</div>
<?php echo $footer; ?>
<script>
function addToCart(product_id, quantity) {
	quantity = typeof($("input[name=quantity]").val()) != 'undefined' ? $("input[name=quantity]").val() : 1;

	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: 'product_id=' + product_id + '&quantity=' + quantity,
		dataType: 'json',
		success: function(json) {
			$('.success, .warning, .attention, .information, .error').remove();
			
			if (json['redirect']) {
				location = json['redirect'];
			}
			
			if (json['success']) {
				$('#notification').html('<div class="alert alert-success alert-dismissible" role="alert"><button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button><i class="fa fa-check-circle fa-lg"></i>' + json['success'] +'</div>');
				
				$('.success').fadeIn('slow');
				
				$('#cart-total').html(json['total']);
				
				$('html, body').animate({ scrollTop: 0 }, 'slow'); 
			}	
		}
	});
}
</script>