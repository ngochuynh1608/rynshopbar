(function($) {
    'use strict'
    CheckPositionMobile();
    jQuery('.tp-banner').show().revolution({
        dottedOverlay: "none",
        delay: 3500,
        startwidth: 1170,
        startheight: 700,
        hideThumbs: 200,
        thumbWidth: 100,
        thumbHeight: 50,
        thumbAmount: 5,
        navigationType: "bullet",
        navigationArrows: "hide",
        navigationStyle: "preview1",
        navigationInGrid: "off",
        touchenabled: "on",
        onHoverStop: "off",
        swipe_velocity: 0.7,
        swipe_min_touches: 1,
        swipe_max_touches: 1,
        drag_block_vertical: false,
        parallax: "mouse",
        parallaxBgFreeze: "on",
        parallaxLevels: [7, 4, 3, 2, 5, 4, 3, 2, 1, 0],
        keyboardNavigation: "off",
        navigationHAlign: "center",
        navigationVAlign: "bottom",
        navigationHOffset: 0,
        navigationVOffset: 20,
        soloArrowLeftHalign: "left",
        soloArrowLeftValign: "center",
        soloArrowLeftHOffset: 20,
        soloArrowLeftVOffset: 0,
        soloArrowRightHalign: "right",
        soloArrowRightValign: "center",
        soloArrowRightHOffset: 20,
        soloArrowRightVOffset: 0,
        shadow: 0,
        fullWidth: "off",
        fullScreen: "on",
        spinner: "spinner4",
        stopLoop: "off",
        stopAfterLoops: -1,
        stopAtSlide: -1,
        shuffle: "off",
        autoHeight: "off",
        forceFullWidth: "off",
        hideThumbsOnMobile: "off",
        hideNavDelayOnMobile: 1500,
        hideBulletsOnMobile: "off",
        hideArrowsOnMobile: "off",
        hideThumbsUnderResolution: 0,
        hideSliderAtLimit: 0,
        hideCaptionAtLimit: 0,
        hideAllCaptionAtLilmit: 0,
        startWithSlide: 0,
        fullScreenOffsetContainer: ".header-reduce"
    });
    $.stellar({
        horizontalScrolling: false,
        verticalScrolling: true,
        horizontalOffset: 0,
        verticalOffset: 0,
        responsive: true,
        scrollProperty: 'scroll',
        positionProperty: 'position',
        parallaxBackgrounds: true,
        parallaxElements: true,
        hideDistantElements: true,
        hideElement: function($elem) {
            $elem.hide();
        },
        showElement: function($elem) {
            $elem.show();
        }
    });
    if ($('.owl-carousel').length) {
        $('.owl-carousel').each(function() {
            var owl = $('.owl-carousel');
            $(this).owlCarousel({
                margin: 30,
                loop: true,
                autoplayTimeout: $(this).data('autotime'),
                smartSpeed: $(this).data('speed'),
                autoplay: $(this).data('autoplay'),
                items: $(this).data('carousel-items'),
                nav: $(this).data('nav'),
                dots: $(this).data('dots'),
                responsive: {
                    0: {
                        items: $(this).data('mobile'),
                        margin: 15
                    },
                    768: {
                        items: $(this).data('tablet')
                    },
                    992: {
                        items: $(this).data('items')
                    }
                }
            });
        });
    }
    $('.slider-for').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: false,
        fade: false,
        asNavFor: '.slider-nav'
    });
    $('.slider-nav').slick({
        slidesToShow: 4,
        slidesToScroll: 1,
        asNavFor: '.slider-for',
        dots: false,
        centerMode: false,
        focusOnSelect: true,
        responsive: [{
            breakpoint: 991,
            settings: {
                arrows: true,
                centerMode: false,
                slidesToShow: 3
            }
        }, {
            breakpoint: 480,
            settings: {
                arrows: true,
                centerMode: false,
                slidesToShow: 3
            }
        }]
    });
    var gallery = $('.gallery-box .gallery-popup').simpleLightbox();
    $('.magnific-popup').magnificPopup({
        type: 'image'
    });
    $('.magnific-youtube').magnificPopup({
        type: 'iframe'
    });
    setTimeout(function() {
        $('.galereya-grid').isotope({
            itemSelector: '.msrItem',
            layoutMode: 'packery',
            packery: {
                fitWidth: true
            }
        });
    }, 1000);

    function skillProcess() {
        $('[data-ride="skillProcess"]').each(function() {
            var myPos = $(this).offset().top;
            var myBottomPos = $(this).offset().top + $(this).height();
            var winTopPos = $(window).scrollTop();
            var winBottomPos = $(window).scrollTop() + $(window).height();
            if (myPos < winBottomPos && myPos > winTopPos || myBottomPos < winBottomPos && myBottomPos > winTopPos) {
                if (!$(this).hasClass('init')) {
                    $(this).addClass('init');
                    setTimeout(function() {
                        $('.progress-skill-circle').each(function() {
                            $(this).waterbubble({
                                txt: $(this).data('text'),
                                data: $(this).data('value'),
                                waterColor: $(this).data('watercolor'),
                                textColor: $(this).data('watertxtcolor'),
                            });
                        });
                    }, 800);
                }
            }
        });
    }
/*    $(function() {
        $('select.select-dropbox, input[type="radio"], input[type="checkbox"]').styler({
            selectSearch: true,
        });
    });
    $("#ex2").slider({});*/

    function CheckPositionMobile() {
        if (window.matchMedia('(max-width: 991px)').matches) {
            (function($) {
                $(window).on("load", function() {
                    $(".menu-nav-main").mCustomScrollbar({
                        theme: "minimal"
                    });
                });
            })(jQuery);
        }
    }
    $(window).resize(function() {
        CheckPositionMobile();
    });
    $(window).load(function() {
        skillProcess();
        new WOW().init();
    });
    $(window).scroll(function() {
        skillProcess();
    });
})(jQuery);