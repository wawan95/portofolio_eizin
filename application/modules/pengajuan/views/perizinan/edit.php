<script src="<?php echo base_url();?>assets/js/input_izin.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="<?php echo base_url();?>assets/css/input_izin.css">

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

if (isset($pengajuan))
{
	$pengajuan = (array) $pengajuan;
}
$id = isset($pengajuan['id']) ? $pengajuan['id'] : '';

?>

<div class="col-lg-12 col-md-12">
	<?php echo form_open($this->uri->uri_string(), 'class="form-horizontal"'); ?>
		<fieldset>

			<div class="form-group <?php echo form_error('izin_nama') ? 'error' : ''; ?>">
				<?php echo form_label('Nama', 'pengajuan_izin_nama', array('class' => 'control-label col-md-2 col-md-2') ); ?>
				<div class='col-md-10'>
					<input id='pengajuan_izin_nama' type='text' name='pengajuan_izin_nama' class='col-md-10 form-control' maxlength="50" value="<?php echo set_value('pengajuan_izin_nama', isset($pengajuan['izin_nama']) ? $pengajuan['izin_nama'] : ''); ?>" />
					<span class='help-inline'><?php echo form_error('izin_nama'); ?></span>
				</div>
			</div>


			<div class="form-group <?php echo form_error('input_izin_jenis') ? 'error' : ''; ?>">
				<?php echo form_label('Jenis Izin', 'pengajuan_input_izin_jenis', array('class' => 'control-label col-md-2 col-md-2') ); ?>
				<div class='col-md-10'>
					<!-- <input id='pengajuan_input_izin_jenis' type='text' name='pengajuan_input_izin_jenis' class='col-md-10 form-control' maxlength="40" value="<#?php echo set_value('pengajuan_input_izin_jenis', isset($pengajuan['input_izin_jenis']) ? $pengajuan['input_izin_jenis'] : ''); ?>" /> -->
					<?php echo form_error('input_izin_jenis'), $this->pengajuan_model->ListJenis_Izin('pengajuan_input_izin_jenis',$pengajuan['input_izin_jenis']);?>
					<span class='help-inline'><?php echo form_error('input_izin_jenis'); ?></span>
				</div>
			</div>

			<div class="form-group <?php echo form_error('tgl_m') ? 'error' : ''; ?>">
				<?php echo form_label('Tanggal Mulai', 'pengajuan_tgl_m', array('class' => 'control-label col-md-2 col-md-2') ); ?>
				<div class='col-md-10'>
					<input id='pengajuan_tgl_m' type='text' name='pengajuan_tgl_m' class='col-md-10 form-control'  value="<?php echo set_value('pengajuan_tgl_m', isset($pengajuan['tgl_m']) ? $pengajuan['tgl_m'] : ''); ?>" />
					<span class='help-inline'><?php echo form_error('tgl_m'); ?></span>
				</div>
			</div>

			<div class="form-group <?php echo form_error('tgl_s') ? 'error' : ''; ?>">
				<?php echo form_label('Tanggal Selesai', 'pengajuan_tgl_s', array('class' => 'control-label col-md-2 col-md-2') ); ?>
				<div class='col-md-10'>
					<input id='pengajuan_tgl_s' type='text' name='pengajuan_tgl_s' class='col-md-10 form-control'  value="<?php echo set_value('pengajuan_tgl_s', isset($pengajuan['tgl_s']) ? $pengajuan['tgl_s'] : ''); ?>" />
					<span class='help-inline'><?php echo form_error('tgl_s'); ?></span>
				</div>
			</div>

			<div class="form-group <?php echo form_error('izin_waktu_m') ? 'error' : ''; ?>">
				<?php echo form_label('Waktu Mulai', 'pengajuan_izin_waktu_m', array('class' => 'control-label col-md-2 col-md-2') ); ?>
				<div class='col-md-10'>
				<div id="time-range">
					  <p>Time Range: <span class="slider-time">-:- </span> - <span class="slider-time2">-:- </span></p>
					  <div class="sliders_step1">
					    <div id="slider-range"></div>
					  </div>
					</div>
					<input id='pengajuan_izin_waktu_m' type='text' name='pengajuan_izin_waktu_m' class='col-md-10 form-control'  value="<?php echo set_value('pengajuan_izin_waktu_m', isset($pengajuan['izin_waktu_m']) ? $pengajuan['izin_waktu_m'] : ''); ?>" />
					<span class='help-inline'><?php echo form_error('izin_waktu_m'); ?></span>
				</div>
			</div>

			<div class="form-group <?php echo form_error('izin_waktu_s') ? 'error' : ''; ?>">
				<?php echo form_label('Waktu Selesai', 'pengajuan_izin_waktu_s', array('class' => 'control-label col-md-2 col-md-2') ); ?>
				<div class='col-md-10'>
					<input id='pengajuan_izin_waktu_s' type='text' name='pengajuan_izin_waktu_s' class='col-md-10 form-control'  value="<?php echo set_value('pengajuan_izin_waktu_s', isset($pengajuan['izin_waktu_s']) ? $pengajuan['izin_waktu_s'] : ''); ?>" />
					<span class='help-inline'><?php echo form_error('izin_waktu_s'); ?></span>
				</div>
			</div>

