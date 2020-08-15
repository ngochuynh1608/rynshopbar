<?php $route = isset($this->request->get['information_id']) ? $this->request->get['information_id'] : '';?>
<?php if($route == 4) { ?>
<?php foreach ($banners as $banner) { ?>
	<img src="<?php echo $banner['image']?>" alt="img" class="img-responsive" width="555" height="369">
<?php } ?>
<?php } else{ ?>
<?php } ?>
