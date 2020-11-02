
<div class="product_list">
	<div class="category">
		<h2><?php echo $heading_title; ?></h2>
	</div>
	<ul class="products">
		<?php foreach ($products as $product) { ?>
			<li>
				<a href="<?php echo $product['href']; ?>" ><img class="preview" alt="" src="<?php echo $product['thumb']; ?>"/>
				<h5><?php echo $product['name']; ?>
				</h5>
				</p></a>
				<p class="price"><?php echo $product['price']; ?></p>
				<div class="cart">
					<a href="javascript:void(0)" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="cart"><i class="fa fa-shopping-cart"></i> Đặt hàng</a>
				</div>
			</li>
		<?php }?>
	</ul>
</div>