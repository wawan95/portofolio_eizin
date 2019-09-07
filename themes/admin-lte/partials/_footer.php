<footer class="main-footer">
<!--         <div class="pull-right hidden-xs">
		  Executed in {elapsed_time} seconds, using {memory_usage}.
			Powered by <a href="http://cibonfire.com" target="_blank"><i class="icon-fire">&nbsp;</i>&nbsp;Bonfire</a> <?php echo BONFIRE_VERSION ?>
        </div> -->
        <strong>Copyright &copy; 2016 <a href="http://dinustech.com" target="_blank">Dinustek</a></strong>
      </footer>
<?php echo theme_view('partials/_sidebar'); ?>

</div><!-- ./wrapper -->

	<div id="debug"><!-- Stores the Profiler Results --></div>

  <!-- Grab Google CDN's jQuery, with a protocol relative URL; fall back to local if offline -->
  <!--<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>-->
  <script src="<?php echo Template::theme_url('editors/ckeditor/ckeditor.js'); ?>"></script>
  <script src="<?php echo Template::theme_url('editors/ckeditor/adapters/jquery.js'); ?>"></script>

<script src="<?php echo Template::theme_url('js/app.js'); ?>" type="text/javascript"></script>
      <?php echo Assets::js(); ?>  
<script src="<?php echo Template::theme_url('js/demo.js'); ?>" type="text/javascript"></script>
</body>
</html>
