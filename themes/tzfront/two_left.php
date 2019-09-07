<?=theme_view('header'); ?>

<div class="container-fluid body">

	<div class="row-fluid">
		<div class="span2">
			<?php echo Template::block('sidebar'); ?>
		</div>

		<div class="span10">
			<?php echo Template::message(); ?>

			<?php echo isset($content) ? $content : Template::content(); ?>

		</div>
	</div>

</div>

<?=theme_view('footer'); ?>