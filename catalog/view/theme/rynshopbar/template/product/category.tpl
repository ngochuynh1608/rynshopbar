<?php echo $header; ?>
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
                <div class="col-md-3 col-sm-4 hidden-xs">

                   <div class="blog-left-section">
                    
                    <?php echo $column_left; ?>

                   </div>
                </div>
                <div class="col-md-9 col-sm-8 col-xs-12">
                    <div class="msg"></div>
                   <div class="blog-right-section">
<!--                       <div class="shop-search wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
                         <div class="row">
                          
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <?php 
                              $i = 0;
                               foreach($products as $product){ 
                               
                                 } 
                              ?>
                              <h6>Có tất cả <?php echo $i; ?> sản phẩm</h6>
                              <?php $i = $i+1; ?>
                            </div>
                         </div>
                      </div> -->
                      <div class="row">
                        <ul itemscope="" itemtype="http://schema.org/ItemList" class="products-grid row">
            <?php foreach ($products as $product) {?>
                <li itemscope="" itemtype="http://schema.org/Product" itemprop="itemListElement" class="col-lg-3 col-md-3 col-sm-4 col-xs-6 item">
                    <div class="product-image">
                        <a itemprop="url" href="<?php echo $product['href']; ?>">
                            <img itemprop="image" class="lazy-load" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>">

                        </a>
                    </div>
                    <div class="product-info">
                        <div id="<?php echo $product['name']; ?>"> 
                            <div class="bv-cleanslate bv-cv2-cleanslate"> 
                                <div data-bv-v="ratingItem:22" class="bv-shared bv-core-container-60 bv-rating-top-statistic">
                                </div> 
                                </div>
                            </div>
                            
                            <h2 class="product-name">
                                <a href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>"><?php echo $product['name']; ?></a>

                            </h2>
                        <span>                                                                      
                             <div class="price-box">
                                 <span class="inner-price" itemprop="offers" itemscope="" itemtype="http://schema.org/Offer">
                                <span class="regular-price" itemprop="price" id="product-price-1693">
                                <span class="price"><?php echo $product['price']; ?> đ</span></span>                      
                                </span>

                            </div>
                        </span>
                        
                    </div>
                    <div class="product-extras">
                        <div class="buttons-set">
                            <button type="button" title="Favorites" class="link-wishlist rounded link" onclick="toWishlist('<?php echo $product['product_id']; ?>');"><span class="sr-only">Favorites</span><i class="icon-heart"></i></button>                                                                                                                      
                            <a href="<?php echo $product['href']; ?>" class="link-quickview link">Xem chi tiết</a></button>
                            <button type="button" title="Add to Cart" class="link-cart rounded link" onclick="addToCart('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');"><span class="sr-only">Mua Hàng</span><i class="fa fa-shopping-cart"></i></button>
                        </div>
                    </div>
                </li>
                
            <?php } ?>                                          
        </ul>
                      </div>
                      <div class="gallery-pagination">
                         <div class="gallery-pagination-inner">
                          <?php echo $pagination; ?>
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


<?php echo $footer; ?>
