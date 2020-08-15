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
      <!-- Start Shop Cart -->   
      <div class="msg">
         <?php if ($attention) { ?>
         <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $attention; ?>
            <button type="button" class="close" data-dismiss="alert">&times;</button>
         </div>
         <?php } ?>
         <?php if ($success) { ?>
         <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
            <button type="button" class="close" data-dismiss="alert">&times;</button>
         </div>
         <?php } ?>
         <?php if ($error_warning) { ?>
         <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
            <button type="button" class="close" data-dismiss="alert">&times;</button>
         </div>
         <?php } ?>
      </div>
      <section class="default-section shop-cart bg-grey">
         <div class="container">
          <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
            <div class="shop-cart-list wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
               <table class="shop-cart-table">
                  <thead>
                     <tr>
                        <th style="text-align: center;"><?php echo $column_name; ?></th>
                        <th style="text-align: center;"><?php echo $column_price; ?></th>
                        <th style="text-align: center;"><?php echo $column_quantity; ?></th>
                        <th style="text-align: center;"><?php echo $column_total; ?></th>
                     </tr>
                  </thead>
                  <tbody>
                     <?php foreach($products as $product){ ?>
                     <tr>
                        <td>
                           <div class="product-cart">
                              <img src="<?php echo $product['thumb']; ?>" alt="">
                           </div>
                           <div class="product-cart-title">
                              <a href="<?php echo $product['href']; ?>"><span><?php echo $product['name']; ?></span>
                              </a>
                           </div>
                           <?php if (!$product['stock']) { ?>
                           <span class="text-danger">***</span>
                           <?php } ?>
                           <?php if ($product['option']) { ?>
                           <?php foreach ($product['option'] as $option) { ?>
                           <br />
                           <small><?php echo $option['name']; ?>: <?php echo $option['value']; ?></small>
                           <?php } ?>
                           <?php } ?>
                           <?php if ($product['reward']) { ?>
                           <br />
                           <small><?php echo $product['reward']; ?></small>
                           <?php } ?>
                           <?php if ($product['recurring']) { ?>
                           <br />
                           <span class="label label-info"><?php echo $text_recurring_item; ?></span> <small><?php echo $product['recurring']; ?></small>
                           <?php } ?>
                        </td>
                        <td style="text-align: center;">
                           <strong><?php echo $product['price']; ?></strong>
                        </td>
                        <td style="text-align: center;">
                           <div class="form-group" style="max-width: 200px;">
                              <input type="text" name="quantity[<?php echo $product['key']; ?>]" value="<?php echo $product['quantity']; ?>" size="1" class="form-control" />
                           </div>
                        </td>
                        <td style="text-align: center;">
                           <?php echo $product['total']; ?>
                        </td>
                        <td>
                           <button type="button" title="<?php echo $button_remove; ?>" class="btn-cartview btn-remove" onclick="removeCart('<?php echo $product['key']; ?>');"></button>
                        </td>
                     </tr>
                     <?php } ?>
                     <tr>
                        <td>
                           <a href="<?php echo $continue; ?>" class="btn btn-cont"><?php echo $button_shopping; ?></a>
                        </td>
                        <td>
                           <div class="buttons">
                              <span class="input-group-btn" >
                              <button class="btn-updated" type="submit" title="<?php echo $button_update; ?>"  value="<?php echo $button_update; ?>"><?php echo $button_update; ?>
                              </button>
                              </span>
                           </div>
                        </td>
                     </tr>
                     <?php foreach ($vouchers as $vouchers) { ?>
                     <tr>
                        <td></td>
                        <td class="text-left"><?php echo $vouchers['description']; ?></td>
                        <td class="text-left"></td>
                        <td class="text-left">
                           <div class="input-group btn-block" style="max-width: 200px;">
                              <input type="text" name="" value="1" size="1" disabled="disabled" class="form-control" />
                              <span class="input-group-btn"><button type="button" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger" onclick="voucher.remove('<?php echo $vouchers['key']; ?>');"><i class="fa fa-times-circle"></i></button></span>
                           </div>
                        </td>
                        <td class="text-right"><?php echo $vouchers['amount']; ?></td>
                        <td class="text-right"><?php echo $vouchers['amount']; ?></td>
                     </tr>
                     <?php } ?>
                  </tbody>
               </table>
            </div>
            <div class="cart-total wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="900ms">
               <div class="cart-total-title">
                  <h5>Đơn Hàng</h5>
               </div>
               <?php foreach($totals as $total){ ?>
               <div class="grand-total">
                  <h5><?php echo $total['title']; ?><span><?php echo $total['text']; ?> VNĐ</span></h5>
               </div>
               <?php } ?>
               <div class="proceed-check">
                  <a href="<?php echo $checkout; ?>" class="btn-primary-gold btn-medium"><?php echo $button_checkout; ?></a>
               </div>

            </div>
          </form>
         </div>
   </div>
   </section>
   <!-- End Shop Cart -->
   </div>
</main>
<?php echo $footer; ?>