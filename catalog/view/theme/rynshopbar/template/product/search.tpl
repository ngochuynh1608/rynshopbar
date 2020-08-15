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
      <section class="default-section shop-page">
        <div class="container">
          <?php echo $column_left; ?>
          <?php if ($column_left && $column_right) { ?>
          <?php $class = 'col-sm-6'; ?>
          <?php } elseif ($column_left || $column_right) { ?>
          <?php $class = 'col-sm-9'; ?>
          <?php } else { ?>
          <?php $class = 'col-sm-12'; ?>
          <?php } ?>
          <div id="content" class=" <?php echo $class; ?>">
             <?php echo $content_top; ?>
             <h5 class="control-label" for="input-search"><?php echo $entry_search; ?></h5>
             <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                   <form method="get" action="index.php">
                      <input type="hidden" name="route" value="product/search" />
                      <div class="col-md-6 col-sm-6">
                         <select name="category_id" class="form-control">
                            <option value="0"><?php echo $text_category; ?></option>
                            <?php foreach ($categories as $category_1) { ?>
                            <?php if ($category_1['category_id'] == $category_id) { ?>
                            <option value="<?php echo $category_1['category_id']; ?>" selected="selected"><?php echo $category_1['name']; ?></option>
                            <?php } else { ?>
                            <option value="<?php echo $category_1['category_id']; ?>"><?php echo $category_1['name']; ?></option>
                            <?php } ?>
                            <?php foreach ($category_1['children'] as $category_2) { ?>
                            <?php if ($category_2['category_id'] == $category_id) { ?>
                            <option value="<?php echo $category_2['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
                            <?php } else { ?>
                            <option value="<?php echo $category_2['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
                            <?php } ?>
                            <?php foreach ($category_2['children'] as $category_3) { ?>
                            <?php if ($category_3['category_id'] == $category_id) { ?>
                            <option value="<?php echo $category_3['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
                            <?php } else { ?>
                            <option value="<?php echo $category_3['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
                            <?php } ?>
                            <?php } ?>
                            <?php } ?>
                            <?php } ?>
                         </select>
                      </div>
                      <div class="col-md-3 col-sm-6">
                         <input autocomplete="off" type="text" name="search" value="<?php echo $search; ?>" placeholder="<?php echo $text_keyword; ?>" id="input-search" class="form-control" style="width:100%;" />
                      </div>
                      <div class="col-sm-0" style="display:none">
                         <label class="checkbox-inline">
                         <?php if ($sub_category) { ?>
                         <input type="checkbox" name="sub_category" value="1" checked="checked" />
                         <?php } else { ?>
                         <input type="checkbox" name="sub_category" value="1" />
                         <?php } ?>
                         <?php echo $text_sub_category; ?></label>
                      </div>
                      <div class="col-md-0"  style="display:none">
                         <label class="checkbox-inline">
                         <?php if ($description) { ?>
                         <input type="checkbox" name="description" value="1" id="description" checked="checked" />
                         <?php } else { ?>
                         <input type="checkbox" name="description" value="1" id="description" />
                         <?php } ?>
                         <?php echo $entry_description; ?></label>
                      </div>
                      <div class="col-md-3 col-sm-12">
                         <input style="height: 49px;" type="submit" value="<?php echo $button_search; ?>" id="button-search" class="btn btn-checkout pd-search" />
                      </div>
                   </form>
                </div>
             </div>
             <h4 style="text-align: center;
                color: Red;
                margin: 30px 0px;
                font-size: 18px;
                text-transform: uppercase;"><?php echo $text_search; ?></h4>
             <?php if ($products) { ?>
             <div class="row">
                <div class="col-md-6 col-xs-12">
                   <div class="col-sm-0 hidden-xs"  style="display:none">
                      <div class="btn-group">
                         <button type="button" id="list-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_list; ?>"><i class="fa fa-th-list"></i></button>
                         <button type="button" id="grid-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_grid; ?>"><i class="fa fa-th"></i></button>
                      </div>
                   </div>
                   <div class="col-sm-4">
                      <label class="control-label" for="input-sort"><?php echo $text_sort; ?></label>
                   </div>
                   <div class="col-sm-8">
                      <select id="input-sort" class="form-control col-sm-3" onchange="location = this.value;">
                         <?php foreach ($sorts as $sorts) { ?>
                         <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
                         <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
                         <?php } else { ?>
                         <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
                         <?php } ?>
                         <?php } ?>
                      </select>
                   </div>
                   <div class="col-sm-0" style="display:none">
                      <label class="control-label" for="input-limit"><?php echo $text_limit; ?></label>
                   </div>
                   <div class="col-sm-0" style="display:none">
                      <select id="input-limit" class="form-control" onchange="location = this.value;">
                         <?php foreach ($limits as $limits) { ?>
                         <?php if ($limits['value'] == $limit) { ?>
                         <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
                         <?php } else { ?>
                         <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
                         <?php } ?>
                         <?php } ?>
                      </select>
                   </div>
                </div>
                <!-- @end row -->
             </div>
             <br />
             <div class="row">
                <div class="col-md-12">
                   <div class=" products-category">
                      <?php $i=0; ?>
                      <?php foreach ($products as $product) { $i++;?>
                      <div class="product-layout products-grid col-lg-3 col-md-4 col-sm-6 <?php if ($i%4==0) echo 'sp4'; ?>" >
                         <li>
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
                               <!-- <div class="third-line"><?php echo $product['sort_description']; ?></div> -->
                               <span>
                                  <div class="price-box">
                                     <span class="inner-price" itemprop="offers" itemscope="" itemtype="http://schema.org/Offer">
                                     <span class="regular-price" itemprop="price" id="product-price-1693">
                                     <span class="price"><?php echo $product['price']; ?> VNĐ</span></span>           
                                     </span>
                                  </div>
                               </span>
                            </div>
                            <div class="product-extras">
                               <div class="buttons-set">
                                  <button type="button" title="Favorites" class="link-wishlist rounded link" onclick="toWishlist('<?php echo $product['product_id']; ?>');"><span class="sr-only">Favorites</span><i class="icon-heart"></i></button>                                                                                                                      <button onclick="Gorilla.QuickView.getHtml('https://www.seasalt.com/quickview/ajax/view/product_id/1693/')" class="link-quickview link">Quick View</button>
                                  <button type="button" title="Add to Cart" class="link-cart rounded link" onclick="addToCart('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');"><span class="sr-only">Add to Cart</span><i class="icon-shopping-cart"></i></button>
                               </div>
                            </div>
                         </li>
                      </div>
                      <?php } ?>
                   </div>
                </div>
             </div>
             <div class="row">
                <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
                <div class="col-sm-12 text-right"><?php echo $results; ?></div>
             </div>
             <?php } else { ?>
             <p><?php echo $text_empty; ?></p>
             <?php } ?>
             <?php echo $content_bottom; ?>
          </div>
          <?php echo $column_right; ?>
       </div>
      </section>
   </div>
