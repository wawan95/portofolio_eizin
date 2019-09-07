<?php

$validation_errors = validation_errors();

if ($validation_errors) :
?>
<div class="alert alert-block alert-error fade in">
	<a class="close" data-dismiss="alert">&times;</a>
	<h4 class="alert-heading">Terdapat error: </h4>
	<?php echo $validation_errors; ?>
</div>
<?php
endif;

if (isset($jenis_izin))
{
	$jenis_izin = (array) $jenis_izin;
}
$id = isset($jenis_izin['id']) ? $jenis_izin['id'] : '';

?>

<div class="col-lg-12 col-md-12">
	<?php echo form_open($this->uri->uri_string(), 'class="form-horizontal"'); ?>
		<fieldset>

			<div class="form-group <?php echo form_error('izin_jenis') ? 'error' : ''; ?>">
				<?php echo form_label('Jenis Izin', 'jenis_izin_izin_jenis', array('class' => 'control-label col-md-2 col-md-2') ); ?>
				<div class='col-md-10'>
					<input id='jenis_izin_izin_jenis' type='text' name='jenis_izin_izin_jenis' class='col-md-10 form-control' maxlength="100" value="<?php echo set_value('jenis_izin_izin_jenis', isset($jenis_izin['izin_jenis']) ? $jenis_izin['izin_jenis'] : ''); ?>" />
					<span class='help-inline'><?php echo form_error('izin_jenis'); ?></span>
				</div>
			</div>

			<div class="col-md-10 col-md-offset-2">
				<input type="submit" name="save" class="btn btn-primary" value="<?php echo lang('jenis_izin_action_create'); ?>"  />
				atau
				<?php echo anchor(SITE_AREA .'/master/jenis_izin', lang('jenis_izin_cancel'), 'class="btn btn-warning"'); ?>
				
			</div>
		</fieldset>
    <?php echo form_close(); ?>
</div>