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

if (isset($pegawai))
{
	$pegawai = (array) $pegawai;
}
$id = isset($pegawai['pg_id']) ? $pegawai['pg_id'] : '';

?>

<div class="col-lg-12 col-md-12">
	<?php echo form_open_multipart('pegawai/edit/'.$id,'class="form-horizontal"',array('method' => 'post' ));?>
		<fieldset>

			<div class="form-group <?php echo form_error('pg_nama') ? 'error' : ''; ?>">
				<?php echo form_label('Nama Pegawai', 'pegawai_pg_nama', array('class' => 'control-label col-md-2 col-md-2') ); ?>
				<div class='col-md-10'>
					<input id='pegawai_pg_nama' type='text' name='pegawai_pg_nama' class='col-md-10 form-control' maxlength="50" value="<?php echo set_value('pegawai_pg_nama', isset($pegawai['pg_nama']) ? $pegawai['pg_nama'] : ''); ?>" />
					<span class='help-inline'><?php echo form_error('pg_nama'); ?></span>
				</div>
			</div>

			<div class="form-group <?php echo form_error('pg_divisi') ? 'error' : ''; ?>">
				<?php echo form_label('Divisi', 'pegawai_pg_divisi', array('class' => 'control-label col-md-2 col-md-2') ); ?>
				<div class='col-md-10'>
					<?php echo $this->pegawai_model->editDivisi('pegawai_pg_divisi', $pegawai['pg_divisi']);?>
				</div>
			</div>

			<div class="form-group <?php echo form_error('pg_alamat') ? 'error' : ''; ?>">
				<?php echo form_label('Alamat', 'pegawai_pg_alamat', array('class' => 'col-md-2 control-label col-md-2') ); ?>
				<div class='col-md-10'>
					<?php echo form_textarea( array( 'name' => 'pegawai_pg_alamat', 'id' => 'pegawai_pg_alamat', 'class'=>'form-control', 'rows' => '5', 'cols' => '80', 'value' => set_value('pegawai_pg_alamat', isset($pegawai['pg_alamat']) ? $pegawai['pg_alamat'] : '') ) ); ?>
					<span class='help-inline'><?php echo form_error('pg_alamat'); ?></span>
				</div>
			</div>

			<div class="form-group <?php echo form_error('pg_telefon') ? 'error' : ''; ?>">
				<?php echo form_label('Nomer Telephone', 'pegawai_pg_telefon', array('class' => 'control-label col-md-2 col-md-2') ); ?>
				<div class='col-md-10'>
					<input id='pegawai_pg_telefon' type='text' name='pegawai_pg_telefon' class='col-md-10 form-control' maxlength="15" value="<?php echo set_value('pegawai_pg_telefon', isset($pegawai['pg_telefon']) ? $pegawai['pg_telefon'] : ''); ?>" />
					<span class='help-inline'><?php echo form_error('pg_telefon'); ?></span>
				</div>
			</div>

			<div class="form-group <?php echo form_error('pg_foto') ? 'error' : ''; ?>">
				<?php echo form_label('Foto', 'pegawai_pg_foto', array('class' => 'control-label col-md-2 col-md-2') ); ?>
				<div class='col-md-10'>
					<input id='pegawai_pg_foto' type='file' name='pegawai_pg_foto' maxlength="100" value="<?php echo set_value('pegawai_pg_foto', isset($pegawai['pg_foto']) ? $pegawai['pg_foto'] : ''); ?>" />
					<span class='help-inline'><?php echo form_error('pg_foto'); ?></span>
				</div>
			</div>

			<div class="col-md-10 col-md-offset-2">
				<input type="submit" name="save" class="btn btn-primary" value="<?php echo lang('pegawai_action_edit'); ?>"  />
				
				<?php echo anchor(SITE_AREA .'/master/pegawai', lang('pegawai_cancel'), 'class="btn btn-warning"'); ?>
			</div>
		</fieldset>
    <?php echo form_close(); ?>
</div>