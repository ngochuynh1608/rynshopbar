<?php echo $header; ?>
<div class="banner">
	<?php echo $content_top; ?>
	<div class="wrap-content-abs">
		<div class="container">
			<div class="row">
				<h2 class="banner-title col-md-12"><?php echo $heading_title; ?></h2>
			</div>				
		</div>
	</div>
</div>
<div class="content">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<?php if ($success) { ?>
					<div class="success"><div class="alert alert-success alert-dismissible" role="alert"><button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button><i class="fa fa-check-circle fa-lg"></i><?php echo $success; ?></div></div>
				<?php } ?>
				<?php if ($error_warning) { ?>
					<div class="warning"><div class="alert alert-success alert-dismissible" role="alert"><button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button><i class="fa fa-check-circle fa-lg"></i><?php echo $error_warning; ?></div></div>
				<?php } ?>
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
				<div class="row member-management">
					<?php echo $column_left;?>
					<div class="member-main-content address-book col-md-9">
						<h2 class="title-lg">Đăng nhập tài khoản</h2>
						<div class="col-left">
							<p class="title-md">Khách hàng đã đăng ký</p>							
							<form class="form form-vertical form-login" action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
								<div class="form-group">
									<label for="inputEmail">Email:</label>
									<input type="email" name="email" value="<?php echo $email; ?>" class="form-control" placeholder="Email">
								</div>
								<div class="form-group">
									<label for="inputPassword">Mật khẩu:</label>
									<input type="password" name="password" value="<?php echo $password; ?>" class="form-control" placeholder="Mật khẩu">
								</div>
								<p><a href="<?php echo $forgotten; ?>" class="link">Quên mật khẩu?</a></p>
								<div class="wrap-checkbox">
									<input id="remember-login" type="checkbox" name="checkbox" value="1">
									<label for="remember-login" class="checkbox"><span></span>Giữ trạng thái đăng nhập</label>
								</div>
								<button type="submit" class="btn btn-submit">Đăng nhập</button>
							</form>
						</div>
						<div class="col-right">
							<div class="box tac box-first">
								<p class="text-first">Bạn là khách hàng mới và chưa có tài khoản</p>
								<p class="text-second">Bằng cách tạo ra một tài khoản bạn sẽ có thể mua sắm nhanh hơn</p>
								<a href="<?php echo $register; ?>" class="btn btn-register">Đăng ký</a>
							</div>
							<div class="box tac box-second">
								<p class="text-first">Bạn là khách hàng mới và chưa có tài khoản</p>
								<a href="javascript:void(0)" onclick="window.open('http://www.facebook.com/sharer/sharer.php?u='+window.location.href)"" class="btn btn-login-fb"><i class="icon icon-fb"></i>Login with facebook</a>
								<p class="text-second">Bằng cách tạo ra một tài khoản bạn sẽ có thể mua sắm nhanh hơn</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript"><!--
$('.form-login input').keydown(function(e) {
	if (e.keyCode == 13) {
		$('.form-login').submit();
	}
});
//--></script> 
<?php echo $footer; ?>