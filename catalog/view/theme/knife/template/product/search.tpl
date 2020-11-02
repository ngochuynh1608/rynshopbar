<?php echo $header; ?>
<div class="banner">
	<?php echo $content_top; ?>
	<div class="wrap-content-abs">
		<div class="container">
			<div class="row">
				<h2 class="banner-title col-md-12">sản phẩm</h2>
			</div>				
		</div>
	</div>
</div>
<div class="content serach-result">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div id="notification"></div>
				<ol class="breadcrumb">
					<?php $i=0; foreach ($breadcrumbs as $breadcrumb) { $i++; ?>
						<li>
							<?php if($i== count($breadcrumbs)){ ?>
								<?php echo $breadcrumb['text']; ?>
							<?php }else { ?>
							<a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
							<?php } ?>
						</li>
					<?php } ?>
				</ol>
				<?php if ($products) { ?>
				<div class="row result-search ">					
					<?php foreach ($products as $product) { ?>
					<div class="col-lg-6 col-md-6 col-xs-12 ">
						<div class="product-search">
							<a href="<?php echo $product['href']; ?>" class="wrap-product-image"><img src="<?php echo $product['thumb']; ?>" alt=""></a>
							<div class="product-info">
								<a href="<?php echo $product['href']; ?>" class="product-name"><?php echo $product['name']; ?></a>
								<?php if (!$product['special']) { ?>
								<div class="product-price"><?php echo $product['price']; ?></div>
								<?php } else { ?>
								<p class="price-old"><?php echo $product['price']; ?></p> 
								<div class="product-price"><?php echo $product['special']; ?></div>
								<?php } ?>
							</div>
							<div class="pull-right">
								<a href="javascript:void(0);" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="btn">Thêm vào giỏ hàng</a>
							</div>
						</div>
					</div>
					<?php } ?>					
				</div>
				<?php } else { ?>
				<div class="content"><?php echo $text_empty; ?></div>
				<?php } ?>
				<div class="box pagination"><?php echo $pagination; ?></div>
			</div>
		</div>
	</div>
</div>
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
function addToWishList(product_id) {
	$.ajax({
		url: 'index.php?route=account/wishlist/add',
		type: 'post',
		data: 'product_id=' + product_id,
		dataType: 'json',
		success: function(json) {
			$('.success, .warning, .attention, .information').remove();
						
			if (json['success']) {
				$('#notification').html('<div class="alert alert-success alert-dismissible" role="alert"><button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button><i class="fa fa-check-circle fa-lg"></i>' + json['success'] +'</div>');
				
				$('.success').fadeIn('slow');
				
				$('#wishlist-total').html(json['total']);
				
				$('html, body').animate({ scrollTop: 0 }, 'slow');
			}	
		}
	});
}

function addToCompare(product_id) { 
	$.ajax({
		url: 'index.php?route=product/compare/add',
		type: 'post',
		data: 'product_id=' + product_id,
		dataType: 'json',
		success: function(json) {
			$('.success, .warning, .attention, .information').remove();
						
			if (json['success']) {
				$('#notification').html('<div class="alert alert-success alert-dismissible" role="alert"><button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button><i class="fa fa-check-circle fa-lg"></i>' + json['success'] +'</div>');
				
				$('.success').fadeIn('slow');
				
				$('#compare-total').html(json['total']);
				
				$('html, body').animate({ scrollTop: 0 }, 'slow'); 
			}	
		}
	});
}
</script>
<?php echo $footer; ?>