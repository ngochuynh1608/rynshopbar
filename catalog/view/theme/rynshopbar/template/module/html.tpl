<section class="default-section discover-menu parallax text-white" data-stellar-offset-parent="true" data-stellar-background-ratio="0.5" style="background-image: url('catalog/view/theme/rynshopbar/media/images/banner1.jpg');">
                  <div class="container">
                     <div class="title text-center">
                        <h2 class="text-primary"><?php echo $heading_title; ?></h2>
                        <h6 style="line-height: 1.5em;"><?php echo $html; ?></h6>
                     </div>
                     <div class="item-list">
                        <div class="row">
                        	<?php if($products){
                        	foreach($products as $porduct){ ?>
                           <div class="col-md-6 col-sm-6 col-xs-12 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
                              <div class="item-wrap dp-animation">
                                 <div class="item-left">
                                    <img src="<?php echo $porduct['thumb'];?>" alt="" class="animated">
                                 </div>
                                 <div class="item-right">
                                    <div class="item-right-top">
                                       <h5><?php echo $porduct['name'];?></h5>
                                       <span><?php echo $porduct['price'];?></span>
                                    </div>

                                    <p><?php echo $porduct['sort_description'];?></p>
                                 </div>
                              </div>
                           </div>
                      <?php }
                      } ?>

                        </div>
                     </div>
                  </div>
               </section>