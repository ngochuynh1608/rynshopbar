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
					<div class="member-main-content register col-md-12">
						<h2 class="title-lg">Đăng ký</h2>
						<p class="note mb"><?php echo $text_account_already; ?></p>
						<div class="wrap-box-register">
							<form action="<?php echo $action; ?>" method="post" class="form form-vertical form-register" enctype="multipart/form-data">
								<div class="col-left">
									<p class="title-md">Thông tin cần biết</p>
									<div class="form-group">
										<label for="inputEmail">Email: <span class="force">*</span></label>
										<input type="email" name="email" value="<?php echo $email; ?>" class="form-control">
										<?php if ($error_email) { ?>
											<span class="error"><?php echo $error_email; ?></span>
										<?php } ?>
									</div>
									<p class="note inner">Chúng tôi sẽ gửi thư xác nhận đến địa chỉ email này. Xin hãy chắc chắn rằng bạn có thể truy cập và sử dụng địa chỉ email này để nhận thư.</p>
									<div class="form-group">
										<label for="inputPassword">Mật khẩu: <span class="force">*</span></label>
										<input type="password" name="password" value="<?php echo $password; ?>" class="form-control warning">
										<?php if ($error_password) { ?>
											<span class="error"><?php echo $error_password; ?></span>
										<?php } ?>
									</div>
									<div class="form-group">
										<label for="inputPassword">Nhập lại mật khẩu: <span class="force">*</span></label>
										<input type="password" name="confirm" value="<?php echo $confirm; ?>" class="form-control">
										<?php if ($error_confirm) { ?>
											<span class="error"><?php echo $error_confirm; ?></span>
										<?php } ?>
									</div>
								</div>
								<div class="col-right">
									<p class="title-md">Thông tin khác</p>																	
									<div class="wrap-2-form-group">
										<div class="form-group">
											<label for="inputFirstname">Tên:<span class="force">*</span></label>
											<input type="text" name="lastname" value="<?php echo $lastname; ?>" class="form-control" id="inputFirstname">
											<?php if ($error_lastname) { ?>
												<span class="error"><?php echo $error_lastname; ?></span>
											<?php } ?>
										</div>
										<div class="form-group">
											<label for="inputLastname">Họ:<span class="force">*</span></label>
											<input type="text" name="firstname" value="<?php echo $firstname; ?>" class="form-control" id="inputLastname">
											<?php if ($error_firstname) { ?>
												<span class="error"><?php echo $error_firstname; ?></span>
											<?php } ?>
										</div>
									</div>
									<input type="hidden" name="address_2" value="<?php echo $address_2; ?>"  class="form-control form-control-name">
									<input type="hidden" name="fax" value="<?php echo $fax; ?>"  class="form-control form-control-name"> 
									<input type="hidden" name="company" value="<?php echo $company; ?>"  class="form-control form-control-name">
									<input type="hidden" name="company_id" value="<?php echo $company_id; ?>"  class="form-control form-control-name">
									<div class="form-group">
										<label for="inputEmail">Địa chỉ:<span class="force">*</span></label>
										<div class="pos-rel">
											<input type="text" name="address_1" value="<?php echo $address_1; ?>" class="form-control" id="inputBirthday">
										</div>
										<?php if ($error_address_1) { ?>
											<span class="error"><?php echo $error_address_1; ?></span>
										<?php } ?>
									</div>
									<div class="form-group">
										<label for="inputBirthday">Số điện thoại:<span class="force">*</span></label>
										<div class="pos-rel">
											<input type="text" name="telephone" value="<?php echo $telephone; ?>" class="form-control" id="inputBirthday">
										</div>
										<?php if ($error_telephone) { ?>
											<span class="error"><?php echo $error_telephone; ?></span>
										<?php } ?>	
									</div>
									<div class="form-group">
										<label for="inputBirthday">Thành phố:<span class="force">*</span></label>
										<div class="pos-rel">
											<input type="text" name="city" value="<?php echo $city; ?>" class="form-control" id="inputBirthday">
										</div>
										<?php if ($error_city) { ?>
											<span class="error"><?php echo $error_city; ?></span>
										<?php } ?>	
									</div>
									<div class="form-group">
										<label for="inputBirthday">Mã bưu chính:<span class="force">*</span></label>
										<div class="pos-rel">
											<input type="text" name="postcode" value="<?php echo $postcode; ?>" class="form-control" id="inputBirthday">
										</div>
										<?php if ($error_postcode) { ?>
											<span class="error"><?php echo $error_postcode; ?></span>
										<?php } ?>	
									</div>
									<div class="form-group">
										<label for="inputBirthday"><?php echo $entry_country; ?><span class="force">*</span></label></li>
										<div class="pos-rel">
										<select name="country_id">
										  <option value=""><?php echo $text_select; ?></option>
										  <?php foreach ($countries as $country) { ?>
										  <?php if ($country['country_id'] == $country_id) { ?>
										  <option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
										  <?php } else { ?>
										  <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
										  <?php } ?>
										  <?php } ?>
										</select>
										</div>
									<?php if ($error_country) { ?>
										<span class="error"><?php echo $error_country; ?></span>
									<?php } ?>
									</div>
									<div class="form-group">
										<label for=""><?php echo $entry_zone; ?><span class="force">*</span></label></li>
										<select name="zone_id">
										</select>
										<?php if ($error_zone) { ?>
											<span class="error"><?php echo $error_zone; ?></span>
										<?php } ?>
									</div>
									<p>Mục bắt buộc: <span class="force">*</span></p>
									<div class="wrap-checkbox">
										<div>
											<?php if ($newsletter) { ?>
											<input id="checkbox1" type="checkbox" name="newsletter" value="1" checked="checked">
											<?php } else { ?>
											<input id="checkbox1" type="checkbox" name="newsletter" value="0">
											<?php } ?>
											<label for="checkbox1" class="checkbox"><span></span>Đăng ký bản tin qua email</label>
										</div>										
										<div>
											<?php if ($agree) { ?>
											<input id="checkbox3" type="checkbox" name="agree" value="1" checked="checked">
											<?php } else { ?>
											<input id="checkbox3" type="checkbox" name="agree" value="0" />
											<?php } ?>
											<label for="checkbox3" class="checkbox"><span></span><?php echo $text_agree; ?></label>
										</div>										
									</div>
								</div>
								<div class="clearfix"></div>
								<button type="submit" class="btn btn-submit">Đăng ký</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>               
