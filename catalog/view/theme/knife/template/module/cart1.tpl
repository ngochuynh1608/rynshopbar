
	<a href="javascript:void(0);" class="open-shopping-cart" id="open-shopping-cart">
		<i class="fa fa-shopping-cart"></i>
		<span class="text">
			<span id="cart-total"><?php echo $text_items; ?></span>
		</span>
		<i class="fa fa-angle-down"></i>
	</a>
	<div class="popup-shopping-cart" id="popup-shopping-cart">
		<?php if ($products || $vouchers) { ?>
		<div class="shopping-cart-list-product">
			<table>
			<?php foreach ($products as $product) { ?>
				<tbody>
					<tr>
						<td class="product-image"><?php if ($product['thumb']) { ?><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" width="102" height="112"><?php } ?></td>
						<td class="product-name"><?php echo $product['name']; ?></td>
						<td class="product-qty">x<?php echo $product['quantity']; ?></td>
						<td class="product-total-price"><?php echo $product['total']; ?></td>
						<td class="product-remove"><a onclick="(getURLVar('route') == 'checkout/cart' || getURLVar('route') == 'checkout/checkout') ? location = 'index.php?route=checkout/cart&remove=<?php echo $product['key']; ?>' : $('.popup-shopping-cart').load('index.php?route=module/cart&remove=<?php echo $product['key']; ?>' + ' .popup-shopping-cart > *');"><i class="icon-fl icon-remove" style="cursor: pointer;"></i></a></td>
					</tr>
				</tbody>
			<?php } ?>
			</table>
		</div>
		
		<div class="shopping-cart-total">
			<p class="sub-total"><?php echo $totals[0]['title'].": "; ?><?php echo $totals[1]['text']; ?></p>
			<p class="total"><?php echo $totals[1]['title'].": "; ?><?php echo $totals[1]['text']; ?></p>
			<div class="wrap-btn">
				<a href="<?php echo $cart; ?>" class="btn"><?php echo $text_cart; ?></a>
				<a href="<?php echo $checkout; ?>" class="btn"><?php echo $text_checkout; ?></a>
			</div>
		</div>
		<?php } else { ?>
		<p class="empty"><?php echo $text_empty; ?></p>
		<?php } ?>
	</div>