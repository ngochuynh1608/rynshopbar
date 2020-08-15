
 <div class="carousel auto" data-cms="homepage-carousel">
    <div class="slides" data-cms="homepage-carousel">
        <?php foreach ($banners as $banner) {?>
            <div class="slide banner-image right" style="background-image: url('<?php echo $banner['image']; ?>');" data-cms="homepage-carousel">
                <div class="copy" data-cms="homepage-carousel">
                    <div class="vertical-center" data-cms="homepage-carousel">
                        <div class="vertical-center-inner" data-cms="homepage-carousel">
                            <h2 data-cms="homepage-carousel" style="color:#<?php echo $banner['color'];?>"><?php echo $banner['title']; ?></h2>
                            <p data-cms="homepage-carousel" style="color:#<?php echo $banner['color'];?>"><?php echo $banner['description']; ?></p>
                            <div class="buttons-set" data-cms="homepage-carousel">
                                <a class="button button-default" href="<?php echo $banner['link'];?>" id="b2c-homepage-carousel_shop-gourmet-salt-BTN" data-cms="homepage-carousel">Shopping Now</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <?php } ?>
    </div>
    <button type="button" class="left carousel-control" data-m-slide="prev" data-cms="homepage-carousel"><i class="icon-angle-left" data-cms="homepage-carousel"></i></button>
    <button type="button" class="right carousel-control" data-m-slide="next" data-cms="homepage-carousel"><i class="icon-angle-right" data-cms="homepage-carousel"></i></button>
    <ul class="carousel-indicators" data-cms="homepage-carousel">
        <?php $i=1; ?>
        <?php foreach ($banners as $banner) {?>
            <li data-m-slide="<?php echo $i; $i++; ?>" data-cms="homepage-carousel"><i class="icon-circle-o" data-cms="homepage-carousel"></i></li>
        <?php }  ?>
    </ul>
</div> 