<?php echo $header; ?>
<section class="content">
	<div class="container">
		<div class="row">
			<?php echo $content_top;?>
		</div>
		
		<div class="row content_bottom">
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
							          <div id="product">
							            <?php if ($options) { ?>
							            <div class="options">
							            <?php foreach ($options as $option) { ?>
							            <?php if ($option['type'] == 'select') { ?>
							            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
							              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
							              <select name="option[<?php echo $option['product_option_id']; ?>]" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control">
							                <option value=""><?php echo $text_select; ?></option>
							                <?php foreach ($option['product_option_value'] as $option_value) { ?>
							                <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
							                <?php if ($option_value['price']) { ?>
							                (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
							                <?php } ?>
							                </option>
							                <?php } ?>
							              </select>
							            </div>
							            <?php } ?>
							            <?php if ($option['type'] == 'radio') { ?>
							            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
							              <label class="control-label"><?php echo $option['name']; ?></label>
							              <div id="input-option<?php echo $option['product_option_id']; ?>">
							                <?php foreach ($option['product_option_value'] as $option_value) { ?>
							                <div class="radio">
							                  <label>
							                    <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
							                    <?php echo $option_value['name']; ?>
							                    <?php if ($option_value['price']) { ?>
							                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
							                    <?php } ?>
							                  </label>
							                </div>
							                <?php } ?>
							              </div>
							            </div>
							            <?php } ?>
							            <?php if ($option['type'] == 'checkbox') { ?>
							            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
							              <label class="control-label"><?php echo $option['name']; ?></label>
							              <div id="input-option<?php echo $option['product_option_id']; ?>">
							                <?php foreach ($option['product_option_value'] as $option_value) { ?>
							                <div class="checkbox">
							                  <label>
							                    <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" />
							                    <?php echo $option_value['name']; ?>
							                    <?php if ($option_value['price']) { ?>
							                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
							                    <?php } ?>
							                  </label>
							                </div>
							                <?php } ?>
							              </div>
							            </div>
							            <?php } ?>
							            <?php if ($option['type'] == 'image') { ?>
							            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
							              <label class="control-label"><?php echo $option['name']; ?></label>
							              <div id="input-option<?php echo $option['product_option_id']; ?>">
							                <?php foreach ($option['product_option_value'] as $option_value) { ?>
							                <div class="radio">
							                  <label>
							                    <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
							                    <img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" /> <?php echo $option_value['name']; ?>
							                    <?php if ($option_value['price']) { ?>
							                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
							                    <?php } ?>
							                  </label>
							                </div>
							                <?php } ?>
							              </div>
							            </div>
							            <?php } ?>
							            <?php if ($option['type'] == 'text') { ?>
							            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
							              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
							              <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
							            </div>
							            <?php } ?>
							            <?php if ($option['type'] == 'textarea') { ?>
							            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
							              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
							              <textarea name="option[<?php echo $option['product_option_id']; ?>]" rows="5" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control"><?php echo $option['value']; ?></textarea>
							            </div>
							            <?php } ?>
							            <?php if ($option['type'] == 'file') { ?>
							            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
							              <label class="control-label"><?php echo $option['name']; ?></label>
							              <button type="button" id="button-upload<?php echo $option['product_option_id']; ?>" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-default btn-block"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
							              <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" id="input-option<?php echo $option['product_option_id']; ?>" />
							            </div>
							            <?php } ?>
							            <?php if ($option['type'] == 'date') { ?>
							            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
							              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
							              <div class="input-group date">
							                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
							                <span class="input-group-btn">
							                <button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button>
							                </span></div>
							            </div>
							            <?php } ?>
							            <?php if ($option['type'] == 'datetime') { ?>
							            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
							              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
							              <div class="input-group datetime">
							                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
							                <span class="input-group-btn">
							                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
							                </span></div>
							            </div>
							            <?php } ?>
							            <?php if ($option['type'] == 'time') { ?>
							            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
							              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
							              <div class="input-group time">
							                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
							                <span class="input-group-btn">
							                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
							                </span></div>
							            </div>
							            <?php } ?>
							            <?php } ?>
							            </div>
							            <?php } ?>
							            <?php if ($recurrings) { ?>
							            <hr>
							            <div class="form-group required">
							              <select name="recurring_id" class="form-control">
							                <option value=""><?php echo $text_select; ?></option>
							                <?php foreach ($recurrings as $recurring) { ?>
							                <option value="<?php echo $recurring['recurring_id'] ?>"><?php echo $recurring['name'] ?></option>
							                <?php } ?>
							              </select>
							              <div class="help-block" id="recurring-description"></div>
							            </div>
							            <?php } ?>
							            <form class="form-inline row">
									            <div class="form-group col-md-3">
										              <label class="control-label" for="input-quantity"><?php echo $entry_qty; ?></label>
										        </div>
										        <div class="form-group col-md-3">
													    <select class="form-control" id="input-quantity" name="quantity">
													      <?php for($i=1 ; $i < 20 ; $i++){ ?>
													      	<option><?php echo $i ?></option>
													      <?php } ?>
													    </select>
										              	<input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
										        </div>
										        <div class="form-group col-md-4">
												<button type="button" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary  btn-lg btn-block "><?php echo $button_cart; ?></button>
												</div>
							            </form>
							            <?php if ($minimum > 1) { ?>
							            <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $text_minimum; ?></div>
							            <?php } ?>
							          </div>
								    </div>
                                </div>
							</div>
						</div> 
						<div class="col-md-12">
							<h6>Sản phẩm liên quan</h6>
						</div> 
						<div class="product_relate">
						<?php foreach($products as $product){?>
							<div class="col-md-3 col-xs-6">
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
			<div class="col-md-3">
				<?php echo $column_right;?>
			</div>

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
</script>    
<script type="text/javascript"><!--
$('#button-cart').on('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
		dataType: 'json',
		beforeSend: function() {
			$('#button-cart').button('loading');
		},
		complete: function() {
			$('#button-cart').button('reset');
		},
		success: function(json) {
			console.log(json);
			$('.alert, .text-danger').remove();
			$('.form-group').removeClass('has-error');

			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						var element = $('#input-option' + i.replace('_', '-'));

						if (element.parent().hasClass('input-group')) {
							element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						} else {
							element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						}
					}
				}

				if (json['error']['recurring']) {
					$('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
				}

				// Highlight any found errors
				$('.text-danger').parent().addClass('has-error');
			}

			if (json['success']) {
				$('.breadcrumb').after('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

				$('#cart > button').html('<i class="fa fa-shopping-cart"></i> ' + json['total']);

				$('html, body').animate({ scrollTop: 0 }, 'slow');

				$('#cart > ul').load('index.php?route=common/cart/info ul li');
			}
		}
	});
});
</script>
<script type="text/javascript"><!--
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