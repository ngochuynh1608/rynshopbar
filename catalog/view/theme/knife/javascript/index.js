$(document).ready(function(){ 
         var partners = $(".fed-partners").html();
        if(partners){
    	   $(".fed-partners").imageScroller( {loading:'Wait please...'} ); 
        } 
        
        /*----slide show--*/
        $('#slider-front').camera({
        height: '380px',
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
        
        
        /*===product new==*/
        var owl_gallery = $(".product-with");
        owl_gallery.owlCarousel({
            itemsCustom: [
                [0, 1],
                [450, 2],
                [600, 2],
                [700, 3],
                [900, 4],
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
        
         
        
        
});