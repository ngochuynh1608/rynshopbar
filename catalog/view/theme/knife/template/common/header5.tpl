<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
	<head>
		<meta http-equiv="Content-type" content="text/html;charset=UTF-8" />
		<title><?php echo $title; ?></title>
		<base href="<?php echo $base; ?>" />
		<?php if ($description) { ?><meta name="description" content="<?php echo $description; ?>" /><?php } ?>
		<?php if ($keywords) { ?><meta name="keywords" content="<?php echo $keywords; ?>" /><?php } ?>
		<?php if ($icon) { ?><link href="<?php echo $icon; ?>" rel="icon" /><?php } ?>
		<?php foreach ($links as $link) { ?><link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" /><?php } ?>
		<link href='http://fonts.googleapis.com/css?family=Roboto:400,500,300italic,700&subset=latin,vietnamese,latin-ext' rel='stylesheet' type='text/css'>
		<!-- Remove style skype on IE -->
		<meta name="SKYPE_TOOLBAR" content="SKYPE_TOOLBAR_PARSER_COMPATIBLE" />
		<meta content="telephone=no" name="format-detection" />
		<link rel="stylesheet" type="text/css" media="screen" href="catalog/view/theme/<?php echo $this->config->get('config_template');?>/stylesheet/bootstrap.css" />
		<link rel="stylesheet" type="text/css" media="screen" href="catalog/view/theme/<?php echo $this->config->get('config_template');?>/stylesheet/common.css" />
		<link rel="stylesheet" type="text/css" media="screen" href="catalog/view/theme/<?php echo $this->config->get('config_template');?>/stylesheet/font-awesome.min.css" />				<link rel="stylesheet" type="text/css" media="screen" href="catalog/view/theme/<?php echo $this->config->get('config_template');?>/stylesheet/overight.css" />
		<!-- Script -->
		<script type="text/javascript" src="catalog/view/theme/<?php echo $this->config->get('config_template');?>/javascript/jquery-1.11.1.min.js"></script>
		<script type="text/javascript" src="catalog/view/theme/<?php echo $this->config->get('config_template');?>/javascript/jquery-migrate-1.2.1.min.js"></script>
		<script type="text/javascript" src="catalog/view/theme/<?php echo $this->config->get('config_template');?>/javascript/bootstrap.min.js"></script>
		<script type="text/javascript" src="catalog/view/theme/<?php echo $this->config->get('config_template');?>/javascript/wow.min.js"></script>
		<script type="text/javascript" src="catalog/view/theme/<?php echo $this->config->get('config_template');?>/javascript/jquery.easing.1.3.js"></script>
		<script type="text/javascript" src="catalog/view/theme/<?php echo $this->config->get('config_template');?>/javascript/camera.min.js"></script>
		<script type="text/javascript" src="catalog/view/theme/<?php echo $this->config->get('config_template');?>/javascript/owl.carousel.min.js"></script>
		<script type="text/javascript" src="catalog/view/theme/<?php echo $this->config->get('config_template');?>/javascript/jquery.blueimp-gallery.min.js"></script>
		<script type="text/javascript" src="catalog/view/theme/<?php echo $this->config->get('config_template');?>/javascript/tooltip.js"></script>
		<script type="text/javascript" src="catalog/view/theme/<?php echo $this->config->get('config_template');?>/javascript/selectordie.min.js"></script>
		<script type="text/javascript" src="catalog/view/theme/<?php echo $this->config->get('config_template');?>/javascript/jquery.elevateZoom-3.0.8.min.js"></script>
		<script type="text/javascript" src="catalog/view/theme/<?php echo $this->config->get('config_template');?>/javascript/jquery-ui-1.9.2.custom.min.js"></script>
		<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>
		<script type="text/javascript" src="catalog/view/theme/<?php echo $this->config->get('config_template');?>/javascript/gmap3.min.js"></script>		<script type="text/javascript" src="catalog/view/theme/<?php echo $this->config->get('config_template');?>/javascript/jquery.imageScroller.js"></script>
		<script type="text/javascript" src="catalog/view/theme/<?php echo $this->config->get('config_template');?>/javascript/common.js"></script>
		<script type="text/javascript" src="catalog/view/theme/<?php echo $this->config->get('config_template');?>/javascript/mystyle.js"></script>
		<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->
	</head>
	<?php $route = isset($this->request->get['route']) ? $this->request->get['route'] : '';?>
	<?php $currentPage = isset($_GET['route'])?$_GET['route']:'common/home';?>
	<body>
		<div id="page" class="<?php echo ($route=='common/home'|| $route=="") ? "home" : "";?> animated fadeIn">
			<div class="header v4 v5">
				<div class="header-top">
					<div class="container">
						<div class="pull-left">
							<p class="welcome"><?php if (!$logged) { ?>
								<?php echo $text_welcome; ?>
								<?php } else { ?>
								<?php echo $text_logged; ?>
								<?php } ?></p>
							<div class="btn-group dropdown-custom">
							    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
							        <i class="fa fa-user icon-libs icon-mr"></i>
									<span>Tài khoản</span>
									<i class="fa fa-angle-down icon-libs"></i>
							    </button>
							    <ul class="dropdown-menu" role="menu">
							        <?php if (!$logged) { ?>
									<li><a href="<?php echo $login; ?>">Đăng nhập</a></li>
									<li><a href="<?php echo $forgotten; ?>">Quên mật khẩu</a></li>
									<?php } ?>
									<li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
									<?php if ($logged) { ?>
									<li><a href="<?php echo $edit; ?>">Sửa Thông Tin</a></li>
									<li><a href="<?php echo $password; ?>">Đổi password</a></li>
									<?php } ?>
									<li><a href="<?php echo $address; ?>"><?php echo "Địa chỉ của tôi"; ?></a></li>
									<li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
									<li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
									<li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
									<li><a href="<?php echo $transaction; ?>">Giao dịch</a></li>
									<li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
									<?php if ($logged) { ?>
									<li><a href="<?php echo $logout; ?>">Đăng xuất</a></li>
									<?php } ?>
							    </ul>
							</div>
						</div>
						<div class="pull-right">
							<form action="" class="form-search-liquid">
								<input name="search" type="text" class="form-control" onfocus="if(this.value =='Search' ) this.value=''" onblur="if(this.value=='') this.value='Search'" value="Search">
								<i class="fa fa-search icon-libs"></i>
							</form>
							<div class="shopping-cart">
								<?php echo $cart;?>	
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="header-bottom">
					<div class="container">
						<h1 class="logo"><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" alt="logo"></a></h1>
						<!--
							+ Class effect: effect-one
						-->
						<ul class="menu effect-one">
							<?php if ($categories) { ?>
								<?php foreach ($categories as $category) { ?>
								<?php if (!empty($category['children'])) { ?>
								<li class="has-submenu"><a href="<?php echo $category['href']; ?>" <?php if ($category['active'] == 'active') {
									echo 'class="active"';
									}?>>
								<?php } else { ?>
								<li><a href="<?php echo $category['href']; ?>" <?php if ($category['active'] == 'active') {
									echo 'class="active"';
									}?>>
								<?php } ?>
									<?php echo $category['name']; ?></a>
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
						<div class="clearfix"></div>
						<a href="#" class="btn-trigger-responsive" id="btn-trigger-responsive">
						    <span class="text">Menu</span>
						    <span class="wrap-icon-bar">
						        <span class="icon-bar"></span>
						        <span class="icon-bar"></span>
						        <span class="icon-bar"></span>
						    </span>
					    </a>
						<ul class="menu-toggle-responsive">
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