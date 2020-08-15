<?php
//-----------------------------------------------------
// services Module for Opencart v1.5.6   					
// Modified by villagedefrance                          		
// contact@villagedefrance.net                         		
//-----------------------------------------------------
?>

<?php if ($services) { ?>
<?php if($box) { ?>
	<div class="box">
		<div class="box-heading">
			<?php if($icon) { ?>
				<div style="float: left; margin-right: 8px;"><img src="catalog/view/theme/default/image/message.png" alt="" /></div>
			<?php } ?>
			<?php if($customtitle) { ?>
				<?php echo $customtitle; ?>
			<?php } ?>
		</div>
		<div class="box-content">
		<?php foreach ($services as $services_story) { ?>
			<div class="box-services">
				<?php if ($show_headline) { ?>
					<h4><?php echo $services_story['title']; ?></h4>
				<?php } ?>
				<?php echo $services_story['description']; ?> .. <br />
				<a href="<?php echo $services_story['href']; ?>"> <?php echo $text_more; ?></a>
				</p>
				<a href="<?php echo $services_story['href']; ?>"><img src="catalog/view/theme/default/image/message-services.png" alt="" /></a> 
				<span><b><?php echo $text_posted; ?></b> <?php echo $services_story['posted']; ?></span>
			</div>
		<?php } ?>
		<?php if($showbutton) { ?>
			<div style="text-align:right;">
				<a href="<?php echo $serviceslist; ?>" class="button"><span><?php echo $buttonlist; ?></span></a>
			</div>
		<?php } ?>
		</div>
	</div>
<?php } else { ?>
	<div style="margin-bottom:10px;">
		<?php foreach ($services as $services_story) { ?>
			<div class="box-services">
				<?php if ($show_headline) { ?>
					<h4><?php echo $services_story['title']; ?></h4>
				<?php } ?>
				<?php echo $services_story['description']; ?> .. <br />
				<a href="<?php echo $services_story['href']; ?>"> <?php echo $text_more; ?></a>
				</p>
				<a href="<?php echo $services_story['href']; ?>"><img src="catalog/view/theme/default/image/message-services.png" alt="" /></a> 
				<span><b><?php echo $text_posted; ?></b> <?php echo $services_story['posted']; ?></span>
			</div>
		<?php } ?>
		<?php if($showbutton) { ?>
			<div style="text-align:right;">
				<a href="<?php echo $serviceslist; ?>" class="button"><span><?php echo $buttonlist; ?></span></a>
			</div>
		<?php } ?>
	</div>
<?php } ?>
<?php } ?>