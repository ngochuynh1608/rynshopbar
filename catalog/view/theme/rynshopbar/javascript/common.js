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
!function($) {
    this.utilities = {

        /**
         * Creates a cookie
         *
         * @param name
         * @param value
         * @param days
         */
        setCookie: function(name, value, days) {
            if (days) {
                var date = new Date();
                date.setTime(date.getTime()+(days*24*60*60*1000));
                var expires = "; expires="+date.toGMTString();
            } else {
                var expires = "";
            }
            document.cookie = name+"="+value+expires+"; path=/";
        },

        /**
         * Reads a cookie by name
         *
         * @param name
         * @returns {*}
         */
        getCookie: function(name) {
            var nameEQ = name + "=";
            var ca = document.cookie.split(';');
            for(var i=0;i < ca.length;i++) {
                var c = ca[i];
                while (c.charAt(0)==' ') c = c.substring(1,c.length);
                if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length,c.length);
            }
            return null;
        },


        initCarousel : function($carousel){
            var $slides = $carousel.find('.slide');

            if($carousel[0]._scooch){
                return;
            }

            if($slides.length > 1) {

                $carousel.scooch({
                    classPrefix: '',
                    classNames: {
                        outer: "carousel",
                        inner: "slides",
                        item: "slide",
                        center: "center",
                        touch: "has-touch",
                        dragging: "dragging",
                        active: "active"
                    }
                });

                if($carousel.hasClass('with-nav')) {
                    $carousel.on('afterSlide', function (event, previousIndex, newIndex) {
                        var count = jQuery(this).find('.slide').length,
                            numToShow = jQuery(this).data('numtoshow') ? jQuery(this).data('numtoshow') : 0;

                        if (newIndex === 1) {
                            $carousel.find('.left').addClass('disabled');
                        }else{
                            $carousel.find('.left').removeClass('disabled');
                        }

                        if (newIndex === count || newIndex + numToShow > count) {
                            $carousel.find('.right').addClass('disabled');
                        }else{
                            $carousel.find('.right').removeClass('disabled');
                        }
                    });
                }

                //Create Carousel Functionality
                if ($carousel.hasClass('no-carousel')) {
                    $carousel.on('afterSlide', function (event, previousIndex, newIndex) {
                        var $self = jQuery(this),
                            count = $self.find('.slide').length;

                        if (newIndex === 1 && previousIndex === 1) {
                            $self.scooch('move', count);
                        }

                        if (newIndex === count && previousIndex === count) {
                            $self.scooch('move', 1);
                        }
                    });
                }

                //Auto Play Functionality
                if ($carousel.hasClass('auto')) {
                    var timer,
                    slideCount = $carousel.find('.slide').length;

                    function setTimer(){
                        var next = $carousel.find('.active').index();
                        timer = setInterval(function(){
                            if(next == slideCount) next = 0;
                            $carousel.scooch('move', ++next);
                        }, 5000);
                    }

                    setTimer();

                    $carousel.on({
                        'mouseover' : function(){
                            clearInterval(timer);
                        },
                        'mouseout': function(){
                            setTimer();
                        }
                    })

                }
            } else if($slides.length == 1) {
                $slides.addClass('active');
            }
        },
        scrollTo : function($container, check, duration) {
            check || (check = false);
            duration || (duration = 600);
            if (!check || (check && $container.offset().top < window.scrollY)) {
                jQuery('html, body').animate({
                    scrollTop : $container.offset().top
                }, duration);
            }
        },
        /*truncate : function($elm){
            $elm.dotdotdot({
                ellipsis : '...',
                'callback' : function(isTruncated, orgContent){
                    var $this = $(this)

                    if(isTruncated){
                        $this.append('<a class="read-more link bold" href="#">Read More</a>');
                        $this.after('<div class="full-content hide" />').next('.full-content').html(orgContent).append('<a class="read-less link bold" href="#">Read Less</a>')
                        $this.find('.read-more').on('click', function(e){
                            e.preventDefault();
                            $(this).parents('.truncate').addClass('hide').next('.full-content').removeClass('hide');
                        });
                        $('.full-content').find('.read-less').on('click', function(e){
                            e.preventDefault();
                            $(this).parents('.full-content').addClass('hide').prev('.truncate').removeClass('hide');
                        });

                    }
                }
            });
        }*/
    };
}.call(window.jQuery);
if (typeof Gorilla === 'undefined') {
    var Gorilla = {};
}
!function($) {

    // Readied
    $(function() {
        //Accordions
        if (($accordion = $('.accordion')).length) {
            $accordion.Accordion();

            //Cart, when submitting initial shipping/tax, keep tab expanded instead of collapsing
            if(($cartAccordion = $('#co-shipping-method-form')).length){
                if($('#co-shipping-method-form').find('#co-shipping-method-form')){
                    $accordion.Accordion('activate',$('.button-shipping-tax'));

                }
            }
            if(($shippingMethod = $('#co-shipping-method-form')).length){
                if($shippingMethod.find('input:checked').length){
                    $accordion.Accordion('collapse',$('.button-shipping-tax'));
                }
            }
        }
        //Custom Selects
        if(($customSelect = $('#layered-navigation').find('select')).length) {
            $customSelect.CustomSelects({
                customOptions: true
            });
        }
        if(($select = $('select').not('.swatch-select')).length) {
            $select.CustomSelects();
        }
        //Lazy Load Images
        if (($lazyLoad = $('.lazy-load')).length) {
            $lazyLoad.unveil();
        }
        //Tabby
        if(($tabsContainer = $('#tabs-container')).length){
            $tabsContainer.Tabby();
        }
        //Close top message

        //nav background add '.not-wide' if there is only one child node in top level max
        if(($navBackground = $('#nav')).length){
            $navBackground.find('.top-level-max > .level0').each(function(index, elem) {
                var childrenCount = 0;
                childrenCount = $(this).find(".has-children").length;
                if(childrenCount==1)$(this).addClass('not-wide');
            });
        }

        //Opacity main navigation
        if ($('body').width() > 768){
            $("ul.top-level-max > li.level0").on('mouseenter', function () {
                $("ul.top-level-max > li.level0").not(this).addClass('opacity-main');
            }).on('mouseleave', function () {
                $("ul.top-level-max > li.level0").removeClass('opacity-main');
            });
        }
        //Quick view - qty enter
        $(document).on('keyup','#qty', function(e) {
            if (e.keyCode == '13') {
                $(this).next('#product-addtocart-button').click();
            }
        });

        if(($giftCart1 = $(".giftcard-send-form")).length && ($giftCart2 = $(".add-to-cart-wrapper")).length){
            $giftCart1.appendTo($giftCart2);
        }

        //Set cart count mobile
        $('.cart-count-display').html($('.cart-count').html());

        // Contact us form. Depending on selected Method od Contact validate phone or email
        if(($contactUs = $('#contact_us')).length){
            $contactUs.find('#contact_method').change(function(){
                if($(this).val() == 'phone'){
                    $contactUs.find('#telephone').addClass('required-entry');
                    $contactUs.find('#email').removeClass('required-entry');
                    $contactUs.find('#email').removeClass('validation-failed');
                    $('#advice-required-entry-email').remove();

                } else if($(this).val() == 'email'){
                    $contactUs.find('#email').addClass('required-entry');
                    $contactUs.find('#telephone').removeClass('required-entry');
                    $contactUs.find('#telephone').removeClass('validation-failed');
                    $('#advice-required-entry-telephone').remove();
                }
            });
        }
        //move Globall message in home page
        if($('body').hasClass('cms-home')){
            $("#global-messages").detach().appendTo('.carousel');
        }

        //Carousel
        if(($carousel = $('.carousel')).length){

            function checkSlideColor($slide){
                if($slide.hasClass('dark')){
                    $('body').addClass('dark');
                }else{
                    $('body').removeClass('dark');
                }
            }

            $carousel.each(function(i, v){
                Gorilla.utilities.initCarousel($(v));
                checkSlideColor($(v).find('.slide').eq(0));
            });

            $carousel.on('beforeSlide', function (event, previousIndex, newIndex) {
                var $self = $(this);

                checkSlideColor($self.find('.slide').eq(newIndex-1));
            });
        }

        //Category hero on CLP left right alignment of text. If in admin panel Category description field has '.text-left' or '.text-right' add class 'left' or 'right' to '.cateogry-hero'
        if(($categoryHero = $('.category-hero')).length){
            if($categoryHero.find('.text-left').length) {
                $categoryHero.addClass('left');
            }
            if($categoryHero.find('.text-right').length) {
                $categoryHero.addClass('right');
            }
        }

        /**
         * Accordion + checkbox
         *
         * Accordion header is updated with information of selected options.
         * selectedItems - count of checked options
         *
         */
        if( $accordionCheckbox = $('.checkbox-accordion') ){

            //check if any of the checkboxes is selected and add information to the accordion header
            $accordionCheckbox.each(function(){
                var $accordion = $(this);
                //checked items length
               var savedOptions = $accordion.find( "input:checked" ).length;
                if( savedOptions == 0 ){
                    $accordion.closest('.checkbox-accordion').find('.inner').html('0 selected');
                }
               if( savedOptions > 0 ){
                   $accordion.closest('.checkbox-accordion').find('.inner').html(savedOptions + ' selected');
               }
            });
            //after the checkbox is checked update the information in the accorion header
            $accordionCheckbox.on('click', '.custom-checkbox', function(){
                var $clicked = $(this);
                //checked items length
                var selectedItems = $clicked.parent().find( "input:checked" ).length;
                $clicked.closest('.checkbox-accordion').find('.inner').html(selectedItems + ' selected');
            });
        }

        //Modal
        if(($modal = $('.modal')).length) {
            //Close Modal on Click of Backdrop
            $modal.on('click.Moby touch.Moby', function(e){
                if(e.target != e.currentTarget) return;

                $(this).Moby('hide');

            }).on('shown.Moby', function(e){
                jQuery(document).trigger('product-media-loaded');

            }).on('hidden.Moby', function(e){

            })
        }
        //Truncate
        /*if(($truncate = $('.truncate')).length){
            $truncate.dotdotdot({
                ellipsis : '...',
                'callback' : function(isTruncated, orgContent){
                    var $this = $(this)

                    if(isTruncated){
                        $this.append('<a class="read-more link bold" href="#">Read More</a>');
                        $this.after('<div class="full-content hide" />').next('.full-content').html(orgContent).append('<a class="read-less link bold" href="#">Read Less</a>')
                        $this.find('.read-more').on('click', function(e){
                            e.preventDefault();
                            $(this).parents('.truncate').addClass('hide').next('.full-content').removeClass('hide');
                        });
                        $('.full-content').find('.read-less').on('click', function(e){
                            e.preventDefault();
                            $(this).parents('.full-content').addClass('hide').prev('.truncate').removeClass('hide');
                        });

                    }
                }
            });
        }*/

        //Attribute Filters
        if(($filters = $('#layered-navigation')).length){
            var $button = $filters.find('.button'),
                $selects = $filters.find('select'),
                url = window.location.search == '' ? window.location.href + '?' : window.location.href;

            $button.on('click', function(){

                $selects.each(function(i, v){
                    if($(this).val()){
                        /**
                         * Mod for SaltWorks, applies a virtual attribute filter for mapped attributes
                         * This is to allow filtering of configurable products too
                         */
                        var originalFilter = $(this).val();
                        var filterCode = originalFilter.split("=");
                        var virtualFilter = "";

                        if(filterCode.length > 0) {

                            if(attributeMap.hasOwnProperty(filterCode[0])) {
                                virtualFilter = "&" + attributeMap[filterCode[0]]['virtual_code'] + "=" + attributeMap[filterCode[0]]['options'][filterCode[1]];
                            };

                        }

                        if(url.slice(-1) != '&' && url.slice(-1) != '?') url +='&';
                        url += originalFilter + virtualFilter;

                    }
                });

                $(this).attr("disabled", "disabled");

                window.location.href = url;
            });
        }


        //Blog Serach focus
        var $blogSearchInput = $( '#blog-search').find('.input-text');

        $blogSearchInput.focusin(function() {
            $( this ).parent().parent().addClass('active');
        });


        /**
         * Blog grid equal heights
         * setting equal height for grid elements on blog posts page listing
         * invoked in respond depenging on @media max-width
         */
        var blogEqualPostHeight = function(parent, child, remove){
            var _default = {
                parent:$('.blog-grid'),
                child:$('.blog-grid').find('li')
            };
            if(!parent == 'default') _default.parent = parent;
            if(!child == 'default') _default.child = child;

            if(_default.parent && _default.child){
                if(remove == true){
                    _default.child.removeAttr('style');
                } else {
                    _default.child.removeAttr('style');
                    Gorilla.utilities.equalHeightCalculation(_default.parent, _default.child);
                }
            }
        };
        //Blog grid equal heights
        blogEqualPostHeight('default','default',false);



        if(($productImage = $('.products-grid .product-image')).length){
            var imageTimeout;
            $(document)
                .on('mouseenter', '.products-grid .product-image img', function(){
                    var $this = $(this);

                    if(!$this.data('oringalimage')){
                        $this.data('oringalimage', $this.prop('src'));
                    }
                    imageTimeout = setTimeout(function(){
                        $this.attr('src', $this.data('alt'));
                    }, 200);
                }).on('mouseleave', '.products-grid .product-image img', function(){
                    var $this = $(this);
                    clearTimeout(imageTimeout);
                    $this.attr('src', $this.data('oringalimage'));
                });
        }


        /**
         * Adding custom attributes to fire sidebar collapsing menu on mobile < 768
         */
        var $cmsMenu =  $(document).find('.cms-menu .parent');

        $cmsMenu.attr('data-sidebar-menu', 'true');
        $cmsMenu.addClass('block-content');
        $cmsMenu.find('ul').attr('data-sidebar-list', 'true').find('strong').parent().addClass('current');

        /**
         * Sidebar collapsing menu
         * Use:
         * Add  data-sidebar-menu to the sidebar div (or the wrapper)
         * Add  data-sidebar-list to the <ul>
         */
        var $nav = $('#nav');
        var $menuBlock = $(document).find('[data-sidebar-menu]');
        
        /**
         * Footer links
         */
        var $footerLinks = $('#footer');

        Respond.to({
            'media' : '(max-width: 768px)',
            'namespace' : '768_if_else',
            'fallback' : 'else',
            'if' : function() {
                $('body').addClass('mobile');

                if ($('.bg-submenu').length) {
                    $('.bg-submenu').remove();
                }

                //Main Nav
                if(($menu = $nav.find('.nav-inner > ul')).length){
                    $menu.Menu('unset');
                    $menu.find('ul.level0').css({display: 'none'});
                }
                //Mobile Nav
                $nav.mobileNav({
                    triggerSelector : '.button-nav'
                });

                if(($mobileAccordion = $('.mobile-accordion')).length){
                    $mobileAccordion.Accordion();
                }

                //Blog grid equal heights
                blogEqualPostHeight('default','default',true);

                if(($zoom = $('#zoom')).length){
                    $('.zoomContainer').remove();
                    $zoom.removeData('elevateZoom');
                    $zoom.removeData('zoomImage');
                }

                if(($moreViews = $('#more-views')).length){
                    var $carousel = $('.mobile-images');

                    $moreViews.find('a').on('click touch', function(e){
                        e.preventDefault();
                        var $li = $(this).parents('li');

                        $li.removeClass('active').end().addClass('active');
                        $carousel.scooch('move', $li.index());
                    });
                }

                if(($layeredNav = $('.layered-navigation')).length){
                    $layeredNav.removeClass('collapse');
                }

            },
            'else' : function() {
                $('body').removeClass('mobile');

                //Main menu
                if ($('#masthead').length) {
                    $('#masthead').append('<div class="bg-submenu"></div>');
                }
                $('#nav').removeAttr('style');
                if(($menu = $nav.find('.nav-inner > ul')).length){
                    $menu.Menu({'delay':'100'});
                }
                //Mobile Navigation
                $nav.mobileNav('unset');
                $('#menu-shade').removeClass('open');

                //Mini-Cart
                if(($miniCart = $('#mini-cart')).length){
                    $miniCart.Menu({
                        'triggerSelector' : '.mini-cart-trigger',
                        'menuSelector' : '#header-cart'
                    });
                }

                //Footer accordion
                if(($mobileAccordion = $('.mobile-accordion')).length && $mobileAccordion.data('Accordion')){
                    $mobileAccordion.Accordion('unset');
                }

                //Blog grid equal heights
                blogEqualPostHeight('default','default',false);

                if(($layeredNav = $('#layered-navigation')).length){
                    $layeredNav.css({'height' : ''});
                }

            }
        });

        Respond.to({
            'media' : '(max-width: 767px)',
            'namespace' : '767_if_else',
            'fallback' : 'else',
            'if' : function() {
                //left nav accordion @TODO: This should use our accordion plugin.
                $menuBlock.addClass('mobile').on('click.AsideNav', '[data-sidebar-list]', function(){
                    if ($(this).hasClass('open')) {
                        $(this).removeClass('open');
                    } else {
                        $(this).addClass('open');
                    }
                });

            },
            'else' : function() {
                //left nav accordion @TODO: This should use our accordion plugin.
                $menuBlock.removeClass('mobile').off('click.AsideNav').find('[data-sidebar-list]').removeClass('open');

            }
        });
        Respond.to({
            'media' : '(max-width: 960px)',
            'namespace' : '960_if_else',
            'fallback' : 'else',
            'if' : function() {
                //Blog grid equal heights
                blogEqualPostHeight('default','default',false);
            },
            'else' : function() {
                //Blog grid equal heights
                blogEqualPostHeight('default','default',false);

            }
        });



    });

}(window.jQuery);
// Cart add remove functions
var cart = {
	'add': function(product_id, quantity) {
		$.ajax({
			url: 'index.php?route=checkout/cart/add',
			type: 'post',
			data: 'product_id=' + product_id + '&quantity=' + (typeof(quantity) != 'undefined' ? quantity : 1),
			dataType: 'json',
			beforeSend: function() {
				$('#cart > button').button('loading');
			},
			complete: function() {
				$('#cart > button').button('reset');
			},
			success: function(json) {
				$('.alert, .text-danger').remove();

				if (json['redirect']) {
					location = json['redirect'];
				}

				if (json['success']) {
					$('.msg').parent().before('<div class="alert alert-success thongbao"><i class="fa fa-check-circle"></i> ' + json['success'] + ' <button type="button" class="close" data-dismiss="alert">&times;</button></div>');

					// Need to set timeout otherwise it wont update the total
					setTimeout(function () {
						$('#cart > button').html('<i class="fa fa-shopping-cart"></i><span id="cart-total"> ' + json['total_product'] + '</span>');
					}, 100);

					//$('html, body').animate({ scrollTop: 0 }, 'slow');

					$('#mini-cart').load('index.php?route=common/cart/info');
				}
			},
	        error: function(xhr, ajaxOptions, thrownError) {
	            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
	        }
		});
	},
	'update': function(key, quantity) {
		$.ajax({
			url: 'index.php?route=checkout/cart/edit',
			type: 'post',
			data: 'key=' + key + '&quantity=' + (typeof(quantity) != 'undefined' ? quantity : 1),
			dataType: 'json',
			beforeSend: function() {
				$('#cart > button').button('loading');
			},
			complete: function() {
				$('#cart > button').button('reset');
			},
			success: function(json) {
				// Need to set timeout otherwise it wont update the total
				setTimeout(function () {
					$('#cart > button').html('<i class="fa fa-shopping-cart"></i><span id="cart-total"> ' + json['total'] + '</span>');
				}, 100);

				if (getURLVar('route') == 'checkout/cart' || getURLVar('route') == 'checkout/checkout') {
					location = 'index.php?route=checkout/cart';
				} else {
					$('#mini-cart').load('index.php?route=common/cart/info');
				}
			},
	        error: function(xhr, ajaxOptions, thrownError) {
	            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
	        }
		});
	},
	'remove': function(key) {
		$.ajax({
			url: 'index.php?route=checkout/cart/remove',
			type: 'post',
			data: 'key=' + key,
			dataType: 'json',
			beforeSend: function() {
				$('#cart > button').button('loading');
			},
			complete: function() {
				$('#cart > button').button('reset');
			},
			success: function(json) {
				// Need to set timeout otherwise it wont update the total
				setTimeout(function () {
					$('#cart > button').html('<i class="fa fa-shopping-cart"></i><span id="cart-total"> ' + json['total'] + '</span>');
				}, 100);

				if (getURLVar('route') == 'checkout/cart' || getURLVar('route') == 'checkout/checkout') {
					location = 'index.php?route=checkout/cart';
				} else {
					$('#mini-cart').load('index.php?route=common/cart/info');
				}
			},
	        error: function(xhr, ajaxOptions, thrownError) {
	            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
	        }
		});
	}
}

