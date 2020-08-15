<?php echo $header; ?>
<link class="rs-file" href="catalog/view/theme/rynshopbar/media/js/royalslider/assets/royalslider/royalslider.css" rel="stylesheet">
<link class="rs-file" href="catalog/view/theme/rynshopbar/media/js/royalslider/assets/royalslider/skins/default/rs-default.css" rel="stylesheet"> 
<main>
   <div class="main-part">
      <section class="breadcrumb-nav">
         <div class="container">
            <div class="breadcrumb-nav-inner">
               <ul>
                  <?php foreach($breadcrumbs as $breadcrumb) {?>
                  <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?> <i class="fa fa-angle-double-right"></i></a></li>
                  <?php } ?>
               </ul>
               <label class="now"><?php echo $heading_title; ?></label>
            </div>
         </div>
      </section>
      <!-- Start Blog List -->   
      <section class="default-section shop-page">
         <div class="container">
            <div class="row">
               <div class="col-md-3 col-sm-4 col-xs-12">
                  <div class="blog-left-section">
                     <?php echo $column_left; ?>
                     <div class="blog-left-deal blog-common-wide wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
                        <h5>Tin Tức</h5>
                        <div class="best-deal-blog">
                           <div class="best-deal-left">
                              <img src="catalog/view/theme/rynshopbar/media/images/img20.png" alt="">
                           </div>
                           <div class="best-deal-right">
                              <p>Lasal Cheese</p>
                              <p><strong>$ 15</strong></p>
                           </div>
                        </div>
                        <div class="best-deal-blog">
                           <div class="best-deal-left">
                              <img src="catalog/view/theme/rynshopbar/media/images/img21.png" alt="">
                           </div>
                           <div class="best-deal-right">
                              <p>Lasal Cheese</p>
                              <p><strong>$ 15</strong></p>
                           </div>
                        </div>
                        <div class="best-deal-blog">
                           <div class="best-deal-left">
                              <img src="catalog/view/theme/rynshopbar/media/images/img22.png" alt="">
                           </div>
                           <div class="best-deal-right">
                              <p>Lasal Cheese</p>
                              <p><strong>$ 15</strong></p>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="col-md-9 col-sm-8 col-xs-12">
                  <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                     <div class="msg"></div>
                     <div id="product-media-conf" class="col-md-6 product-media">
                        <div id="ribbon"></div>
                        <div id="gallery-1" class="royalSlider rsDefault">
                           <div class="rsSlide"><img class="rsImg" src="<?php echo $thumb; ?>"/><img class="rsTmb" src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>"/></div>
                           <?php if ($images) { ?>
                           <?php foreach ($images as $image) { ?>
                           <div class="rsSlide"><img class="rsImg" src="<?php echo $image['popup'];?>"/><img class="rsTmb" src="<?php echo $image['popup'];?>"/></div>
                           <?php } ?>
                           <?php } ?>
                        </div>
                        <!-- thumbnails-image -->
                        <div class="row ">
                           <div class="wrapper-img-additional">
                              <?php if($percent!=100){?>
                              <div class="sale-off " style="right:30px;">
                                 <div class="sale-percent">-<?php echo $percent; ?>%</div>
                              </div>
                              <?php } ?>
                           </div>
                        </div>
                        <!-- end wrapper-img-additional -->
                     </div>
                     <div class="col-md-6 product-main" id="product">
                        <header class="product-name">
                           <h1 id="product-name" itemprop="name">
                              <span id="product-name-short-name"><?php echo $heading_title; ?></span>                                        
                           </h1>
                        </header>
                        <div class="rating">
                           <hr />
                           <i class="tick fa fa-chevron-down"></i><?php echo $text_model; ?> <?php echo $model; ?><br /><br />
                           <i class="tick fa fa-chevron-down"></i><?php echo $text_stock; ?> <?php echo $stock; ?><br /><br />
                           <div class="price-info">
                              <div class="price-box">
                                 <span class="inner-price" itemprop="offers" itemscope="" itemtype="http://schema.org/Offer">                                                                                                                                                   
                                 <span class="regulars-price" itemprop="price">
                                 <span class="price pd-price">
                                 <?php if($special) { ?>
                                 <span class="price-new price-new1"><?php echo $price; ?> đ</span><br>
                                 <span class="price-old" style="color:#FDD922;"><?php echo $special; ?> đ</span> <span class="" style="color:#fff;">| &nbsp;Giảm <?php echo $precent; ?>&nbsp;%</span>
                                 <?php } else{ ?>
                                 <span class="price-new price-new1"><?php echo $price; ?> đ</span><br>
                                 <?php } ?>     
                                 </span>
                                 </span>
                                 </span>
  
                              </div>
                           </div>
                           <div class="row" style="margin: 10px 0px;">
                              <label for="qty" class="sr-only">Qty:</label>
                              <input type="text" pattern="\d*" name="quantity" id="input-quantity" maxlength="12" value="<?php echo $minimum; ?>" title="Qty" class="input-text qty">
                              <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
                              <div class="add-to-cart-wrapper">
                              <div class="add-to-box add-actions add-to-cart">     
                                 <input type="hidden" name="quantity" value="<?php echo $minimum; ?>" size="2" id="input-quantity" class="form-control" />
                                 <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
                                 <button type="button" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary btn-lg btn-block" onclick="addToCart('<?php echo $product_id; ?>', '<?php echo $minimum; ?>');"><i class="fa fa-shopping-cart"></i>
                                 <?php echo $button_cart; ?><br />
                                 </button>   
                              </div>
                           </div>
                           </div>
                           
                        </div>
                     </div>
                  </div>
                  <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                     <div class="description std">
                        <h2><?php echo $tab_description; ?></h2>
                        <div id="product-description" style="word-wrap: break-word;">
                           <?php echo $description; ?>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- End Blog List -->
   </div>
</main>
<style type="text/css">#gallery-1 {}</style>
<script id="addJS" type="text/javascript">
    jQuery(document).ready(function($){
      $('#gallery-1').royalSlider({
          fullscreen: {
          enabled: true,
          nativeFS: true,
      },                                  
      controlNavigation: 'thumbnails',
      autoScaleSlider: true,
      loop: false,
      autoScaleSliderHeight: 534,
      imageScaleMode: 'fit-if-smaller',
      imageAlignCenter: true,
      imageScalePadding: 0,
      navigateByClick: true,
      numImagesToPreload:2,
      arrowsNav:true,
      arrowsNavAutoHide: true,
      arrowsNavHideOnTouch: true,
      keyboardNavEnabled: true,
      fadeinLoadedSlide: true,
      globalCaption: false,
      globalCaptionInside: false,
      thumbs: {
              appendSpan: false,
              firstMargin: 0,
              spacing: 2,
              arrowsAutoHide: true
          }
      })
    });

</script>
<script type="text/javascript">
   $('select[name=\'recurring_id\'], input[name="quantity"]').change(function(){
    $.ajax({
        url: 'index.php?route=product/product/getRecurringDescription',
        type: 'post',
        data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
        dataType: 'json',
        beforeSend: function() {
            $('#recurring-description').html('');
        },
        success: function(json) {
            $('.alert, .text-danger').remove();
   
            if (json['success']) {
                $('#recurring-description').html(json['success']);
            }
        }
    });
   });
   
</script> 

<?php echo $footer; ?>