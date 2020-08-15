<?php echo $header; ?>
	<section class="content">
        <div class="container">
            <div class="row">
                <?php echo $content_top;?>                     
            </div>
            
            <div class="row content_bottom">
                <div class="col-md-3">
                    <?php echo $column_left;?>
                </div>
                <div class="col-md-9">
                    <div class="product_box ">
                        <div class="row">
                            <div class="col-md-12">
                                <ol class="breadcrumb">
									<?php $i=0; foreach ($breadcrumbs as $breadcrumb) { $i++; ?>
										<li>
											<?php if($i== count($breadcrumbs)){ ?>
												<?php echo Text::word_limiter($breadcrumb['text'],10); ?>
											<?php }else { ?>
											<a href="<?php echo $breadcrumb['href']; ?>"><?php echo Text::word_limiter($breadcrumb['text'],10); ?></a>
											<?php } ?>
										</li>
									<?php } ?>
								</ol>
                            </div>        
							<?php foreach($news as $new){?>
                            <div class="col-md-12">
                                <div class="news_item">
                                    <a href="<?php echo $new['href'];?>"><img src="<?php echo $new['thumb'];?>">
                                    </a>
                                    <div class="news_text">
                                        <h5><?php echo $new['name'];?>
                                        </h5>
                                        <p class="date"><?php echo $new['date_added'];?></p>
                                        <p class="meta_des"><?php echo Text::Word_limiter($new['short_description'],25);?>
                                        </p>
                                    </div>
                                </div>
                            </div> 
							<?php }?> 
							<div class="col-md-12">
                                <div class="pagination">
                                    <li><?php echo $pagination;?></li>
                                </div>
                            </div> 
                        </div>
                    </div>
                </div>
                <!--- giới thiêu---->
                

            </div>
            <div class="row">
                <div class="col-md-12">
                    <?php echo $content_bottom;?>
                </div>
            </div>
        </div>
    </section>
<?php echo $footer; ?>