<?php echo $header; ?>
<div class="container"> 
    <div class="row">
        <div class="col-md-12">
            <ol class="breadcrumbs" itemscope="" itemtype="http://schema.org/BreadcrumbList">
                <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                    <li><a style="color: #e76363" href="<?php echo $breadcrumb['href']; ?>"> <?php echo $breadcrumb['text']; ?></a></li>
                <?php } ?>
            </ol>
        </div>
        <?php if($column_left) echo $column_left; ?>
        <div id="content" class="col-sm-12 all-blog" style="margin-bottom: 100px;">
            <h1 style="color: #485a70; text-transform: uppercase;"><?php echo $heading_title; ?></h1>
            <div class="panel-default">
                <?php echo $description; ?>
            </div>
        </div>
    </div>
</div>
<style>
    .breadcrumbs li+li:before{
        content: '>';
        padding: 0 2px;
        color: red;
    }
</style>
<?php echo $footer; ?> 