<script type="text/javascript"><!--

$('input[name=\'customer_group_id\']:checked').live('change', function() {

  var customer_group = [];

  

<?php foreach ($customer_groups as $customer_group) { ?>

  customer_group[<?php echo $customer_group['customer_group_id']; ?>] = [];

  customer_group[<?php echo $customer_group['customer_group_id']; ?>]['company_id_display'] = '<?php echo $customer_group['company_id_display']; ?>';

  customer_group[<?php echo $customer_group['customer_group_id']; ?>]['company_id_required'] = '<?php echo $customer_group['company_id_required']; ?>';

  customer_group[<?php echo $customer_group['customer_group_id']; ?>]['tax_id_display'] = '<?php echo $customer_group['tax_id_display']; ?>';

  customer_group[<?php echo $customer_group['customer_group_id']; ?>]['tax_id_required'] = '<?php echo $customer_group['tax_id_required']; ?>';

<?php } ?>  



  if (customer_group[this.value]) {

    if (customer_group[this.value]['company_id_display'] == '1') {

      $('#company-id-display').show();

    } else {

      $('#company-id-display').hide();

    }

    

    if (customer_group[this.value]['company_id_required'] == '1') {

      $('#company-id-required').show();

    } else {

      $('#company-id-required').hide();

    }

    

    if (customer_group[this.value]['tax_id_display'] == '1') {

      $('#tax-id-display').show();

    } else {

      $('#tax-id-display').hide();

    }

    

    if (customer_group[this.value]['tax_id_required'] == '1') {

      $('#tax-id-required').show();

    } else {

      $('#tax-id-required').hide();

    } 

  }

});



$('input[name=\'customer_group_id\']:checked').trigger('change');

//--></script> 

<script type="text/javascript"><!--

$('select[name=\'country_id\']').bind('change', function() {

  $.ajax({

    url: 'index.php?route=account/register/country&country_id=' + this.value,

    dataType: 'json',

    beforeSend: function() {

      $('select[name=\'country_id\']').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');

    },

    complete: function() {

      $('.wait').remove();

    },      

    success: function(json) {

      if (json['postcode_required'] == '1') {

        $('#postcode-required').show();

      } else {

        $('#postcode-required').hide();

      }

      

      html = '<option value=""><?php echo $text_select; ?></option>';

      

      if (json['zone'] != '') {

        for (i = 0; i < json['zone'].length; i++) {

              html += '<option value="' + json['zone'][i]['zone_id'] + '"';

            

          if (json['zone'][i]['zone_id'] == '<?php echo $zone_id; ?>') {

                html += ' selected="selected"';

            }

  

            html += '>' + json['zone'][i]['name'] + '</option>';

        }

      } else {

        html += '<option value="0" selected="selected"><?php echo $text_none; ?></option>';

      }

      

      $('select[name=\'zone_id\']').html(html);

    },

    error: function(xhr, ajaxOptions, thrownError) {

      alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);

    }

  });

});



$('select[name=\'country_id\']').trigger('change');

//--></script>  
<?php echo $footer; ?>