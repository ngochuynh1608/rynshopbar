
<section class="default-section pad-top-remove">
  <div class="container">
     <div class="title text-center">
        <h2 class="text-primary">Khoảnh Khắc RyN Shop Bar</h2>
     </div>
  </div>
  <div class="gallery-slider">
     <div class="owl-carousel owl-theme" data-items="5" data-tablet="4" data-mobile="1" data-nav="true" data-dots="false" data-autoplay="true" data-speed="2000" data-autotime="3000">
     	<?php if($banners) {
     		foreach($banners as $banner){
     	?>
        <div class="item dp-animation">
           <a href="<?php echo $banner['image']; ?>" class="magnific-popup">
              <img src="<?php echo $banner['image']; ?>" alt="" class="animated">
              <div class="gallery-overlay">
                 <div class="gallery-overlay-inner">
                    <i class="fa fa-instagram" aria-hidden="true"></i>
                 </div>
              </div>
           </a>
        </div>
        <?php } 
        }
        ?>

     </div>
  </div>
</section>



