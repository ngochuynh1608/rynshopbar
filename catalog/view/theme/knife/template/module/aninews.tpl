<div id="ani_content">
    <div id="ani_container">    
	    <div id="ani_container_head">
	        <div class="ani_news_h1"><?php echo $text_array['ani_heading']; ?></div>       
            <div class="ani_news_close" id="aninews_close">
                <?php echo $text_array['ani_close_link_text']; ?>
            </div>
        </div>
        </div>
        <div class="ani_newsblock">
        <div style="padding:0 0 5px 2px;color:<?php echo $style_array['ani_label_text_color']; ?>;"><?php echo $text_array['ani_label_title']; ?></div>
        <div><input type="text" name="aninews_email" id="aninews_email" value="" class="large-field" placeholder="<?php echo $text_array['ani_placeholder_text']; ?>" /></div>
        <div id="aninews_error"></div>
        <div style="padding:10px 0 5px 2px;"><buton class="newsform-btn-field" id="save_email_for_aninews"><?php echo $text_array['ani_button_text']; ?></buton></div>
        </div>
    </div>
</div>

<style type="text/css">

.ani_news_h1{
	float:left;
	color:<?php echo $style_array['ani_label_text_color']; ?>;
}


#ani_container{
	overflow:auto;
	text-align:left;
}

#ani_container_head{
	overflow:auto;
}

#ani_content{
	position:fixed;
	bottom:-1500px;
	right:10px;
	padding:15px;
	text-align:center;
	background-color:<?php echo $style_array['ani_background_color']; ?>;
	border: 1px solid <?php echo $style_array['ani_main_border_color']; ?>;
	-webkit-box-shadow: 0px 2px 2px <?php echo $style_array['ani_main_boxshadow_color']; ?>;
	border-radius:5px;
}

#ani_container{
	text-align:left;
}

.ani_news_close{
	float:right;
	padding-top:2px;
	font-weight:bold;
	cursor:pointer;
	color:<?php echo $style_array['ani_close_link_color']; ?>;
}




.ani_news_close:hover{
	color:<?php echo $style_array['ani_close_link_hover_color']; ?>;
}

.newsform-btn-field{
	background-color: <?php echo $style_array['ani_button_background_color']; ?>;
	display:inline-block;
	text-decoration: none;
	font-size: 12px;
	padding: 0 25px;
	line-height: 30px;
	height: 30px;
	border-radius: 3px;
	border: none;
	color: white;
	cursor:pointer;
}

.newsform-btn-field:hover{
	background-color: <?php echo $style_array['ani_button_background_hover_color']; ?>;
}

.ani_news_h1{
	font-family: 'Roboto Condensed', Arial, Helvetica, sans-serif;
	margin-top: 0px;
	margin-bottom: 5px;
	font-size: 30px;
	font-weight: normal;
}

.ani_newsblock{
	padding:5px;
	margin:5px;
	float:left;
	font-family:sans-serif;
	font-size:14px;
	min-width:40%;
	text-align:left;
}

input.large-field[type="text"]{
	min-width:40%;
	padding:5px;
}
</style>

<script type="text/javascript">
$(document).ready(function() {	
	$("#ani_content").animate({
		bottom: 10,
		right: 10
		},1500,function(){ 
		//alert("ADONE"); 
	});
	
	$("#save_email_for_aninews").click(function(){
		if($("#aninews_email").val() == ""){
			$("#aninews_error").html("<span style='color:#fff;font-size:12px;'>Please Fill The Email</span>");
			$("#aninews_email").css("border","1px solid #999");			
		}else{
			$.ajax({
				url: 'index.php?route=module/aninews/saveEmail',
				data: 'email_id=' + $("#aninews_email").val(),				
				dataType: 'json',
				success: function(json) {
					if("success"){
						$("#aninews_error").html("<span style='color:#fff;font-size:12px;'>Your are subscribed for the email newsletters</span>");
					}else{
						$("#aninews_error").html("<span style='color:#fff;font-size:12px;'>There was some problem in subscribing please try after sometime.</span>");
					}
					//$("#aninews").html(html);
				},
				error: function(xhr, ajaxOptions, thrownError) {
					//alert("Not Loaded");
					alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});		
		}
	});
	
	$("#aninews_close").click(function(){
		$("#ani_content").animate({
			bottom: -1500,
			right: 10
			},5000,function(){ 
			//alert("ADONE"); 
		});
	});
	
});
</script>