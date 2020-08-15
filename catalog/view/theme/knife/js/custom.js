$(document).ready(function(){
    $('.bxslider').bxSlider({
        auto: true,
        pager:false,
        captions: true,
        adaptiveHeight: true,
    });
    $('.bxslider2').bxSlider({
        minSlides: 2,
        maxSlides: 4,
        slideWidth: 164,
        slideMargin: 10,
        auto:true,
        controls:false,
        pager:false,
        moveSlides:1,
    });
    
    $('.plus').click(function(){
        var id=$(this).attr("id");
        $('.'+id).slideToggle();
    });
    $('.quan').change(function(){
       var gia=$(this).val();
       $('.gia_ship').text(gia); 
    });
    $('.products').bxSlider({
        slideWidth: 205,
        minSlides: 2,
        maxSlides: 4,
        slideMargin: 21,
        pager: false,
        controls: true
    });
    $('.product_image').bxSlider({
      auto:true,
      pager:false,
      controls:false,
      mode:'fade',
    });
    $('.fancybox').fancybox();
});