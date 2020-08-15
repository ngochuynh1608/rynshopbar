<?php echo $header; ?>
<section class="content">
	<div class="container">
		<div class="row">
			<?php echo $content_top;?>
		</div>
		
		<div class="row content_bottom">
			<div class="col-md-3">
				<?php echo $column_left;?>
			</div>
			<div class="col-md-9 resize">
				<div class="product_box ">
					<div class="row">
						<div class="col-md-12">
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
						</div>                        
						<div class="col-md-5">
							<div class="img_detail">
                                <ul class="product_image">
                                  <li><a class="fancybox" href="<?php echo $popup; ?>" data-fancybox-group="gallery"><img src="<?php echo $popup; ?>"/></a></li>
                                  <?php if ($images) { ?>
                                    <?php foreach ($images as $image) { ?>
                                    <li><a class="fancybox" href="<?php echo $image['thumb']; ?>" data-fancybox-group="gallery"><img src="<?php echo $image['thumb']; ?>" /></a></li>
                                    <?php }} ?>
                                  </ul>
							</div>

                        						</div> 
						<div class="col-md-7">
							<div class="content_detail">
								<div class="text_detail">
									<h5><?php echo $heading_title; ?></h5>
									<?php if($special) { ?>
										<span class="old_price"><?php echo $price ;?></span><span class="new_price"><?php echo $special ;?></span>
									<?php } else { ?>
										<span class="new_price"><?php echo $price ;?></span>
									<?php }?>
								</div>
								<div>
									<p class="description"><?php echo $description; ?></p>
                                    <div class="cart_product">
									   <a href="javascript:void(0);" onclick="addToCart('<?php echo $product_id; ?>');" class="cart"><i class="fa fa-shopping-cart"></i> Đặt hàng</a>
								    </div>
                                </div>
							</div>
						</div> 
						<div class="col-md-12">
							<h6>Sản phẩm liên quan</h6>
						</div> 
						<div class="product_relate">
						<?php foreach($products as $product){?>
							<div class="col-md-3 rmr col-xs-6">
								<div class="product_item">
									<a href="<?php echo $product['href'];?>"><img src="<?php echo $product['thumb'];?>">
									</a>
									<div class="text">
										<h5><?php echo $product['name'];?>
										</h5>
										<?php if($product['special']) { ?>
											<p class="old-price"><?php echo $product['price'];?></p>
											<p class="price"><?php echo $product['special'];?></p>
										<?php }else{ ?>
											<p class="price"><?php echo $product['price'];?></p>
										<?php }?>
									</div>
									<div class="cart">
										<a href="javascript:void(0);" onclick="addToCart('<?php echo $product['product_id']; ?>');"><i class="fa fa-shopping-cart"></i> Đặt hàng</a>
									</div>
								</div> 
							</div>
						<?php }?>
						</div>                   
					</div>
				</div>
			</div>
			<!--- giới thiêu---->
			

		</div>
		<div class="row">
			<div class="col-md-12">
				<?php echo $content_bottom;?>
			</div>
		</div>
	</div>
</section>
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
<script type="text/javascript"><!--
$('#review .pagination a').live('click', function() {
  $('#review').fadeOut('slow');
    
  $('#review').load(this.href);
  
  $('#review').fadeIn('slow');
  
  return false;
});     

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').bind('click', function() {
  $.ajax({
    url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
    type: 'post',
    dataType: 'json',
    data: 'name=' + encodeURIComponent($('input[name=\'name\']').val()) + '&text=' + encodeURIComponent($('textarea[name=\'text\']').val()) + '&rating=' + encodeURIComponent($('input[name=\'rating\']:checked').val() ? $('input[name=\'rating\']:checked').val() : '') + '&captcha=' + encodeURIComponent($('input[name=\'captcha\']').val()),
    beforeSend: function() {
      $('.success, .warning').remove();
      $('#button-review').attr('disabled', true);
      $('.mt20').after('<div class="attention"><img src="catalog/view/theme/<?php echo $this->config->get('config_template');?>/image/loading.gif" alt="" /><p class="bg-danger"> <?php echo $text_wait; ?></p></div>');
    },
    complete: function() {
      $('#button-review').attr('disabled', false);
      $('.attention').remove();
    },
    success: function(data) {
      if (data['error']) {
        $('.mt20').after('<div class="warning"><p class="bg-danger">' + data['error'] + '</p></div>');
      }
      
      if (data['success']) {
        $('.mt20').after('<div class="success"><p class="bg-danger">' + data['success'] + '</p></div>');
                
        $('input[name=\'name\']').val('');
        $('textarea[name=\'text\']').val('');
        $('input[name=\'rating\']:checked').attr('checked', '');
        $('input[name=\'captcha\']').val('');
      }
    }
  });
});
</script>
<?php echo $footer; ?>