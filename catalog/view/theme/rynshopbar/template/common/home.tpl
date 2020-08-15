<?php echo $header; ?>
<main>
            <div class="main-part">
               <div class="msg"></div>
               <!-- Slider Part -->
               <?php echo $content_top; ?>
               
               <!-- End Slider Part -->
               <!-- Default Section -->
               <section class="default-section text-white">
                  <div class="container">
                     <div class="row">

                        <div class="col-md-7 col-sm-7 col-xs-12 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
                           <div class="blog-list dp-animation">
                              <img src="<?php echo $data['s-thumb']; ?>" alt="" class="animated">

                              <div class="blog-over-info">
                                 <h3><?php echo $data['s-title']; ?></h3>
                                 <a href="<?php echo $data['s-view']; ?>" class="button-default button-default-white">Chi Tiết   </a>
                              </div>
                           </div>
                        </div>
     
                        
                        <div class="col-md-5 col-sm-5 col-xs-12 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="700ms">
                           <div class="blog-list right dp-animation">
                              <img src="<?php echo $data['b-thumb']; ?>" alt="" class="animated">
                              <div class="blog-over-info">
                                 <h3><?php echo $data['b-title']; ?></h3>
                                 <a href="<?php echo $data['st-view']; ?>" class="button-default button-default-white">Chi tiết</a>
                              </div>
                           </div>
                           <div class="blog-list right dp-animation">
                              <img src="<?php echo $data['st-thumb'] ?>" alt="" class="animated">
                              <div class="blog-over-info">
                                 <h3><?php echo $data['st-title']; ?></h3>
                                 <a href="<?php echo $data['st-view']; ?>" class="button-default button-default-white">Chi tiết</a>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </section>
               <!-- End Default Section -->

               <!-- Start Gallery With Sllider -->
               
               <!-- End Gallery With Sllider -->
               <?php echo $content_bottom; ?>
               <section class="default-section bg-grey">
                  <div class="container">
                     <div class="title text-center">
                        <h2 class="text-primary">Tin Tức Và Chia Sẻ</h2>
                     </div>
                     <div class="feature-blog">
                        <div class="owl-carousel owl-theme" data-items="3" data-tablet="2" data-mobile="1" data-nav="true" data-dots="false" data-autoplay="true" data-speed="2500" data-autotime="6000">
                            <?php foreach($all_news as $new){ ?>
                           <div class="item dp-animation">
                              <div class="feature-img">
                                 <img src="<?php echo $new['image']; ?>" alt="<?php echo $new['title']; ?>" class="animated">
                                 
                              </div>
                              <div class="feature-info">
                                 
                                 <h5><?php echo $new['title']; ?></h5>
                                 <p><?php echo $new['description'];?></p>
                                 <a href="<?php echo $new['view']; ?>">Chi Tiết <i class="icon-right-4"></i></a>
                              </div>
                              
                           </div>
                           <?php } ?>

                        </div>
                     </div>
                  </div>
               </section>
            </div>
         </main>              
    </div>
<?php echo $footer; ?>


