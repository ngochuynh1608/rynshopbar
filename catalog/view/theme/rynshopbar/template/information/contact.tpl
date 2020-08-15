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
                  <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3834.933471212843!2d108.20485731410605!3d16.016978388913213!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31421b2b8843176b%3A0x7fd1b2ce4e02a26d!2sRyN+Bar+Equipment+%26+Coffee!5e0!3m2!1svi!2s!4v1540621085004" width="100%" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>
                  
                     <div class="title text-center">
                        <h2 class="text-coffee">Liên Hệ Với Chúng Tôi</h2>
                     </div>
                     <div class="row">
                        <div class="col-md-8 col-sm-8 col-xs-12 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms" class="f-contact">
                           <h5 class="text-coffee"><?php echo $store; ?></h5>
                           <form class="form" method="post" name="contact-form">
                              <div class="alert-container"></div>
                              <div class="row">
                                 <div class="col-md-6 col-sm-6 col-xs-12">
                                    <label>Họ Tên</label>
                                    <input name="name" type="text" required>
                                 </div>
                                 <div class="col-md-6 col-sm-6 col-xs-12">
                                    <label>Địa Chỉ</label>
                                    <input name="address" type="text" required>
                                 </div>
                                 <div class="col-md-6 col-sm-6 col-xs-12">
                                    <label>Email</label>
                                    <input name="email" type="email" required>
                                 </div>
                                 <div class="col-md-6 col-sm-6 col-xs-12">
                                    <label>Số điện thoại</label>
                                    <input name="phone" type="text" required>
                                 </div>
                                 <div class="col-md-6 col-sm-6 col-xs-12">
                                    <label>Tiêu đề *</label>
                                    <input name="subject" type="text" required>
                                 </div>
                                 <div class="col-md-12 col-sm-12 col-xs-12">
                                    <label>Lời nhắn *</label>
                                    <textarea name="message" required></textarea>
                                 </div>
                                 <div class="col-md-12 col-sm-12 col-xs-12">
                                    <input name="submit" value="Gởi Tin Nhắn" class="submit-btn send_message" type="submit">
                                 </div>
                              </div>
                           </form>
                        </div>
                        <div class="col-md-4 col-sm-4 col-xs-12 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
                           <address>
                              <span class="text-primary co-title">Thông tin liên hệ</span>
                              <p><?php echo $address; ?></p>
                              <p><a href="tel:<?php echo $telephone; ?>"></a> <?php echo $telephone; ?></p>
                              <p>
                               <a href="mailto:<?php echo $femail; ?>"><?php echo $femail; ?></a></p>
                           </address>
                          <h5 class="text-coffee">Opening Hours</h5>
                           <ul class="time-list">
                              <li><span class="week-name">Monday</span> <span>12-6 PM</span></li>
                              <li><span class="week-name">Tuesday</span> <span>12-6 PM</span></li>
                              <li><span class="week-name">Wednesday</span> <span>12-6 PM</span></li>
                              <li><span class="week-name">Thursday</span> <span>12-6 PM</span></li>
                              <li><span class="week-name">Friday</span> <span>12-6 PM</span></li>
                              <li><span class="week-name">Saturday</span> <span>12-6 PM</span></li>
                              <li><span class="week-name">Sunday</span> <span>Closed</span></li>
                           </ul> 
                        </div>
                     </div>
                
                  </div>
               </section>
               <!-- End Contact Part -->
            </div>
   </div>
</main>

<?php echo $footer; ?>