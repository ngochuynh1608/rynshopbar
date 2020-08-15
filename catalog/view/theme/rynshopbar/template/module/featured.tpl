<section class="default-section">
   <div class="container">
      <div class="title text-center">
         <h2 class="text-primary"><?php echo $heading_title; ?></h2>
      </div>
      <div class="product-wrapper">
         <div class="owl-carousel owl-theme" data-items="5" data-tablet="4" data-mobile="2" data-nav="false" data-dots="true" data-autoplay="true" data-speed="1800" data-autotime="5000">
            <?php foreach( $products as $product ){ ?>
            <div class="item">
               <div class="product-img">
                  <a onclick="addToCart('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');" href="#">
                  <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>">
                  <span class="icon-basket fontello"></span>
                  </a>
               </div>
               <div class="p-title">
               <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
               </div>
               <div class="price-box">
                     <span class="inner-price" itemprop="offers" itemscope="" itemtype="http://schema.org/Offer">
                    <span class="regular-price" itemprop="price" id="product-price-1693">
                      <span class="price"><?php 
                        if($product['price']!='Liên hệ'){
                        
                        echo $product['price'].'đ';
                      }else{
                        echo $product['price'];
                    } ?>
                      </span>
                    </span>
                </div>


         </div>
         <?php } ?>
      </div>
   </div>
</section>