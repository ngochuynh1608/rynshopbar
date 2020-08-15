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
					  <h2 class="title-lg"><?php echo $text_edit_address; ?></h2>					  
					  <form action="<?php echo $action; ?>" class="form form-vertical form-change-pass" method="post" enctype="multipart/form-data">
						<div class="col-left">
						  <div class="form-group">
							<label for="inputFirstName"><?php echo $entry_firstname; ?><span class="force">*<?php if ($error_firstname) { ?>
							  <span class="error"><?php echo $error_firstname; ?></span>
							  <?php } ?></span></label>
							<input type="text"  name="firstname" value="<?php echo $firstname; ?>" class="form-control" id="inputFirstName">
						  </div>
						  <div class="form-group">
							<label for="inputLastName"><?php echo $entry_lastname; ?><span class="force">*<?php if ($error_lastname) { ?>
							<span class="error"><?php echo $error_lastname; ?></span>
							<?php } ?></span></label>
							<input type="text" name="lastname" value="<?php echo $lastname; ?>" class="form-control" id="inputLastName">
						  </div>
						  <div class="form-group">
							<label for="inputLastName"><?php echo $entry_company; ?><span class="force">*</span></label>
							<input type="text" name="company" value="<?php echo $company; ?>" class="form-control" id="inputLastName">
						  </div>
						  <div class="form-group">
							<label for="inputLastName"><?php echo $entry_address_1; ?><span class="force">*<?php if ($error_address_1) { ?>
							<span class="error"><?php echo $error_address_1; ?></span>
							<?php } ?></span></label>
							<input type="text" name="address_1" value="<?php echo $address_1; ?>" class="form-control" id="inputLastName">
						  </div>
						  <div class="form-group">
							<label for="inputLastName"><?php echo $entry_city; ?><span class="force">*  <?php if ($error_city) { ?>
							<span class="error"><?php echo $error_city; ?></span>
							<?php } ?></span></label>
							<input type="text" name="city" value="<?php echo $city; ?>" class="form-control" id="inputLastName">
						  </div>						 
						  <div class="form-group">
							<label for="inputLastName"><?php echo $entry_country; ?><span class="force">*</span></label>
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
						  <?php if ($error_country) { ?>
						  <span class="error"><?php echo $error_country; ?></span>
						  <?php } ?>
						  </div>
						  <div class="form-group">
							<label for="inputLastName"><?php echo $entry_zone; ?><span class="force">*</span></label>
							<select name="zone_id">
							</select>
							<?php if ($error_zone) { ?>
							<span class="error"><?php echo $error_zone; ?></span>
							<?php } ?>
						  </div>
							<div class="form-group">
							<label for="inputLastName"><?php echo $entry_default; ?><span class="force">*</span></label>
							<?php if ($default) { ?>
							<div class="wrap-radio">
							  <input id="inputYes" name="default" type="radio" name="radio" value="1" checked="checked">
							  <label for="inputYes" class="radio"><span><span></span></span>Có</label>
							</div>
							<div class="wrap-radio">
							  <input id="inputNo" name="default" type="radio" name="radio" value="0">
							  <label for="inputNo" class="radio"><span><span></span></span>Không</label>
							</div>
							<?php } else { ?>
							<div class="wrap-radio">
							  <input id="inputYes" name="default" type="radio" name="radio" value="1" >
							  <label for="inputYes" class="radio"><span><span></span></span>Có</label>
							</div>
							<div class="wrap-radio">
							  <input id="inputNo" name="default" type="radio" name="radio" value="0" checked="checked">
							  <label for="inputNo" class="radio"><span><span></span></span>Không</label>
							</div>
							<?php } ?>	
							</div>
						</div>
						<div class="clearfix"></div>
						<a href="<?php echo $back; ?>" class="btn btn-back"><?php echo $button_back; ?></a>
						<button type="submit" class="btn btn-continue"><?php echo $button_continue; ?></button>
					  </form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript"><!--

$('select[name=\'country_id\']').bind('change', function() {

  $.ajax({

    url: 'index.php?route=account/address/country&country_id=' + this.value,

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