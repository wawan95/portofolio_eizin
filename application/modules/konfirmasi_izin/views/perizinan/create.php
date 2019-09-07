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

if (isset($konfirmasi_izin))
{
	$konfirmasi_izin = (array) $konfirmasi_izin;
}
$id = isset($konfirmasi_izin['id']) ? $konfirmasi_izin['id'] : '';

?>

<div class="col-lg-12 col-md-12">
	<?php echo form_open($this->uri->uri_string(), 'class="form-horizontal"'); ?>
		<fieldset>

			<div class="form-group <?php echo form_error('izin_nama') ? 'error' : ''; ?>">
				<?php echo form_label('Nama', 'konfirmasi_izin_izin_nama', array('class' => 'control-label col-md-2 col-md-2') ); ?>
				<div class='col-md-10'>
					<input id='konfirmasi_izin_izin_nama' type='text' name='konfirmasi_izin_izin_nama' class='col-md-10 form-control' maxlength="50" value="<?php echo set_value('konfirmasi_izin_izin_nama', isset($konfirmasi_izin['izin_nama']) ? $konfirmasi_izin['izin_nama'] : ''); ?>" />
					<span class='help-inline'><?php echo form_error('izin_nama'); ?></span>
				</div>
			</div>

			<!-- <div class="form-group <#?php echo form_error('izin_divisi') ? 'error' : ''; ?>">
				<#?php echo form_label('Divisi', 'konfirmasi_izin_izin_divisi', array('class' => 'control-label col-md-2 col-md-2') ); ?>
				<div class='col-md-10'>
					<input id='konfirmasi_izin_izin_divisi' type='text' name='konfirmasi_izin_izin_divisi' class='col-md-10 form-control' maxlength="50" value="<#?php echo set_value('konfirmasi_izin_izin_divisi', isset($konfirmasi_izin['izin_divisi']) ? $konfirmasi_izin['izin_divisi'] : ''); ?>" />
					<span class='help-inline'><#?php echo form_error('izin_divisi'); ?></span>
				</div>
			</div>
 -->
			<div class="form-group <?php echo form_error('input_izin_jenis') ? 'error' : ''; ?>">
				<?php echo form_label('Jenis Izin', 'konfirmasi_izin_input_izin_jenis', array('class' => 'control-label col-md-2 col-md-2') ); ?>
				<div class='col-md-10'>
					<input id='konfirmasi_izin_input_izin_jenis' type='text' name='konfirmasi_izin_input_izin_jenis' class='col-md-10 form-control' maxlength="40" value="<?php echo set_value('konfirmasi_izin_input_izin_jenis', isset($konfirmasi_izin['input_izin_jenis']) ? $konfirmasi_izin['input_izin_jenis'] : ''); ?>" />
					<span class='help-inline'><?php echo form_error('input_izin_jenis'); ?></span>
				</div>
			</div>

			<div class="form-group <?php echo form_error('tgl_m') ? 'error' : ''; ?>">
				<?php echo form_label('Tanggal Mulai', 'konfirmasi_izin_tgl_m', array('class' => 'control-label col-md-2 col-md-2') ); ?>
				<div class='col-md-10'>
					<input id='konfirmasi_izin_tgl_m' type='text' name='konfirmasi_izin_tgl_m' class='col-md-10 form-control' maxlength="1" value="<?php echo set_value('konfirmasi_izin_tgl_m', isset($konfirmasi_izin['tgl_m']) ? $konfirmasi_izin['tgl_m'] : ''); ?>" />
					<span class='help-inline'><?php echo form_error('tgl_m'); ?></span>
				</div>
			</div>

			<div class="form-group <?php echo form_error('tgl_s') ? 'error' : ''; ?>">
				<?php echo form_label('Taggal Selesai', 'konfirmasi_izin_tgl_s', array('class' => 'control-label col-md-2 col-md-2') ); ?>
				<div class='col-md-10'>
					<input id='konfirmasi_izin_tgl_s' type='text' name='konfirmasi_izin_tgl_s' class='col-md-10 form-control' maxlength="1" value="<?php echo set_value('konfirmasi_izin_tgl_s', isset($konfirmasi_izin['tgl_s']) ? $konfirmasi_izin['tgl_s'] : ''); ?>" />
					<span class='help-inline'><?php echo form_error('tgl_s'); ?></span>
				</div>
			</div>

			<div class="form-group <?php echo form_error('izin_waktu_m') ? 'error' : ''; ?>">
				<?php echo form_label('Waktu Mulai', 'konfirmasi_izin_izin_waktu_m', array('class' => 'control-label col-md-2 col-md-2') ); ?>
				<div class='col-md-10'>
					<input id='konfirmasi_izin_izin_waktu_m' type='text' name='konfirmasi_izin_izin_waktu_m' class='col-md-10 form-control' maxlength="1" value="<?php echo set_value('konfirmasi_izin_izin_waktu_m', isset($konfirmasi_izin['izin_waktu_m']) ? $konfirmasi_izin['izin_waktu_m'] : ''); ?>" />
					<span class='help-inline'><?php echo form_error('izin_waktu_m'); ?></span>
				</div>
			</div>

			<div class="form-group <?php echo form_error('izin_waktu_s') ? 'error' : ''; ?>">
				<?php echo form_label('Waktu Selesai', 'konfirmasi_izin_izin_waktu_s', array('class' => 'control-label col-md-2 col-md-2') ); ?>
				<div class='col-md-10'>
					<input id='konfirmasi_izin_izin_waktu_s' type='text' name='konfirmasi_izin_izin_waktu_s' class='col-md-10 form-control' maxlength="1" value="<?php echo set_value('konfirmasi_izin_izin_waktu_s', isset($konfirmasi_izin['izin_waktu_s']) ? $konfirmasi_izin['izin_waktu_s'] : ''); ?>" />
					<span class='help-inline'><?php echo form_error('izin_waktu_s'); ?></span>
				</div>
			</div>

			<div class="form-group <?php echo form_error('izin_status') ? 'error' : ''; ?>">
				<?php echo form_label('Status Izin', 'konfirmasi_izin_izin_status', array('class' => 'control-label col-md-2 col-md-2') ); ?>
				<div class='col-md-10'>
					<label class='checkbox' for='konfirmasi_izin_izin_status'>
						<input type='checkbox' id='konfirmasi_izin_izin_status' name='konfirmasi_izin_izin_status' value='1' <?php echo (isset($konfirmasi_izin['izin_status']) && $konfirmasi_izin['izin_status'] == 1) ? 'checked="checked"' : set_checkbox('konfirmasi_izin_izin_status', 1); ?>>
						<span class='help-inline'><?php echo form_error('izin_status'); ?></span>
					</label>
				</div>
			</div>

			<div class="col-md-10 col-md-offset-2">
				<input type="submit" name="save" class="btn btn-primary" value="<?php echo lang('konfirmasi_izin_action_create'); ?>"  />
				atau
				<?php echo anchor(SITE_AREA .'/perizinan/konfirmasi_izin', lang('konfirmasi_izin_cancel'), 'class="btn btn-warning"'); ?>
				
			</div>
		</fieldset>
    <?php echo form_close(); ?>
</div>