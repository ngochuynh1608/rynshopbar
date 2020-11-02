<?php
	if(isset($this->request->get['route'])){
		$controller = $this->request->get['route'];
		$controller = explode('/',$controller);
		$controller = $controller[0];
	}else{
		$controller = 'common';
		
	}
?>
<ul class="bxslider">
	<?php foreach($banners as $banner){?>
		<li>
        <img src="<?php echo $banner['image'];?>"  />
        <p><?php echo $banner['title']; ?></p>
    </li>
	<?php }?>
</ul>
<ul class="manufacturer">
<h6>Đối tác</h6>
<?php if(!empty($manufacturers)){ ?>
  <?php foreach($manufacturers as $manufacturer){?>
      <li>
          <a href="#"><img src="<?php echo $manufacturer['image'];?>"  /></a>
      </li>
  <?php }?>
<?php }?>
</ul>
<style>
    .bxslider p{
        color: #fff;
        position: absolute;
        top: 60px;
        left: 50px;
        font-size: 20px;
        font-weight: bold;
          text-shadow: 0 0 3px #e32122;
          -moz-text-shadow: 0 0 3px #e32122;
          -webkit-text-shadow: 0 0 3px #e32122;
    }
</style>