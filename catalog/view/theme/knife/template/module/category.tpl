<div class="danhmuc hidden-xs hidden-sm">
	<h5><a href="<?php echo $all_products ;?>">Tất cả sản phẩm</a></h5>
	<?php if(!empty($categories)){ ?>
	<ul>
		<?php $i=1; foreach($categories as $cate){ ?>
		<li>
			<a href="<?php echo $cate['href']; ?>"><?php echo $cate['name']; ?> </a><i class="fa fa-caret-right plus" id="<?php echo $i;?>" ></i>
			<?php if(isset($cate['children'])){ ?>
			<ul class="submenu <?php echo $i;?>">
				<?php foreach($cate['children'] as $cate_child){ ?>
				<li><a href="<?php echo $cate_child['href']; ?>"><?php echo $cate_child['name']; ?></a></li>
				<?php }?>			
			</ul>
			<?php }?>
		</li>
		<?php $i++; }?>
	</ul>
	<?php }?>
</div>
