<?php
Assets::add_js(array(
                    Template::theme_url('js/bootstrap.min.js'),
                    Template::theme_url('js/jwerty.js')
               ),
               'external',
               true
);
?>
<?php echo theme_view('partials/_header'); ?>

<!--<div class="container-fluid body"> -->
<div class="content-wrapper">
<div class="row">
	<div class="col-lg-12 col-md-6">
		<?php echo Template::block('sidebar'); ?>
	</div>
</div>
		<?php echo Template::message(); ?>
		<?php echo isset($content) ? $content : Template::content(); ?>

</div>
<?php echo theme_view('partials/_footer'); ?>