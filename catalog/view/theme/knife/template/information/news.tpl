<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="row">
    <div id="content" class="col-md-12">
      <h1><?php echo $heading_title; ?></h1>
	    <p><?php echo $description; ?></p>
    </div>
    </div>
</div>
<?php echo $footer; ?> 