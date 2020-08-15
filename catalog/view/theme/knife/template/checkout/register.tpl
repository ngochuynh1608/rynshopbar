<form method="post" class="form-vertical">
	<div class="row">
		<div class="col-md-6">
			<h2 class="title title-sm"><span><?php echo $text_your_details; ?></span></h2>
			<div class="form-group">
				<label for="inputFirstName"><?php echo $entry_firstname; ?><span class="force">*</span></label>
				<input type="text" class="form-control" name="firstname" value="" id="inputFirstName">
			</div>
			<div class="form-group">
				<label for="inputLastName"><?php echo $entry_lastname; ?><span class="force">*</span></label>
				<input type="text" class="form-control" name="lastname" value="" id="inputLastName">
			</div>
			<div class="form-group">
				<label for="inputEmail"><?php echo $entry_email; ?><span class="force">*</span></label>
				<input type="text" class="form-control" name="email" value="" id="inputEmail">
			</div>
			<div class="form-group">
				<label for="inputPhone"><?php echo $entry_telephone; ?><span class="force">*</span></label>
				<input type="text" class="form-control" name="telephone" value="" id="inputPhone">
			</div>
			<div class="form-group" style="display:none;">
				<label for="inputFax"> <?php echo $entry_fax; ?></label>
				<input type="text" class="form-control" name="fax" value="" id="inputFax">
			</div>
			<h2 class="title title-sm mt20"><span><?php echo $text_your_password; ?></span></h2>
			<div class="form-group">
				<label for="inputPassword"><?php echo $entry_password; ?> <span class="force">*</span></label>
				<input type="password" name="password" value="" class="form-control" id="inputPassword">
			</div>
			<div class="form-group">
				<label for="inputConfirmPassword"> <?php echo $entry_confirm; ?> <span class="force">*</span></label>
				<input type="password" name="confirm" value="" class="form-control" id="inputConfirmPassword">
			</div>
		</div>
		<div class="col-md-6">
			<h2 class="title title-sm"><span><?php echo $text_your_address; ?></span></h2>
			<div class="form-group" style="display:none;">
				<label for="inputCompany"><?php echo $entry_company; ?></label>
				<input type="text" class="form-control" name="company" value="" id="inputCompany">
			</div>
			<div class="form-group" style="display:none;">
				<label for="inputCompanyId"><?php echo $entry_company_id; ?><span class="force">*</span></label>
				<input type="text" class="form-control" name="company_id" value="" id="inputCompanyId">
			</div>
			<div class="form-group" id="tax-id-display" style="display:none;">
				<label for="inputAddress1"><?php echo $entry_tax_id; ?><span id="tax-id-required" class="force">*</span></label>
				<input type="text" class="form-control" name="tax_id" value="" id="inputAddress1">
			</div>
			<div class="form-group">
				<label for="inputAddress1"><?php echo $entry_address_1; ?></label>
				<input type="text" class="form-control" name="address_1" value="" id="inputAddress1">
			</div>
			<div class="form-group" style="display:none;">
				<label for="inputAddress2"><?php echo $entry_address_2; ?></label>
				<input type="text" class="form-control" name="address_2" value="" id="inputAddress2">
			</div>
			<div class="form-group">
				<label for="inputCity">Quận/ Huyện / Thành Phố</span></label>
				<input type="text" class="form-control" name="city" value="" id="inputCity">
			</div>
			<div class="form-group" style="display:none;">
				<label for="inputPostCode"><?php echo $entry_postcode; ?><span id="payment-postcode-required" class="force">*</span></label>
				<input type="text" class="form-control" name="postcode" value="" id="inputPostCode">
			</div>
			<div class="form-group">
				<label for="inputFax"><?php echo $entry_country; ?></label>
				<select name="country_id" class="form-control">
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
			<div class="form-group">
				<label for="inputFax"><?php echo $entry_zone; ?></label>
				<select name="zone_id" class="form-control">
				</select>
			</div>
			
		</div>
	</div>
	<div class="wrap-checkbox">
		<input id="newsletter" type="checkbox" name="newsletter" value="1">
		<label for="newsletter" class="checkbox"><span></span><?php echo $entry_newsletter; ?></label>
	</div>
	<?php if ($shipping_required) { ?>
	<div class="wrap-checkbox">
		<input id="shipping" type="checkbox" name="shipping_address" value="1" checked="checked">
		<label for="shipping" class="checkbox"><span></span><?php echo $entry_shipping; ?></label>
	</div>
	<?php } ?>
	<?php if ($text_agree) { ?>
	<div class="pull-right agree-policy">
		<p class="text-policy"><?php echo $text_agree; ?></p>
		<div class="checkbox-policy">
			<input id="checkbox3" type="checkbox" name="agree" value="1">
			<label for="checkbox3" class="checkbox"><span></span></label>
		</div>
	</div>
	<div class="clearfix"></div>
	<a type="button" id="button-register"  class="btn pull-right"><?php echo $button_continue; ?></a>
	<?php } else { ?>
	<div class="clearfix"></div>
	<a type="button" id="button-register"  class="btn pull-right"><?php echo $button_continue; ?></a>
	<?php } ?>
	<div class="clearfix"></div>
</form>
<script type="text/javascript"><!--
$('.step2 select[name=\'country_id\']').bind('change', function() {
	if (this.value == '') return;
	$.ajax({
		url: 'index.php?route=checkout/checkout/country&country_id=' + this.value,
		dataType: 'json',
		beforeSend: function() {
			$('.step2 select[name=\'country_id\']').after('<span class="wait">&nbsp;<img src="catalog/view/theme/<?php echo $this->config->get('config_template');?>/image/loading.gif" alt="" /></span>');
		},
		complete: function() {
			$('.wait').remove();
		},			
		success: function(json) {
			if (json['postcode_required'] == '1') {
				$('#payment-postcode-required').show();
			} else {
				$('#payment-postcode-required').hide();
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
			
			$('.step2 select[name=\'zone_id\']').html(html);
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});

$('.step2 select[name=\'country_id\']').trigger('change');
//--></script>