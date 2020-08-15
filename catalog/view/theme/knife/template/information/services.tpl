<?php
//-----------------------------------------------------
// services Module for Opencart v1.5.6   					
// Modified by villagedefrance                          		
// contact@villagedefrance.net                         		
//-----------------------------------------------------
?>

<?php echo $header; ?>
<?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
	<div class="breadcrumb">
	<?php foreach ($breadcrumbs as $breadcrumb) { ?>
		<?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
	<?php } ?>
	</div>
	<h1><?php echo $heading_title; ?></h1>
	<?php if(isset($services_info)) { ?>
		<div class="content-services">
			<div class="services" <?php if($image) { echo 'style="min-height:' . $min_height . 'px;"'; } ?>>
				<?php if ($image) { ?>
					<div class="image">
					<a href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" class="colorbox" rel="colorbox"><img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" id="image" /></a>
					</div>
				<?php } ?>
				<h3><?php echo $heading_title; ?></h3>
				<?php echo $description; ?>
			</div>
			<div>
			<?php if($addthis) { ?>
			<!-- AddThis Button BEGIN -->
				<div class="addthis_toolbox addthis_default_style ">
				<a class="addthis_button_email"></a>
				<a class="addthis_button_print"></a>
				<a class="addthis_button_preferred_1"></a>
				<a class="addthis_button_preferred_2"></a>
				<a class="addthis_button_preferred_3"></a>
				<a class="addthis_button_preferred_4"></a>
				<a class="addthis_button_compact"></a>
				<a class="addthis_counter addthis_bubble_style"></a>
				</div>
				<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js"></script>
			<!-- AddThis Button END -->
			<?php } ?>
			</div>
		</div>
		<div class="buttons">
			<div class="right">
				<a onclick="location='<?php echo $services; ?>'" class="button"><span><?php echo $button_services; ?></span></a>
				<a href="<?php echo $continue; ?>" class="button"><span><?php echo $button_continue; ?></span></a>
			</div>
		</div>
	<?php } elseif (isset($services_data)) { ?>
		<?php foreach ($services_data as $services) { ?>
			<div class="panelcollapsed">
				<h2><?php echo $services['title']; ?></h2>
				<div class="panelcontent">
					<?php echo $services['description']; ?> .. <br />
					<a href="<?php echo $services['href']; ?>"> <?php echo $text_more; ?></a>
					</p>
					<a href="<?php echo $services['href']; ?>"><img src="catalog/view/theme/default/image/message-services.png" alt="" /></a> <b><?php echo $text_posted; ?></b><?php echo $services['posted']; ?>
				</div>
			</div>
		<?php } ?>
		<div class="buttons">
			<div class="right"><a href="<?php echo $continue; ?>" class="button"><span><?php echo $button_continue; ?></span></a></div>
		</div>
	<?php } ?>
	<?php echo $content_bottom; ?>
</div>

<script type="text/javascript"><!--
$(document).ready(function() {
	$('.colorbox').colorbox({
		overlayClose: true,
		opacity: 0.5,
		rel: "colorbox"
	});
});
//--></script>

<?php echo $footer; ?>