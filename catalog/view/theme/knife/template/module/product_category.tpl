<div class="product_list">
	<div class="category">
		<h2><?php echo $title; ?></h2>
	</div>
	<ul class="products">
	<?php foreach ($products as $product) { ?>
		<li>
			<a href="<?php echo $product['href']; ?>" ><img class="preview" alt="<?php echo $product['popup']; ?>" src="<?php echo $product['thumb']; ?>"/>
			<h5><?php echo $product['name']; ?>
			</h5>
			<p><?php echo $product['description']; ?>
			</p></a>
			<p class="price"><?php echo $product['price']; ?></p>
			<a href="javascript:void(0)" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="cart"><i class="fa fa-shopping-cart"></i> Đặt hàng</a>
		</li>
	<?php } ?>
	</ul>
</div>
