<?php echo $header; ?>
<div class="cms-no-route">
<div id="content" class="content">
    <div class="container-fluid">
        <ol class="breadcrumbs" itemscope="" itemtype="http://schema.org/BreadcrumbList">
            <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                <li><a href="<?php echo $breadcrumb['href']; ?>"> <?php echo $breadcrumb['text']; ?></a></li>
            <?php } ?>
        </ol>
        <div class="row">
            <div class="main col-sm-12" role="main">
                <div class="std">
                    <div class="col-sm-12 mt100 ">
                        <h1><?php echo $heading_title; ?></h1>
                        <p><?php echo $text_error; ?></p>
                        <div class="links">
                            <a href="<?php echo $continue; ?>">Visit our homepage</a>
                            <span>or</span>
                            <a href="<?php echo $contact_href; ?>">Contact Us</a>
                        </div>
                    </div>
                </div>
            </div> 
        </div>
    </div>
</div>
</div>
<?php echo $footer; ?>