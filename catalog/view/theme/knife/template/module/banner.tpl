<?php
	if(isset($this->request->get['route'])){
		$controller = $this->request->get['route'];
		$controller = explode('/',$controller);
		$controller = $controller[0];
	}else{
		$controller = 'common';
		
	}
?>
<?php foreach ($banners as $banner) { ?>
<div class="hotline">
	<a href="<?php echo $banner['link']?>"><img style="width: 100%;" src="<?php echo $banner['image']?>"/></a>
</div>
<?php }?>



