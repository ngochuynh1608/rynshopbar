<!doctype html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<title><?php echo $title; ?> - <?php echo $name; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<meta name="robots" content="INDEX,FOLLOW" />
<link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,700&amp;subset=vietnamese" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Roboto:400,500,700&amp;subset=vietnamese" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700&amp;subset=vietnamese" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="catalog/view/theme/rynshopbar/media/css_secure/owl.carousel.css" media="print" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/rynshopbar/media/css_secure/style.css" media="all" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/rynshopbar/media/css_secure/common.css" media="print" />

<link href="catalog/view/theme/rynshopbar/media/css/icon-plugin/font-awesome.css" rel="stylesheet">
<link href="catalog/view/theme/rynshopbar/media/css/icon-plugin/fontello.css" rel="stylesheet">
<link href="catalog/view/theme/rynshopbar/media/css/revolution-plugin/extralayers.css" rel="stylesheet">
<link href="catalog/view/theme/rynshopbar/media/css/revolution-plugin/settings.css" rel="stylesheet">
<link href="catalog/view/theme/rynshopbar/media/css/bootstrap-plugin/bootstrap.css" rel="stylesheet">
<link href="catalog/view/theme/rynshopbar/media/css/bootstrap-plugin/bootstrap-slider.css" rel="stylesheet">
<link href="catalog/view/theme/rynshopbar/media/css/animation/animate.min.css" rel="stylesheet">
<link href="catalog/view/theme/rynshopbar/media/css/owl-carousel/owl.carousel.css" rel="stylesheet">
<link href="catalog/view/theme/rynshopbar/media/css/owl-carousel/owl.theme.default.css" rel="stylesheet">
<link href="catalog/view/theme/rynshopbar/media/css/light-box/simplelightbox.css" rel="stylesheet">
<link href="catalog/view/theme/rynshopbar/media/css/light-box/magnific-popup.css" rel="stylesheet">

<link href="catalog/view/theme/rynshopbar/media/css/scroll-bar/jquery.mCustomScrollbar.css" rel="stylesheet">
<link href="catalog/view/theme/rynshopbar/media/css/form-field/jquery.formstyler.css" rel="stylesheet">
<link href="catalog/view/theme/rynshopbar/media/css/Slick-slider/slick-theme.css" rel="stylesheet">
<link href="catalog/view/theme/rynshopbar/media/css/theme.css" rel="stylesheet">
<link href="catalog/view/theme/rynshopbar/media/css/responsive.css" rel="stylesheet">

<script src="catalog/view/theme/rynshopbar/media/js/jquery.min.js"></script>
<script src="http://code.jquery.com/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="catalog/view/theme/rynshopbar/media/js/common.js"></script> 
<!--<script type="text/javascript" src="catalog/view/javascript/common.js"></script>-->



</head>
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = 'https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v3.2&appId=1073484599365702&autoLogAppEvents=1';
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<body class=" cms-index-index cms-home fullbleed cms-page-view ">
    <div class="wrapper">
         <!-- Start Header Part -->
         <header>
            <div class="header-part header-reduce sticky">
               <div class="header-nav">
                  <div class="container">
                     <div class="header-nav-inside">
                        <div class="logo">
                           <a href="<?php echo $base;?>">
                           <img src="<?php echo $logo; ?>">
                           </a>
                        </div>
                        <div class="menu-top-part">
                           <div class="menu-nav-main">
                              <ul>
                                 <li class="has-child">
                                    <a href="<?php echo $home; ?>">Trang Chủ</a>
                                 </li>
                                 <li class="has-child">
                                    <a href="<?php echo $information_href; ?>">Về Chúng Tôi</a>
                                 </li>
                                 <li class="mega-menu">
                                    <a href="<?php echo $landing_href; ?>">Sản Phẩm</a>
                                 </li>
             
                                 <li class="has-child">
                                    <a href="<?php echo $ct_href; ?>">Tin Tức</a>
                                 </li>
                                 <li class="has-child">
                                    <a href="<?php echo $contact; ?> ">Liên Hệ</a>
                                 </li>
                              </ul>
                           </div>
                           <div class="cell-part">
                              <a href="tel:<?php echo $telephone; ?>"><span class="icon-phone fontello"></span><?php echo $telephone; ?></a>
                           </div>
                           <?php echo $cart_mini; ?>
                           <div class="menu-icon">
                              <a href="#" class="hambarger">
                              <span class="bar-1"></span>
                              <span class="bar-2"></span>
                              <span class="bar-3"></span>
                              </a>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="header-category">
                  <div class="container-fluid" style="text-align: center;">
                     <div class="category-icon">
                        <div class="category-icon-menu">
                           <a href="#" class="hambarger-icon">
                              <i class="fa fa-bars"></i>
                           Danh Mục Sản Phẩm
                           </a>
                        </div>
                        <?php if($categories) { ?>
                        <ul>
                           <?php foreach($categories as $category) { ?>
                           <li><a href="<?php echo $category['href']; ?>"><span class=" custom-icon"><img src="<?php echo $category['thumb']; ?>" /></span><strong><?php echo $category['name'];?></strong></a></li>
                           <?php } ?>
                        </ul>
                        <?php } ?>
                     </div>
                  </div>
               </div>
            </div>
         </header>

