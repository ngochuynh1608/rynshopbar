$(document).ready(function() {
	/* Search */
	$('.icon-search').bind('click', function() {
	
		url = $('base').attr('href') + 'index.php?route=product/search';
		
		var search = $('input[name=\'search\']').attr('value');
		
		if (search) {
			url += '&search=' + encodeURIComponent(search);
		}

		location = url;
	});
	$('.btn-search').bind('click', function() {
		
		url = $('base').attr('href') + 'index.php?route=product/search';
		
		var search = $('input[name=\'search\']').attr('value');
		
		if (search) {
			url += '&search=' + encodeURIComponent(search);
		}
		
		location = url;
	});
	
	$('.search input[name=\'search\']').bind('keydown', function(e) {
		
		if (e.keyCode == 13) {
			
			$(".icon-libs").click();
			
			return false;
		}
	});
	$('.header-bottom input[name=\'search\']').bind('keydown', function(e) {
		if (e.keyCode == 13) {
			$(".btn-only-icon").click();
			
			return false;
		}
	});
	$('.header-middle input[name=\'search\']').bind('keydown', function(e) {
		if (e.keyCode == 13) {
			$(".btn-search").click();
			
			return false;
		}
	});
	$('.header-top input[name=\'search\']').bind('keydown', function(e) {
		if (e.keyCode == 13) {
			url = $('base').attr('href') + 'index.php?route=product/search';
		
			var search = $('input[name=\'search\']').attr('value');
			
			if (search) {
				url += '&search=' + encodeURIComponent(search);
			}
			
			location = url;
		}
	});
	
	/* Ajax Cart */
	
	$(".fa-angle-down").click(function(){
		$('.popup-shopping-cart').load('index.php?route=module/cart .popup-shopping-cart > *');
	});
	$(".open-shopping-cart").click(function(){
		$('.popup-shopping-cart').load('index.php?route=module/cart .popup-shopping-cart > *');
	});

	
	/* Mega Menu */
	$('#menu ul > li > a + div').each(function(index, element) {
		// IE6 & IE7 Fixes
		if ($.browser.msie && ($.browser.version == 7 || $.browser.version == 6)) {
			var category = $(element).find('a');
			var columns = $(element).find('ul').length;
			
			$(element).css('width', (columns * 143) + 'px');
			$(element).find('ul').css('float', 'left');
		}		
		
		var menu = $('#menu').offset();
		var dropdown = $(this).parent().offset();
		
		i = (dropdown.left + $(this).outerWidth()) - (menu.left + $('#menu').outerWidth());
		
		if (i > 0) {
			$(this).css('margin-left', '-' + (i + 5) + 'px');
		}
	});

	// IE6 & IE7 Fixes
	/* if ($.browser.msie) {
		if ($.browser.version <= 6) {
			$('#column-left + #column-right + #content, #column-left + #content').css('margin-left', '195px');
			
			$('#column-right + #content').css('margin-right', '195px');
		
			$('.box-category ul li a.active + ul').css('display', 'block');	
		}
		
		if ($.browser.version <= 7) {
			$('#menu > ul > li').bind('mouseover', function() {
				$(this).addClass('active');
			});
				
			$('#menu > ul > li').bind('mouseout', function() {
				$(this).removeClass('active');
			});	
		}
	} */
	
	$('.success img, .warning img, .attention img, .information img').on('click', function() {
		$(this).parent().fadeOut('slow', function() {
			$(this).remove();
		});
	});	
});

function getURLVar(key) {
	var value = [];
	
	var query = String(document.location).split('?');
	
	if (query[1]) {
		var part = query[1].split('&');

		for (i = 0; i < part.length; i++) {
			var data = part[i].split('=');
			
			if (data[0] && data[1]) {
				value[data[0]] = data[1];
			}
		}
		
		if (value[key]) {
			return value[key];
		} else {
			return '';
		}
	}
} 

function addToCart(product_id, quantity) {
	quantity = typeof(quantity) != 'undefined' ? quantity : 1;

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
				$('#notification').html('<div class="box alert alert-success"><p><i class="fa fa-check-circle fa-lg"></i>' + json['success'] + '<img src="catalog/view/theme/__DIR__/img/close.png" alt="" class="close" /></p></div>');
				
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
				$('#notification').html('<div class="success" style="display: none;">' + json['success'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
				
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
				$('#notification').html('<div class="success" style="display: none;">' + json['success'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
				
				$('.success').fadeIn('slow');
				
				$('#compare-total').html(json['total']);
				
				$('html, body').animate({ scrollTop: 0 }, 'slow'); 
			}	
		}
	});
}

function removeCart(key) {
    
	    $.ajax({
	        url: 'index.php?route=checkout/cart/remove',
	        type: 'post',
	        data: 'key=' + key,
	        dataType: 'json',       
	        success: function(json) {
	            // Need to set timeout otherwise it wont update the total
	            setTimeout(function () {
	                $j('#cart > button').html('<span id="cart-total"><i class="fa fa-shopping-cart"></i> ' + json['total'] + '</span>');
	            }, 100);
	            if (getURLVar('route') == 'checkout/cart' || getURLVar('route') == 'checkout/checkout') {
	                location = 'index.php?route=checkout/cart';
	            }else{
	                 $j('#mini-cart').load('index.php?route=common/cart/info'); 
	            }
	            
	            
	        }
	    });
}