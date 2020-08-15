<div class="blog-left-search blog-common-wide wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
  <form id="search_mini_form" class="inline-form search-form" method="GET" action="">
      <div class="input-box">
          <input type="hidden" name="route" value="product/search" />
          <input type="text" name="search" placeholder="Tìm kiếm">
          <div id="search_autocomplete" class="search-autocomplete"></div>
          <button type="submit" id="btn-search-category" class="btn btn-default btn-lg"><i class="fa fa-search"></i></button>
      </div>
      
  </form>
   
   
</div>

<div class="list-group">
  <h5>Danh Mục Sản Phẩm</h5>
  <?php foreach ($categories as $category) {
  ?>

  <?php if ($category['category_id'] == $category_id ) { 

  ?>
  <a href="<?php echo $category['href']; ?>" class="list-group-item active"><?php echo $category['name']; ?></a>
  <?php if ($category['children']) { ?>
  <?php foreach ($category['children'] as $child) { ?>
  <?php if ($child['category_id'] == $child_id) { ?>
  <a href="<?php echo $child['href']; ?>" class="list-group-item active">&nbsp;&nbsp;&nbsp;- <?php echo $child['name']; ?></a>
  <?php } else { ?>
  <a href="<?php echo $child['href']; ?>" class="list-group-item">&nbsp;&nbsp;&nbsp;- <?php echo $child['name']; ?></a>
  <?php } ?>
  <?php } ?>
  <?php } ?>
  <?php } else { ?>
  <a href="<?php echo $category['href']; ?>" class="list-group-item"><?php echo $category['name']; ?></a>
  <?php } ?>
  <?php } ?>
</div>
<div class="f-face">
  <h5>Fanpage</h5>
  <div class="fb-page" data-href="https://www.facebook.com/RyN0105/" data-tabs="timeline" data-height="350" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"><blockquote cite="https://www.facebook.com/RyN0105/" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/RyN0105/">RyN Bar Equipment Shop</a></blockquote></div>
</div>
