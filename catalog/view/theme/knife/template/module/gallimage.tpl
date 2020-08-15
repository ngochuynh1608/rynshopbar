<?php
	if(isset($this->request->get['route'])){
		$controller = $this->request->get['route'];
		$controller = explode('/',$controller);
		$controller = $controller[0];
	}else{
		$controller = 'common';
		
	}
?>
<?php if($controller == 'common') { ?>
	<div class="col-md-9 box box-gallery-photo">
		<h2 class="title ttu"><span>Thư viện hình</span></h2>
		<div id="owl-carousel-gallery" class="owl-carousel">
		<?php $j=-2; $y=-1;  for($i=0;$i<round(count($gallimages)/2);$i++): $j = $j+2; $y=$y+2; if($j>count($gallimages)-1) $gallimages[$j]=array(); if($y>count($gallimages)-1) $gallimages[$y]=array();?>
			
			<div>
				<?php if(!empty($gallimages[$j])){?>
				<a href="<?php echo $gallimages[$j]['popup']; ?>" title="<?php echo $gallimages[$j]['title']; ?>" data-gallery="#blueimp-gallery-owl-carousel-gallery">
					<img src="<?php echo $gallimages[$i]['image']; ?>" alt="img" width="280" height="228">
				</a>
				<?php }else{  } ?>
				<?php if(!empty($gallimages[$y])){?>
				<a href="<?php echo $gallimages[$y]['popup']; ?>" title="<?php echo $gallimages[$y]['title']; ?>" data-gallery="#blueimp-gallery-owl-carousel-gallery">
					<img src="<?php echo $gallimages[$y]['image']; ?>" alt="img" width="280" height="228">
				</a>
				<?php }else{  } ?>
			</div>
		<?php endfor;?>
		</div>
	</div>
<?php } else { ?>
	<ul class="box box-galley-detail box-4-layout" id="popup-gallery">
		<?php foreach ($gallimages as $gallimage) { ?>
		<li>
			<a href="<?php echo $gallimage['popup']; ?>" title="<?php echo $gallimage['title']; ?>" data-gallery="#blueimp-gallery-popup-gallery">
				<img src="<?php echo $gallimage['image']; ?>" alt="img" width="300" height="242" alt="img">
				<div class="overlay">
					<div class="wrap-view-detail">
						<i class="icon-ib icon-view-detail"></i>
					</div>
				</div>
			</a>
		</li>
		<?php } ?>
	</ul>
	<div class="clearfix"></div>
	<div class="box pagination"><?php echo $pagination; ?></div>
<?php } ?>