<?=theme_view('header'); ?>

<div class="row-fluid">
    <div class="span12">
        
        <div class="pull-right" id="sub-menu">
                    <?php Template::block('sub_nav', ''); ?>
            </div>
        
        
		<?php echo Template::message(); ?>
		<?php echo isset($content) ? $content : Template::content(); ?>
		
    </div>
    <?php
        //echo '<pre>';
        //print_r($this->session->all_userdata());
        //echo '</pre>';
    ?>
    <!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<?=theme_view('footer'); ?>
