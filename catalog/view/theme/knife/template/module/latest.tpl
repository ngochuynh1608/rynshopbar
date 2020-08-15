
<div class="product_list">
	<div class="category">
		<h2><?php echo $heading_title; ?></h2>
	</div>
	<ul class="products">
		<?php foreach ($products as $product) { ?>
			<li>
				<a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>">
				</a>
				<div class="text">
					<a href="<?php echo $product['href']; ?>" >
						<h5><?php echo $product['name']; ?></h5>
					</p></a>
					<?php if($product['special']) { ?>
						<p class="old-price"><?php echo $product['price'];?></p><br/>
						<p class="price"><?php echo $product['special'];?></p>
					<?php }else{ ?>
						<p class="price"><?php echo $product['price'];?></p>
					<?php }?>
				</div>
				<div class="cart">
					<a href="javascript:void(0);" onclick="addToCart('<?php echo $product['product_id']; ?>');"><i class="fa fa-shopping-cart"></i> Đặt hàng</a>
				</div>
				<?php if($product['special']) { ?>
					<div class="percent">GIẢM <?php echo $product['percent'];?>%</div>
				<?php }?>
			</li>
		<?php }?>
	</ul>
</div>