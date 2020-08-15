<div class="hoayeuthich">
	<h5>Sản phẩm khuyến mãi</h5>
	<?php foreach($products as $product){?>
		<div class="hoa">
			<div class="img">
				<img src="<?php echo $product['thumb'];?>" />
			</div>
			<div class="chu">
				<a href="<?php echo $product['href'];?>"><?php echo $product['name'];?></a>
				<p class="percent">GIẢM <?php echo $product['percent'];?>%</p>
				<p class="price"><?php echo $product['special'];?></p>
			</div>
		</div>
	<?php }?>
</div>