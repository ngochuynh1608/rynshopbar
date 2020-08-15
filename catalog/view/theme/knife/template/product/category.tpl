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
							<?php foreach ($products as $product) { ?>
								<div class="col-md-3 col-sm-6">
									<div class="product_item">
										<a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>"/>
										</a>
										
										<div class="text">
											<a href="<?php echo $product['href']; ?>"><h5><?php echo $product['name'];?></h5>
											</a>
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
										<?php if($product['special']) { ?>
											<div class="percent">GIẢM <?php echo $product['percent'];?>%</div>
										<?php }?>
									</div>
								</div> 
							<?php }?>                     
                            <div class="col-md-12">
                                <div class="pagination">
                                   <li>
								   <?php echo $pagination ?>
                                    </li>
                                </div>
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
<?php echo $footer; ?>