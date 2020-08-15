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
					<div class="member-main-content col-md-9">
						<h2 class="title-lg"><?php echo $heading_title; ?></h2>
						<table class="table">
							<p><?php echo $text_total; ?><b><?php echo $total; ?></b></p>
							<thead>
								<tr>
									<th><?php echo $column_date_added; ?></th>
									<th><?php echo $column_description; ?></th>
									<th><?php echo $column_amount; ?></th>
								</tr>
							</thead>
							<tbody>
							<?php if ($transactions) { ?>
							<?php foreach ($transactions  as $transaction) { ?>
							<tr>
							<td class="left"><?php echo $transaction['date_added']; ?></td>
							<td class="left"><?php echo $transaction['description']; ?></td>
							<td class="right"><?php echo $transaction['amount']; ?></td>
							<?php } ?>
							<?php } else { ?>
							<tr>
							<td class="center" colspan="3"><?php echo $text_empty; ?></td>
							</tr>
							<?php } ?>
							</tbody>
						</table>											
						<div class="pagination"><?php echo $pagination; ?></div>
						<p class="text-right"><a href="<?php echo $continue; ?>" class="btn">Tiếp tục</a></p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>     
<?php echo $footer; ?>