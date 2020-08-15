<form method="post" class="form-vertical">
	<div class="row">
		<div class="col-md-6">
			<h2 class="title title-sm"><span><?php echo $text_your_details; ?></span></h2>
			<div class="form-group">
				<label for="inputFirstName"><?php echo $entry_firstname; ?><span class="force">*</span></label>
				<input type="text" class="form-control" name="firstname" value="<?php echo $firstname; ?>" id="inputFirstName">
			</div>
			<div class="form-group">
				<label for="inputLastName"><?php echo $entry_lastname; ?><span class="force">*</span></label>
				<input type="text" class="form-control" name="lastname" value="<?php echo $lastname; ?>" id="inputLastName">
			</div>
			<div class="form-group">
				<label for="inputEmail">Email <span class="force">*</span></label>
				<input type="text" class="form-control" name="email" value="<?php echo $email; ?>" id="inputEmail">
			</div>
			<div class="form-group">
				<label for="inputPhone"><?php echo $entry_telephone; ?><span class="force">*</span></label>
				<input type="text" class="form-control" name="telephone" value="<?php echo $telephone; ?>" id="inputPhone">
			</div>
			<div class="form-group" style="display:none">
				<label for="inputFax"> <?php echo $entry_fax; ?></label>
				<input type="text" class="form-control" name="fax" value="<?php echo $fax; ?>" id="inputFax">
			</div>
		</div>
		<div class="col-md-6">
			<h2 class="title title-sm"><span><?php echo $text_your_address; ?></span></h2>
			<div class="form-group" style="display:none">
				<label for="inputCompany"><?php echo $entry_company; ?></label>
				<input type="text" class="form-control" name="company" value="<?php echo $company; ?>" id="inputCompany">
			</div>
			<div class="form-group" style="display:none">
				<label for="inputCompanyId"><?php echo $entry_company_id; ?><span class="force">*</span></label>
				<input type="text" class="form-control" name="company_id" value="<?php echo $company_id; ?>" id="inputCompanyId">
			</div>
			<div class="form-group" id="tax-id-display" style="display:none">
				<label for="inputAddress1"><?php echo $entry_tax_id; ?><span id="tax-id-required" class="force">*</span></label>
				<input type="text" class="form-control" name="tax_id" value="<?php echo $tax_id; ?>" id="inputAddress1">
			</div>
			<div class="form-group">
				<label for="inputAddress1">Địa chỉ</label>
				<input type="text" class="form-control" name="address_1" value="<?php echo $address_1; ?>" id="inputAddress1">
			</div>
			<div class="form-group" style="display:none;">
				<label for="inputAddress2"><?php echo $entry_address_2; ?></label>
				<input type="text" class="form-control" name="address_2" value="<?php echo $address_2; ?>" id="inputAddress2">
			</div>
			<div class="form-group">
				<label for="inputCity">Quận/ Huyện / Thành Phố<span class="force">*</span></label>
				<input type="text" class="form-control" name="city" value="<?php echo $city; ?>" id="inputCity">
			</div>
			<div class="form-group" style="display:none">
				<label for="inputPostCode"><?php echo $entry_postcode; ?><span id="payment-postcode-required" class="force">*</span></label>
				<input type="text" class="form-control" name="postcode" value="<?php echo $postcode; ?>" id="inputPostCode">
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
 <?php if ($shipping_required) { ?>
<div style="clear: both; padding-top: 15px; border-top: 1px solid #DDDDDD;">
  <?php if ($shipping_address) { ?>
  <input type="checkbox" name="shipping_address" value="1" id="shipping" checked="checked" />
  <?php } else { ?>
  <input type="checkbox" name="shipping_address" value="1" id="shipping" />
  <?php } 
  } ?>
  <label for="shipping"><?php echo $entry_shipping; ?></label>
	<a type="button" id="button-guest" class="btn pull-right"><?php echo $button_continue; ?></a>
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