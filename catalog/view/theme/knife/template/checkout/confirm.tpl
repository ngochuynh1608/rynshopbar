<?php if (!isset($redirect)) { ?>
<table class="table table-center">
	<thead>
		<tr>
			<th><?php echo $column_name; ?></th>
			<th><?php echo $column_model; ?></th>
			<th><?php echo $column_quantity; ?></th>
			<th><?php echo $column_price; ?></th>
			<th><?php echo $column_total; ?></th>
		</tr>
	</thead>
	<tbody>
		<?php foreach ($products as $product) { ?>  
		<?php if($product['recurring']): ?>
		<tr>
            <td colspan="6" style="border:none;"><image src="catalog/view/theme/default/image/reorder.png" alt="" title="" style="float:left;" /><span style="float:left;line-height:18px; margin-left:10px;"> 
                <strong><?php echo $text_recurring_item ?></strong>
                <?php echo $product['profile_description'] ?>
            </td>
        </tr>
		<?php endif; ?>
		<tr>
			<tr>
				<td class="name"><a href="<?php echo $product['href']; ?>" class="link"><?php echo $product['name']; ?></a>
				  <?php foreach ($product['option'] as $option) { ?>
				  <br />
				  &nbsp;<small> - <?php echo $option['name']; ?>: <?php echo $option['value']; ?></small>
				  <?php } ?>
				  <?php if($product['recurring']): ?>
				  <br />
				  &nbsp;<small><?php echo $text_payment_profile ?>: <?php echo $product['profile_name'] ?></small>
				  <?php endif; ?>
				</td>
				<td class="model"><?php echo $product['model']; ?></td>
				<td class="quantity"><?php echo $product['quantity']; ?></td>
				<td class="price"><?php echo $product['price']; ?></td>
				<td class="total"><?php echo $product['total']; ?></td>
			</tr>
		</tr>
		<?php } ?>
		<?php foreach ($totals as $total) { ?>
		<tr class="padding-sm">
			<td colspan=3></td>
			<td><?php echo $total['title']; ?></td>
			<td><?php echo $total['text']; ?></td>
		</tr>
		<?php } ?>
		
	</tbody>
</table>
<div class="payment"><?php echo $payment; ?></div>
<div class="clearfix"></div>
<?php } else { ?>
<script type="text/javascript"><!--
location = '<?php echo $redirect; ?>';
//--></script> 
<?php } ?>