var voucher = {
	'add': function() {

	},
	'remove': function(key) {
		$.ajax({
			url: 'index.php?route=checkout/cart/remove',
			type: 'post',
			data: 'key=' + key,
			dataType: 'json',
			beforeSend: function() {
				$('#cart > button').button('loading');
			},
			complete: function() {
				$('#cart > button').button('reset');
			},
			success: function(json) {
				// Need to set timeout otherwise it wont update the total
				setTimeout(function () {
					$('#cart > button').html('<i class="fa fa-shopping-cart"></i><span id="cart-total"> ' + json['total'] + '</span>');
				}, 100);

				if (getURLVar('route') == 'checkout/cart' || getURLVar('route') == 'checkout/checkout') {
					location = 'index.php?route=checkout/cart';
				} else {
					$('#cart > ul').load('index.php?route=common/cart/info ul li');
				}
			},
	        error: function(xhr, ajaxOptions, thrownError) {
	            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
	        }
		});
	}
}

var wishlist = {
	'add': function(product_id) {
		$.ajax({
			url: 'index.php?route=account/wishlist/add',
			type: 'post',
			data: 'product_id=' + product_id,
			dataType: 'json',
			success: function(json) {
				$('.alert').remove();

				if (json['redirect']) {
					location = json['redirect'];
				}

				if (json['success']) {
					$('#content').parent().before('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + ' <button type="button" class="close" data-dismiss="alert">&times;</button></div>');
				}

				$('#wishlist-total span').html(json['total']);
				$('#wishlist-total').attr('title', json['total']);

				$('html, body').animate({ scrollTop: 0 }, 'slow');
			},
	        error: function(xhr, ajaxOptions, thrownError) {
	            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
	        }
		});
	},
	'remove': function() {

	}
}

var compare = {
	'add': function(product_id) {
		$.ajax({
			url: 'index.php?route=product/compare/add',
			type: 'post',
			data: 'product_id=' + product_id,
			dataType: 'json',
			success: function(json) {
				$('.alert').remove();

				if (json['success']) {
					$('#content').parent().before('<div class="alert alert-success thongbao"><i class="fa fa-check-circle"></i> ' + json['success'] + ' <button type="button" class="close" data-dismiss="alert">&times;</button></div>');

					$('#compare-total').html(json['total']);

					//$('html, body').animate({ scrollTop: 0 }, 'slow');
				}
			},
	        error: function(xhr, ajaxOptions, thrownError) {
	            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
	        }
		});
	},
	'remove': function() {

	}
}

/* Agree to Terms */
$(document).delegate('.agree', 'click', function(e) {
	e.preventDefault();

	$('#modal-agree').remove();

	var element = this;

	$.ajax({
		url: $(element).attr('href'),
		type: 'get',
		dataType: 'html',
		success: function(data) {
			html  = '<div id="modal-agree" class="modal">';
			html += '  <div class="modal-dialog">';
			html += '    <div class="modal-content">';
			html += '      <div class="modal-header">';
			html += '        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>';
			html += '        <h4 class="modal-title">' + $(element).text() + '</h4>';
			html += '      </div>';
			html += '      <div class="modal-body">' + data + '</div>';
			html += '    </div';
			html += '  </div>';
			html += '</div>';

			$('body').append(html);

			$('#modal-agree').modal('show');
		}
	});
});

// Autocomplete */
(function($) {
	$.fn.autocomplete = function(option) {
		return this.each(function() {
			this.timer = null;
			this.items = new Array();

			$.extend(this, option);

			$(this).attr('autocomplete', 'off');

			// Focus
			$(this).on('focus', function() {
				this.request();
			});

			// Blur
			$(this).on('blur', function() {
				setTimeout(function(object) {
					object.hide();
				}, 200, this);
			});

			// Keydown
			$(this).on('keydown', function(event) {
				switch(event.keyCode) {
					case 27: // escape
						this.hide();
						break;
					default:
						this.request();
						break;
				}
			});

			// Click
			this.click = function(event) {
				event.preventDefault();

				value = $(event.target).parent().attr('data-value');

				if (value && this.items[value]) {
					this.select(this.items[value]);
				}
			}

			// Show
			this.show = function() {
				var pos = $(this).position();

				$(this).siblings('ul.dropdown-menu').css({
					top: pos.top + $(this).outerHeight(),
					left: pos.left
				});

				$(this).siblings('ul.dropdown-menu').show();
			}

			// Hide
			this.hide = function() {
				$(this).siblings('ul.dropdown-menu').hide();
			}

			// Request
			this.request = function() {
				clearTimeout(this.timer);

				this.timer = setTimeout(function(object) {
					object.source($(object).val(), $.proxy(object.response, object));
				}, 200, this);
			}

			// Response
			this.response = function(json) {
				html = '';

				if (json.length) {
					for (i = 0; i < json.length; i++) {
						this.items[json[i]['value']] = json[i];
					}

					for (i = 0; i < json.length; i++) {
						if (!json[i]['category']) {
							html += '<li data-value="' + json[i]['value'] + '"><a href="' + json[i]['value'] + '" class="itemsearch"><img src="' + json[i]['image'] + '" />' + json[i]['label'] + '</a></li>';
						}
					}

					// Get all the ones with a categories
					var category = new Array();

					for (i = 0; i < json.length; i++) {
						if (json[i]['category']) {
							if (!category[json[i]['category']]) {
								category[json[i]['category']] = new Array();
								category[json[i]['category']]['name'] = json[i]['category'];
								category[json[i]['category']]['item'] = new Array();
							}

							category[json[i]['category']]['item'].push(json[i]);
						}
					}

					for (i in category) {
						html += '<li class="dropdown-header">' + category[i]['name'] + '</li>';

						for (j = 0; j < category[i]['item'].length; j++) {
							html += '<li data-value="' + category[i]['item'][j]['value'] + '"><a href="#">&nbsp;&nbsp;&nbsp;' + category[i]['item'][j]['label'] + '</a></li>';
						}
					}
				}

				if (html) {
					this.show();
				} else {
					this.hide();
				}

				$(this).siblings('ul.dropdown-menu').html(html);
			}

			$(this).after('<ul class="dropdown-menu"></ul>');
			//$(this).siblings('ul.dropdown-menu').delegate('a', 'click', $.proxy(this.click, this));

		});
	}
})(window.jQuery);
