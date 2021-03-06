<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
	<meta http-equiv="Content-type" content="text/html;charset=UTF-8" />	
	<meta name="apple-mobile-web-app-capable" content="yes" />   
	<meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; minimum-scale=1.0; user-scalable=0;" /> <!-- For iPhone 4 with high-resolution Retina display: --> 
	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="apple-touch-icon-114x114-precomposed.png">
	<!-- For first-generation iPad: -->  <link rel="apple-touch-icon-precomposed" sizes="72x72" href="apple-touch-icon-72x72-precomposed.png">
	<!-- For non-Retina iPhone, iPod Touch, and Android 2.1+ devices: -->
	<link rel="apple-touch-icon-precomposed" href="apple-touch-icon-precomposed.png">
	<title><?php echo $title; ?></title>
	<base href="<?php echo $base; ?>" />
	<?php if ($description) { ?><meta name="description" content="<?php echo $description; ?>" /><?php } ?>
	<?php if ($keywords) { ?><meta name="keywords" content="<?php echo $keywords; ?>" /><?php } ?>
	<?php if ($icon) { ?><link href="<?php echo $icon; ?>" rel="icon" /><?php } ?>
	<?php foreach ($links as $link) { ?><link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" /><?php } ?>
    <link type="text/css" rel="stylesheet" href="catalog/view/theme/knife/css/bootstrap.css" />
	<link rel="stylesheet" type="text/css" media="screen" href="catalog/view/theme/knife/stylesheet/common.css" />
	<link rel="stylesheet" type="text/css" media="screen" href="catalog/view/theme/knife/stylesheet/overight.css" />
    <link type="text/css" rel="stylesheet" href="catalog/view/theme/knife/bxslider/jquery.bxslider.css" />
    <link type="text/css" rel="stylesheet" href="catalog/view/theme/knife/css/style.css" />
    <link type="text/css" rel="stylesheet" href="catalog/view/theme/knife/css/style2.css" />
    <link type="text/css" rel="stylesheet" href="catalog/view/theme/knife/fonts/fonts.css" />
    <link type="text/css" rel="stylesheet" href="catalog/view/theme/knife/font-awesome/css/font-awesome.css" />
    <link type="text/css" rel="stylesheet" href="catalog/view/theme/knife/css/reponsive.css" />
    <link type="text/css" rel="stylesheet" href="catalog/view/theme/knife/javascript/fancybox/jquery.fancybox.css?v=2.1.5" media="screen" />
    <script type="text/javascript" src="catalog/view/theme/knife/js/jquery.min.js"></script>
    <script type="text/javascript" src="catalog/view/theme/knife/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="catalog/view/theme/knife/bxslider/jquery.bxslider.min.js"></script>
	<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>	
	<script type="text/javascript" src="catalog/view/theme/knife/javascript/gmap3.min.js"></script>
    <script type="text/javascript" src="catalog/view/theme/knife/js/custom.js"></script>
	<script type="text/javascript" src="catalog/view/theme/knife/javascript/common.js"></script>
	<script type="text/javascript" src="catalog/view/theme/knife/javascript/mystyle.js"></script>
    <script type="text/javascript" src="catalog/view/theme/knife/javascript/fancybox/jquery.fancybox.js?v=2.1.5"></script>
</head>

<body>
<!-- Load Facebook SDK for JavaScript -->
      <div id="fb-root"></div>
      <script>
        window.fbAsyncInit = function() {
          FB.init({
            xfbml            : true,
            version          : 'v8.0'
          });
        };

        (function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = 'https://connect.facebook.net/vi_VN/sdk/xfbml.customerchat.js';
        fjs.parentNode.insertBefore(js, fjs);
      }(document, 'script', 'facebook-jssdk'));</script>

      <!-- Your Chat Plugin code -->
      <div class="fb-customerchat"
        attribution=setup_tool
        page_id="1738842989740127"
  logged_in_greeting="Chào bạn , RynShopBar có thể giúp gì được cho bạn ?"
  logged_out_greeting="Chào bạn , RynShopBar có thể giúp gì được cho bạn ?">
      </div>
    <section class="header">
        <div class="bg_header"></div>
        <div class="container">
            <div class="row">
                <div class="top_header">
                    <div class="col-md-2 col-sm-2 col-xs-4 ">
                        <div class="logo">
                            <a href="<?php echo $home;?>"><img src="<?php echo $logo;?>" /></a>
                        </div>
                    </div>
                    <div class="col-md-5 col-sm-4 col-xs-12 hidden_small">
                        <div class="slogan">
                             <ul>
                                <li><img src="catalog/view/theme/knife/images/icon_car.png" />Miễn Phí Giao Hàng</li>
                                <li><img src="catalog/view/theme/knife/images/icon_phone.png" />Hotline: <?php echo $telephone; ?></li>
                             </ul>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-3 col-xs-8" >
	                    <div class="search">
	                        <form class="form-search-liquid">
	                            <input name='search' class="search" type="text" onfocus="if(this.value =='Tìm kiếm...' ) this.value=''" onblur="if(this.value=='') this.value='Tìm kiếm...'" value="Tìm kiếm..." />
	                            <i class="fa fa-search icon-libs icon-search"></i>
	                        </form>
	                    </div>

                    </div>
                    <div class="col-md-2 col-sm-3 col-xs-12" >
                        <div class="shopping-cart">
				            <?php echo $cart_mini;?>
                            <div class="popup-shopping-cart" id="popup-shopping-cart">
                        		<p class="empty">Giỏ hàng của bạn đang trống!</p>
                        	</div>
						</div>
                    </div>
                </div>
            </div>
        </div>     
    </section>
    <section class="menu di">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
						<a href="#" class="btn-trigger-responsive" id="btn-trigger-responsive">
						    <span class="text">Menu</span>
						    <span class="wrap-icon-bar">
						        <span class="icon-bar"></span>
						        <span class="icon-bar"></span>
						        <span class="icon-bar"></span>
						    </span>
					    </a>
						<ul class="menu-toggle-responsive">
							<li><a href="<?php echo $all_products; ?>">Tất cả sản phẩm</a></li>
							<?php if ($categories) { ?>
								<?php foreach ($categories as $category) { ?>
								<?php if (!empty($category['children'])) { ?>
								<li><a href="<?php echo $category['href']; ?>" <?php if ($category['active'] == 'active') {
									echo 'class="active"';
									}?>><?php echo $category['name']; ?><i class="fa fa-chevron-right icon-libs pull-right"></i></a>
								<?php } else { ?>
								<li><a href="<?php echo $category['href']; ?>" <?php if ($category['active'] == 'active') {
									echo 'class="active"';
									}?>><?php echo $category['name']; ?></a>
								<?php } ?>
									
									<?php if (!empty($category['children'])) { ?>
										<ul class="style-one effect-one">
										  <?php foreach($category['children'] as $item):?>
											  <li><a href="<?php echo $item['href']; ?>"><?php echo $item['name']; ?></a>
											  </li>
										  <?php endforeach; ?>
										</ul>
									<?php } ?>
								</li>
								<?php } ?>							  
							<?php } ?>
						</ul>  
                </div>
            </div>
        </div>
    </section>