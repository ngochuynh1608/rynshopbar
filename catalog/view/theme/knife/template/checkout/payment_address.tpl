<?php if ($addresses) { ?>
<form class="form-vertical">
	<div class="wrap-radio">
	  <input type="radio" name="payment_address" value="existing" id="payment-address-existing" checked="checked" />
	  <label for="payment-address-existing" class="radio"><span><span></span></span><?php echo $text_address_existing; ?></label>
	</div>
	<div id="payment-existing">
	<select class="form-control" name="address_id" style="width: 100%; margin-bottom: 15px;" size="5">
		<?php foreach ($addresses as $address) { ?>
		<?php if ($address['address_id'] == $address_id) { ?>
		<option value="<?php echo $address['address_id']; ?>" selected="selected"><?php echo $address['firstname']; ?> <?php echo $address['lastname']; ?>, <?php echo $address['address_1']; ?>, <?php echo $address['city']; ?>, <?php echo $address['zone']; ?>, <?php echo $address['country']; ?></option>
		<?php } else { ?>
		<option value="<?php echo $address['address_id']; ?>"><?php echo $address['firstname']; ?> <?php echo $address['lastname']; ?>, <?php echo $address['address_1']; ?>, <?php echo $address['city']; ?>, <?php echo $address['zone']; ?>, <?php echo $address['country']; ?></option>
		<?php } ?>
		<?php } ?>
	</select>
	</div>
	<div class="wrap-radio">
		<input type="radio" name="payment_address" value="new" id="payment-address-new" />
		<label for="payment-address-new" class="radio"><span><span></span></span><?php echo $text_address_new; ?></label>
	</div>
</form>
<?php } ?>
<div id="payment-new" class="member-main-content "style="display: <?php echo ($addresses ? 'none' : 'block'); ?>;">
	<div class="col-left">
		<div class="form-group">
			<label for="inputFirstName"><?php echo $entry_firstname; ?> <span class="force">*</span></label>			
			<input type="text" name="firstname" value="" class="form-control" >
		</div>
		<div class="form-group">
			<label for="inputLastName"><?php echo $entry_lastname; ?><span class="force">*</span></label>
			<input type="text" name="lastname" value="" class="form-control" >
		</div>
		<div class="form-group">
			<label for="inputEmail"><?php echo $entry_address_1; ?><span class="force">*</span></label>
			<input type="text" name="address_1" value="" class="form-control" >
		</div>
		<div class="form-group">
			<label for="inputEmail"><?php echo $entry_address_2; ?><span class="force">*</span></label>
			<input type="text" name="address_2" value="" class="form-control" >
		</div>
		<div class="form-group">
			<label for="inputEmail"><?php echo $entry_company; ?><span class="force">*</span></label>
			<input type="text" name="company" value="" class="form-control" >
		</div>
		<div class="form-group">
			<label for="inputEmail"><?php echo $entry_city; ?><span class="force">*</span></label>
			<input type="text" name="city" value="" class="form-control" >
		</div>
		<div class="form-group">
			<label for="inputEmail"><?php echo $entry_postcode; ?><span class="force">*</span></label>
			<input type="text" name="postcode" value="" class="form-control" >
		</div>
		<div class="form-group">
			<label for="inputEmail"><?php echo $entry_country; ?><span class="force">*</span></label>
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
			<label for="inputEmail"><?php echo $entry_zone; ?><span class="force">*</span></label>
			<select name="zone_id" class="form-control">
			</select>
		</div>		
	</div>
</div>
<a type="button" id="button-payment-address" class="btn pull-right"><?php echo $button_continue; ?></a>
<div class="clearfix"></div>
<script type="text/javascript"><!--
$('.step2 input[name=\'payment_address\']').live('change', function() {
	if (this.value == 'new') {
		$('#payment-existing').hide();
		$('#payment-new').show();
	} else {
		$('#payment-existing').show();
		$('#payment-new').hide();
	}
});
//--></script> 
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