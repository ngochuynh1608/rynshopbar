<section class="default-section">
  <div class="container">
     <div class="title text-center">
        <h2 class="text-primary">Sản Phẩm Mới Nhất</h2>
     </div>
     <div class="product-wrapper">
        <div class="row">
          <?php foreach($products as $product){ ?>
          <div class="col-lg-2 col-md-2 col-sm-3 col-xs-6 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
              <div class="shop-main-list">
                 <div class="shop-product">
                    <img src="<?php echo $product['thumb']; ?>" alt="">
                    <div class="cart-overlay-wrap">
                       <div class="cart-overlay">
                          <a onclick="addToCart('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');"  href="#" class="shop-cart-btn">Mua Ngay</a>
                       </div>
                    </div>
                 </div>
                 <div class="p-title">
                 <a href="<?php echo $product['href']; ?>">
                    <?php echo $product['name']; ?>
                 </a>
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
                    </span>
                </div>
              </div>
           </div>
           <?php } ?>
        </div>
     </div>
  </div>
</section>
