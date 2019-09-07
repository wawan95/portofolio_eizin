<?php

$validation_errors = validation_errors();
$errorClass = ' error';
$controlClass = 'form-control';
$fieldData = array(
    'errorClass'    => $errorClass,
    'controlClass'  => $controlClass,
);

?>
<style>
p.already-registered {
    text-align: center;
}
</style>
<div class="col-md-12">
<section id="register">
    <h1 class="page-header"><?php echo lang('us_sign_up'); ?></h1>
    <?php if ($validation_errors) : ?>
	<div class="alert alert-error fade in">
		<?php echo $validation_errors; ?>
	</div>
    <?php endif; ?>
    <div class="alert alert-info fade in">
        <h4 class="alert-heading"><?php echo lang('bf_required_note'); ?></h4>
        <?php if (isset($password_hints)) { echo $password_hints; } ?>
    </div>
    <div class="row-fluid">
        <div class="co-md-12">
            <?php echo form_open( site_url(REGISTER_URL), array('class' => "form-horizontal", 'autocomplete' => 'off')); ?>
				<?php Template::block('user_fields', 'user_fields', $fieldData); ?>
                <?php
                // Allow modules to render custom fields
                Events::trigger('render_user_form');
                ?>
                <!-- Start of User Meta -->
                <?php $this->load->view('users/user_meta', array('frontend_only' => true)); ?>
                <!-- End of User Meta -->
                <div class="form-group">
                    <div class="col-md-10">
                        <input class="btn btn-primary" type="submit" name="register" id="submit" value="<?php echo lang('us_register'); ?>"  />
                    </div>
                </div>
            <?php echo form_close(); ?>
            <p class='already-registered'>
                <?php echo lang('us_already_registered'); ?>
                <?php echo anchor(LOGIN_URL, lang('bf_action_login')); ?>
            </p>
        </div>
    </div>
</section>
</div>