</main>

<script type="text/javascript">
   $('#button-search').bind('click', function() {
    url = 'index.php?route=product/search';
   
    var search = $('#content input[name=\'search\']').prop('value');
   
    if (search) {
      url += '&search=' + encodeURIComponent(search);
    }
   
    var category_id = $('#content select[name=\'category_id\']').prop('value');
   
    if (category_id > 0) {
      url += '&category_id=' + encodeURIComponent(category_id);
    }
   
    var sub_category = $('#content input[name=\'sub_category\']:checked').prop('value');
   
    if (sub_category) {
      url += '&sub_category=true';
    }
   
    var filter_description = $('#content input[name=\'description\']:checked').prop('value');
   
    if (filter_description) {
      url += '&description=true';
    }
   
    location = url;
   });
   
   $('#content input[name=\'search\']').bind('keydown', function(e) {
    if (e.keyCode == 13) {
      $('#button-search').trigger('click');
    }
   });
   
   $('select[name=\'category_id\']').on('change', function() {
    if (this.value == '0') {
      $('input[name=\'sub_category\']').prop('disabled', true);
    } else {
      $('input[name=\'sub_category\']').prop('disabled', false);
    }
   });
   
   $('select[name=\'category_id\']').trigger('change');
</script>
<?php echo $footer; ?>