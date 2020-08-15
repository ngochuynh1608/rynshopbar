$(document).ready(function() {

    /**************************************************
     *
     *    GET WIDTH WINDOW
     *
     ***************************************************/
    var w_Window = $(window).width();
    var h_Window = $(window).height();


    /**************************************************
     *
     *    WOW JS
     *
     ***************************************************/
    //new WOW().init();


    /**************************************************
     *
     *    CAMERA SLIDES
     *
     ***************************************************/
	if($('#slider-home').length > 0){
		$('#slider-home').camera({
			height: '530px',
			fx: 'simpleFade',
			pagination: false,
			thumbnails: false,
			navigation: false,
			navigationHover: false,
			loader: 'none',
			playPause: false,
			slicedCols: 30,
			slicedRows: 20,
			hover: false,
			imagePath: 'img/photo/'
		});
	}
	if($('#slider').length > 0){
		$('#slider').camera({
			height: '110px',
			fx: 'simpleFade',
			pagination: false,
			thumbnails: false,
			navigation: false,
			navigationHover: false,
			loader: 'none',
			playPause: false,
			slicedCols: 30,
			slicedRows: 20,
			hover: false,
			imagePath: 'img/photo/'
		});
	}
	if($('#slider-image-intro').length > 0){
		$('#slider-image-intro').camera({
			height: '280px',
			fx: 'scrollRight',
			time: 1000,
			pagination: true,
			thumbnails: false,
			navigation: false,
			navigationHover: false,
			loader: 'none',
			playPause: false,
			slicedCols: 30,
			slicedRows: 20,
			hover: false,
			imagePath: 'img/photo/'
		});
	}

    /**************************************************
     *
     *    OWL CAROUSEL
     *
     ***************************************************/
    /* var owl_gallery = $("#owl-carousel-gallery");
    owl_gallery.owlCarousel({
        itemsCustom: [
            [0, 1],
            [450, 2],
            [600, 2],
            [700, 3],
            [900, 3],
            [1200, 4],
            [1400, 4],
            [1600, 4]
        ],
        navigation: true,
        pagination: false,
        autoPlay: true,
        rewindNav: false,
        stopOnHover: true
    });

    var owl_member = $("#owl-carousel-member");
    owl_member.owlCarousel({
        itemsCustom: [
            [0, 1],
            [450, 2],
            [600, 3],
            [700, 3],
            [900, 3],
            [1200, 4],
            [1400, 4],
            [1600, 4]
        ],
        navigation: true,
        pagination: false,
        autoPlay: true,
        stopOnHover: true
    });

    var owl_customer = $("#owl-carousel-customer");
    owl_customer.owlCarousel({
        itemsCustom: [
            [0, 2],
            [450, 3],
            [600, 4],
            [700, 5],
            [900, 5],
            [1200, 6],
            [1400, 6],
            [1600, 6]
        ],
        navigation: true,
        pagination: false,
        autoPlay: true,
        stopOnHover: true
    }); */


    /**************************************************
     *
     *    BACK TO TOP
     *
     ***************************************************/
    $('#back-to-top').click(function() {
        $('html, body').animate({
            scrollTop: 0
        }, '600');
        return false;
    });


    /**************************************************
     *
     *    SELECT OR DIE
     *
     ***************************************************/
    //$(".select").selectOrDie();


    /**************************************************
     *
     *    TABS
     *
     ***************************************************/
    $('ul.tabs').each(function() {
        // For each set of tabs, we want to keep track of
        // which tab is active and it's associated content
        var $active, $content, $links = $(this).find('a');

        // If the location.hash matches one of the links, use that as the active tab.
        // If no match is found, use the first link as the initial active tab.
        $active = $($links.filter('[href="' + location.hash + '"]')[0] || $links[0]);
        $active.addClass('active');

        $content = $($active[0].hash);

        // Hide the remaining content
        $links.not($active).each(function() {
            $(this.hash).hide();
        });

        // Bind the click event handler
        $(this).on('click', 'a', function(e) {
            // Make the old tab inactive.
            $active.removeClass('active');
            $content.hide();

            // Update the variables with the new link and content
            $active = $(this);
            $content = $(this.hash);

            // Make the tab active.
            $active.addClass('active');
            $content.show();

            // Prevent the anchor's default click action
            e.preventDefault();
        });
    });


    /**************************************************
     *
     *    LIST GRID VIEW SWITCH
     *
     ***************************************************/
    var elem = $('.show-product');
    $('#viewcontrols a').on('click', function(e) {
        if ($(this).hasClass('gridview')) {
            $(".grid").fadeIn(300);
            $(".list").fadeOut(300);
            $(this).addClass("active");
            $(this).siblings().removeClass("active");
        } else if ($(this).hasClass('listview')) {
            $(".list").fadeIn(300);
            $(".grid").fadeOut(300);
            $(this).addClass("active");
            $(this).siblings().removeClass("active");
        }
        return false;
    });


    /**************************************************
     *
     *    NUMBER INCREMENT BUTTONS
     *
     ***************************************************/
    $(".number-increment-button .button").on("click", function() {
        var $button = $(this);
        var oldValue = $button.parent().find("input").val();

        if ($button.attr("data-value") == "+") {
            var newVal = parseFloat(oldValue) + 1;
        } else {
            // Don't allow decrementing below zero
            if (oldValue > 0) {
                var newVal = parseFloat(oldValue) - 1;
            } else {
                newVal = 0;
            }
        }
        $button.parent().find("input").val(newVal);

        return false;
    });


    /**************************************************
     *
     *    LIST MENU SIDEBAR ACCORDION
     *
     ***************************************************/
    $('.box-list-product > ul > li > a').click(function() {
        if ($(this).next('ul').is(':hidden') === true) {
            $(".sub-category").slideUp(300);
            $(this).next('ul').slideDown(300);
        } else {
            $(this).next('ul').slideUp(300);
        }
        return false;
    });


    /**************************************************
     *
     *    MENU TOGGLE RESPONSIVE
     *
     ***************************************************/
    $("#btn-trigger-responsive").toggle(function() {
        $(".menu-toggle-responsive").slideDown(300);
        return false;
    }, function() {
        $(".menu-toggle-responsive").slideUp(300);
        return false;
    });

    $('.menu-toggle-responsive > li > a > i').click(function() {
        if ($(this).parent("a").next('ul').is(':hidden') === true) {
            $(".submenu").slideUp(300);
            $(this).parent("a").next('ul').slideDown(300);
        } else {
            $(this).parent("a").next('ul').slideUp(300);
        }
        return false;
    });

    /**************************************************
     *
     *    IMAGE ZOOM
     *
     ***************************************************/
    /* $("#image-zoom").elevateZoom({

        /* Easing */
       // easing: true,

        /* Mousewheel Zoom */
       // scrollZoom: true

        /* Zoom inner */
        // zoomType: "inner",
        // cursor: "crosshair"

        /* Lens zoom */
        // zoomType: "lens",
        // lensShape: "round",
        // lensSize: 200

        /* Fade in/Fade Out Settings */
        // zoomWindowFadeIn: 500,
        // zoomWindowFadeOut: 500,
        // lensFadeIn: 500,
        // lensFadeOut: 500

        /* Tints */
        // tint: true,
        // tintColour: '#9b5ec3',
        // tintOpacity: 0.5
    //});


    /**************************************************
     *
     *    SHOW/HIDE SHOPPING CART
     *
     ***************************************************/
    var $body = $('html,body'),
        popup_cart = $("#popup-shopping-cart");
    $("#open-shopping-cart").click(function(e) {
        if (popup_cart.is(":hidden")) {
            popup_cart.slideDown(300);
        } else if (popup_cart.is(":visible")) {
            popup_cart.slideUp(300);
        }
        e.stopPropagation();
        return false;
    });
    popup_cart.click(function(e) {
        e.stopPropagation();
    });
    $body.click(function(e) {
        popup_cart.slideUp(300);
    });


    /**************************************************
     *
     *    SELECT LANGUAGE
     *
     ***************************************************/
    $(".select-language a").click(function() {
        $(this).addClass("dislang");
        $(this).siblings("a").removeClass("dislang");
    });


    /**************************************************
     *
     *    SHOW/HIDE MENU MEMBER MANAGEMENT
     *
     ***************************************************/
    if (w_Window <= 800) {
        $(".member-menu .title-menu").toggle(function() {
            $(".list-menu").slideDown(300);
        }, function() {
            $(".list-menu").slideUp(300);
        });
    }


    /**************************************************
     *
     *    DATEPICKER
     *
     ***************************************************/
    /* $('.wd-date').datepicker({
        inline: true,
        showOtherMonths: true,
        dayNamesMin: ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'],
        dateFormat: 'd-m-yy',
        yearRange: '-100y:c+nn',
        maxDate: '-1d',
        showOn: 'both',
        buttonImageOnly: true,
        buttonImage: "../image/datepicker/datepicker.png",
        changeMonth: true,
        changeYear: true
    }); */



    /**************************************************
     *
     *    GOOGLE MAP
     *
     ***************************************************/
    // scrollwheel: false; Không cho phép zoom
    /* $("#map").gmap3({
        marker: {
            address: "124 Lê Lợi, Hải Châu, Đà Nẵng, Việt Nam",
            options: {
                icon: "../image/front/marker.png"
            }
        },
        overlay: {
            address: "124 Lê Lợi, Hải Châu, Đà Nẵng, Việt Nam",
            options: {
                content: '<div class="style-tooltip-map"><i class="icon-ib icon-scissors"></i>124 Lê Lợi, Đà Nẵng</div>',
                offset: {
                    y: -120,
                    x: 20
                }
            }
        },
        map: {
            options: {
                styles: [{
                    stylers: [{
                        "saturation": -100
                    }]
                }, ],
                zoom: 16
            }
        }
    }); */

});