<!-- 			<div class="form-group <#?php echo form_error('izin_status') ? 'error' : ''; ?>">
				<#?php echo form_label('Status', 'pengajuan_izin_status', array('class' => 'control-label col-md-2 col-md-2') ); ?>
				<div class='col-md-10'>
					<input id='pengajuan_izin_status' type='text' name='pengajuan_izin_status' class='col-md-10 form-control' maxlength="20" value="<#?php echo set_value('pengajuan_izin_status', isset($pengajuan['izin_status']) ? $pengajuan['izin_status'] : ''); ?>" />
					<span class='help-inline'><#?php echo form_error('izin_status'); ?></span>
				</div>
			</div> -->

			<div id="pengajuan_izin_keterangan_izin" class="form-group <?php echo form_error('keterangan_izin') ? 'error' : ''; ?>">
				<?php echo form_label('Keterangan Izin', 'pengajuan_izin_keterangan_izin', array('class' => 'col-md-2 control-label col-md-2') ); ?>
				<div class='col-md-10'>
					<?php echo form_textarea( array( 'name' => 'pengajuan_izin_keterangan_izin', 'id' => 'pengajuan_izin_keterangan_izin', 'class'=>'form-control', 'rows' => '5', 'cols' => '80', 'value' => set_value('pengajuan_izin_keterangan_izin', isset($pengajuan_izin['keterangan_izin']) ? $pengajuan['keterangan_izin'] : '') ) ); ?>

					<span class='help-inline'><?php echo form_error('keterangan_izin'); ?></span>
				</div>
			</div>

			<div class="col-md-10 col-md-offset-2">
				<input type="submit" name="save" class="btn btn-primary" value="<?php echo lang('pengajuan_action_edit'); ?>"  />
				atau
				<?php echo anchor(SITE_AREA .'/perizinan/pengajuan', lang('pengajuan_cancel'), 'class="btn btn-warning"'); ?>
				
			<!-- <#?php if ($this->auth->has_permission('Pengajuan.Perizinan.Delete')) : ?>
				atau
				<button type="submit" name="delete" class="btn btn-danger" id="delete-me" onclick="return confirm('<#?php e(js_escape(lang('pengajuan_delete_confirm'))); ?>'); ">
					<span class="icon-trash icon-white"></span>&nbsp;<#?php echo lang('pengajuan_delete_record'); ?>
				</button>
			<#?php endif; ?> -->
			</div>
		</fieldset>
    <?php echo form_close(); ?>
</div>