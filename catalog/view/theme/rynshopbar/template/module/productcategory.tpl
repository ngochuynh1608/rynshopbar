<div class="section" data-cms="homepage-categories">
    <div class="container-fluid" data-cms="homepage-categories">
        <h2 class="double-border" data-cms="homepage-categories"><?php echo $name_module;?></h2>
        <div class="row" data-cms="homepage-categories">
                <?php foreach ($categories as $category) { ?>
                <div class="col-md-6" data-cms="homepage-categories">
                    <div class="curled-corners" data-cms="homepage-categories">
                        <div class="thumbnail curled-corners-inner" data-cms="homepage-categories">
                            <a href="<?php echo $category['href']; ?>" id="b2c-homepage-categories_shop-retail-gourmet-IMG" data-cms="homepage-categories">
                                <img src="<?php echo $category['image']; ?>" alt="<?php echo $category['name']; ?>" width="570" height="340" / data-cms="homepage-categories">
                            </a>
                            <div class="description" data-cms="homepage-categories">
                                <h4 data-cms="homepage-categories"><?php echo $category['name']; ?></h4>
                                <p><?php echo $category['description']; ?></p>
                            </div>
                            <div class="buttons-set" data-cms="homepage-categories">
                                <a class="button button-default" href="<?php echo $category['href']; ?>" id="b2c-homepage-categories_shop-retail-gourmet-BTN" data-cms="homepage-categories">Chi tiết</a>
                            </div>
                        </div>
                    </div>
                </div>
                <?php }?>
    </div>
</div>
