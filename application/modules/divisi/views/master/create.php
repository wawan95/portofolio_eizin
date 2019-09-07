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

if (isset($divisi))
{
	$divisi = (array) $divisi;
}
$id = isset($divisi['id_divisi']) ? $divisi['id_divisi'] : '';

?>

<div class="col-lg-12 col-md-12">
	<?php echo form_open($this->uri->uri_string(), 'class="form-horizontal"'); ?>
		<fieldset>

			<div class="form-group <?php echo form_error('nama_divisi') ? 'error' : ''; ?>">
				<?php echo form_label('Divisi', 'divisi_nama_divisi', array('class' => 'control-label col-md-2 col-md-2') ); ?>
				<div class='col-md-10'>
					<input id='divisi_nama_divisi' type='text' name='divisi_nama_divisi' class='col-md-10 form-control' maxlength="100" value="<?php echo set_value('divisi_nama_divisi', isset($divisi['nama_divisi']) ? $divisi['nama_divisi'] : ''); ?>" />
					<span class='help-inline'><?php echo form_error('nama_divisi'); ?></span>
				</div>
			</div>

			<div class="col-md-10 col-md-offset-2">
				<input type="submit" name="save" class="btn btn-primary" value="<?php echo lang('divisi_action_create'); ?>"  />
				atau
				<?php echo anchor(SITE_AREA .'/master/divisi', lang('divisi_cancel'), 'class="btn btn-warning"'); ?>
				
			</div>
		</fieldset>
    <?php echo form_close(); ?>
</div>