<section class="default-section">
                  <div class="container">
                     <div class="title text-center">
                        <h2 class="text-primary"><?php echo $heading_title; ?></h2>

                     </div>
                     <div class="feature-list">
                        <div class="row">
                          <?php if($banners){
                          foreach($banners as $banner){
                           ?>
                           <div class="col-md-3 col-sm-6 col-xs-12">
                              <img src="<?php echo $banner['image']; ?>" alt="">
                              <h5 class="text-coffee"><?php echo $banner['title']; ?></h5>
                              <p><?php echo $banner['desc']; ?></p>
                           </div>
                          <?php
                          }
                           } ?>
                        </div>
                     </div>
                  </div>
               </section>