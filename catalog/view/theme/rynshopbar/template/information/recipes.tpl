<?php echo $header; ?>
<div id="content" class="content">
    <div class="main" role="main">
        <div class="recipe-layout">
                <div class="category-products container">
                    <div class="row mt100">
                        <article class="col-md-12">
                            <div class="section-content">
                                <ul itemscope="" itemtype="http://schema.org/ItemList" class="products-grid row">
                                    <?php foreach ($all_news as $news){ ?>
                                        <li itemscope="" itemtype="http://schema.org/Product" itemprop="itemListElement" class="col-lg-3 col-md-4 col-sm-6 item recipe">
                                            <div class="product-image ">
                                                <a itemprop="url" href="<?php echo $news['view']; ?>">
                                                    <img src="<?php echo $news['image']; ?>" alt="<?php echo $news['title']; ?>"width="280" height="280" >
                                                </a>
                                            </div>
                                            <div class="product-info">
                                                <h2 class="product-name article_info">
                                                    <a href="<?php echo $news['view']; ?>" title="<?php echo $news['title']; ?>"><?php echo $news['title']; ?></a>
                                                </h2>
                                                                                                                        
                                            </div>
                                            <div class="product-extras">
                                                <div class="desc std article_desc"><?php echo $news['description']; ?></div>
                                            </div>
                                        </li>
                                    <?php } ?>
                                </ul> 
                            </div>    
                        </article>
                        <div class="col-md-12" style="text-align:center">
                            <?php echo $pagination;?>
                        </div>
                    </div>                                                                               
                </div>
        </div>
    </div>
</div>
<?php echo $footer; ?> 