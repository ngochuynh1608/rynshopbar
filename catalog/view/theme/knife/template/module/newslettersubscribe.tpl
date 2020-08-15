<div class="box box-reg-mail">
	<h2 class="title ttu pro"><i class="icon-ib icon-mailbox"></i><span>Đăng ký nhận mail</span></h2>
	<p class="note">Nhập email đăng ký.</p>
      <div id="frm_subscribe">
          <form name="subscribe" id="subscribe" class="for">
              <table border="0" cellpadding="2" cellspacing="2">
                   <tr>
                     <td><input type="text" value="" name="subscribe_email" id="subscribe_email" class="form-control" placeholder="Nhập email đăng ký"></td>
                   </tr>
                   <tr>
                     <td align="center">
                        <a class="btn" onclick="email_subscribe()"><span>Đăng ký</span></a>                          
                     </td>
                   </tr>
                   
              </table>
          </form>
      </div><!-- /#frm_subscribe -->
  <div class="bottom">&nbsp;</div>
 <style>
#frm_subscribe a.btn{
 cursor:pointer;
 }
 </style>
<script language="javascript">
function email_subscribe(){
	$.ajax({
			type: 'post',
			url: 'index.php?route=module/newslettersubscribe/subscribe',
			dataType: 'html',
            data:$("#subscribe").serialize(),
			success: function (html) {
				eval(html);
			}}); 
	
	$('html, body').delay( 1500 ).animate({ scrollTop: 0 }, 'slow'); 
	
}
function email_unsubscribe(){
	$.ajax({
			type: 'post',
			url: 'index.php?route=module/newslettersubscribe/unsubscribe',
			dataType: 'html',
            data:$("#subscribe").serialize(),
			success: function (html) {
				eval(html);
			}}); 
	
	$('html, body').delay( 1500 ).animate({ scrollTop: 0 }, 'slow'); 
	
}
</script>
</div><!-- /.box -->
