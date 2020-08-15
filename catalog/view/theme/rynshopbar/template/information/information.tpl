<?php echo $header; ?>
<main class="container">
    <div class="row">
        <div class="main-part">
            <section class="breadcrumb-nav">
                     
                        <div class="breadcrumb-nav-inner">
                           <ul>
                              <?php foreach($breadcrumbs as $breadcrumb) {?>
                              <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?> <i class="fa fa-angle-double-right"></i></a></li>
                              <?php } ?>
                           </ul>
                           <label class="now"><?php echo $heading_title; ?></label>
                        </div>
              
            </section>
               <!-- Start Contact Part -->
           <section class="default-section contact-part pad-top-remove">
              <div class="col-lg-3 col-md-3 col-sm-3 hidden-xs">
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
              <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                    <div class="std">
                        <div class="row cms-page-content">
                            <div class="col-sm-12">
                                <h1 id="top"><?php echo $heading_title; ?></h1>
                                <div class="section-content">
                                    <?php echo $description; ?>
                                </div>
                            </div>
                        </div>
                    </div>                  
              </div>
           </section>
               <!-- End Contact Part -->
        </div>
    </div>
</main>

<?php echo $footer; ?>