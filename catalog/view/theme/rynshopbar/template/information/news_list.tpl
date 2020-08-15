<?php echo $header; ?>
<div id="content" class="content">
    <div class="main" role="main">

    <div id="blog-content" class="detailed">
        <div class="container">
            <div class="row mt100">
                <article class="col-md-12">
                    <div class="section-content">
                        <section>
                        
                        <div class="grid-container">
                            <div class="row">
                                <?php foreach ($all_news as $news){ ?>
                                <div class="col-md-4 col-sm-6">
                                    <div class="news-thumbnail">
                                        <div class="thumbnail thumb-inner">
                                            <img src="<?php echo $news['image']; ?>" alt="<?php echo $news['title']; ?>" width="400" height="250" class="alignnone size-full wp-image-2279">
                                            <div class="description">
                                                <h4><?php echo $news['title']; ?></h4>
                                                <?php echo $news['description']; ?>
                                            </div>
                                            <div class="buttons-set" style="margin-left: 11%; text-align: center; margin-top:10px;">
                                                <a href="<?php echo $news['view']; ?>" class="button button-default">Chi tiết</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <?php } ?>
                            <!----- 1 article --------->
                            </div>
                        </div>
                        </section>
                    
                    </div>
                </article>
                <div class="col-md-12">
                    <?php echo $pagination;?>
                </div>
            </div>
        </div>
    </div>
    </div>
</div>
<?php echo $footer; ?> 