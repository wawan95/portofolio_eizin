<?//php//	Assets::add_js( array( 'bootstrap.min.js', 'jwerty.js'), 'external', true);?>
<?php	Assets::add_js( array(''), 'external', true);?>
<?php echo theme_view('partials/_header'); ?>

<div class="content-wrapper" style="min-height: 798px;">
	<section class="content-header">
	  <h1>
		<?php if (isset($toolbar_title)) :
			echo $toolbar_title ;
			endif; ?>
	  </h1>
	  <ol class="breadcrumb">
		<?php
			$uri = $this->uri->uri_string();
			$aUri = explode("/", $uri);
			foreach($aUri as $key=>$val):
				$val = str_replace("_", " ", $val); 
				$val = ($val=="admin")?"<li class='active'><i class='fa fa-dashboard fa-fw'></i> Dashboard</li>":"<li class='active'>".ucfirst($val)."</li>";
			?>
			<?=$val?>
			<?php   
			endforeach;
		?>
	  </ol>
	</section>
	<section class="content-header">
		<?php Template::block('sub_nav', ''); ?>
	</section>
	<!-- Main Content -->
	<section class="content">
            <div class="row">
	        <?php echo Template::message(); ?>
	        <?php echo isset($content) ? $content : Template::content(); ?>
			</div>
	</section>
</div><!-- end content-wrapper -->

<?php echo theme_view('partials/_footer'); ?>
