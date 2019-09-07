<script src="<?php echo base_url();?>assets/js/input_izin.js" type="text/javascript"></script>
<script src="<?php echo base_url();?>assets/js/datepicker.js" type="text/javascript"></script>
<script src="<?php echo base_url();?>assets/js/datepicker.js" type="text/javascript"></script>

<link rel="stylesheet" type="text/css" href="<?php echo base_url();?>assets/css/input_izin.css">

<?php
$nama = $this->session->userdata('identity');
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

if (isset($input_izin))
{
	$input_izin = (array) $input_izin;
}
$id = isset($input_izin['id']) ? $input_izin['id'] : '';

?>

<div class="col-lg-12 col-md-12">
	<?php echo form_open($this->uri->uri_string(), 'class="form-horizontal"'); ?>
		<fieldset>

			<div class="form-group <?php echo form_error('izin_nama') ? 'error' : ''; ?>">
				<?php echo form_label('Nama', 'input_izin_izin_nama', array('class' => 'control-label col-md-2 col-md-2') ); ?>
				<div class='col-md-10'>
					
					<?php echo $this->input_izin_model->ListNama('input_izin_izin_nama');?> 
					<span class='help-inline'><?php echo form_error('izin_nama'); ?></span>
				</div>
			</div>

			<div class="form-group <?php echo form_error('izin_divisi') ? 'error' : ''; ?>">
				<?php echo form_label('Divisi', 'input_izin_izin_divisi', array('class' => 'control-label col-md-2 col-md-2') ); ?>
				<div class='col-md-10'>
					<!-- <input id='input_izin_izin_divisi' type='text' name='input_izin_izin_divisi' class='col-md-10 form-control' maxlength="50" value="<#?php echo set_value('input_izin_izin_divisi', isset($input_izin['izin_divisi']) ? $input_izin['izin_divisi'] : ''); ?>" /> -->
					<?php echo $this->input_izin_model->List_Divisi('input_izin_izin_divisi');?>
					<span class='help-inline'><?php echo form_error('izin_divisi'); ?></span>
				</div>
			</div>

			<div class="form-group <?php echo form_error('input_izin_jenis') ? 'error' : ''; ?>">
				<?php echo form_label('Jenis Izin', 'input_izin_input_izin_jenis', array('class' => 'control-label col-md-2 col-md-2') ); ?>
				<div class='col-md-10'>
					<!-- <input id='input_izin_input_izin_jenis' type='text' name='input_izin_input_izin_jenis' class='col-md-10 form-control' maxlength="40" value="<#?php echo set_value('input_izin_input_izin_jenis', isset($input_izin['input_izin_jenis']) ? $input_izin['input_izin_jenis'] : ''); ?>" />
					 --><?php echo $this->input_izin_model->ListJenis_Izin('input_izin_input_izin_jenis');?>
					<span class='help-inline'><?php echo form_error('input_izin_jenis'); ?></span>
				</div>
			</div>

			
			<div class="form-group <?php echo form_error('tgl_m') ? 'error' : ''; ?>">
				<?php echo form_label('Tanggal Mulai', 'input_izin_tgl_m', array('class' => 'control-label col-md-2 col-md-2') ); ?>
				<div class='col-md-10'>
					<input id='input_izin_tgl_m' type='text' name='input_izin_tgl_m' class='col-md-10 form-control'  value="<?php echo set_value('input_izin_tgl_m', isset($input_izin['tgl_m']) ? $input_izin['tgl_m'] : ''); ?>" />
					<span class='help-inline'><?php echo form_error('tgl_m'); ?></span>
				</div>
			</div>

			<div class="form-group <?php echo form_error('tgl_s') ? 'error' : ''; ?>">
				<?php echo form_label('Tanggal Selesai', 'input_izin_tgl_s', array('class' => 'control-label col-md-2 col-md-2') ); ?>
				<div class='col-md-10'>
					<input id='input_izin_tgl_s' type='text' name='input_izin_tgl_s' class='col-md-10 form-control'  value="<?php echo set_value('input_izin_tgl_s', isset($input_izin['tgl_s']) ? $input_izin['tgl_s'] : ''); ?>" />
					<span class='help-inline'><?php echo form_error('tgl_s'); ?></span>
				</div>
			</div>

			                                                       
			<div class="form-group <?php echo form_error('izin_waktu_m') ? 'error' : ''; ?>">
				<?php echo form_label('Waktu Mulai', 'input_izin_izin_waktu_m', array('class' => 'control-label col-md-2 col-md-2') ); ?>
				<div class='col-md-10'>
				<div id="time-range">
					  <p>Time Range: <span class="slider-time">-:- </span> - <span class="slider-time2">-:- </span></p>
					  <div class="sliders_step1">
					    <div id="slider-range"></div>
					  </div>
					</div>
					<input id='input_izin_izin_waktu_m' type='text' name='input_izin_izin_waktu_m' class='col-md-10 form-control'  value="<?php echo set_value('input_izin_izin_waktu_m', isset($input_izin['izin_waktu_m']) ? $input_izin['izin_waktu_m'] : ''); ?>" />
					<span class='help-inline'><?php echo form_error('izin_waktu_m'); ?></span>
				</div>
			</div>
			<div id=".beatpicker">
			<div class="form-group <?php echo form_error('izin_waktu_s') ? 'error' : ''; ?>">
				<?php echo form_label('Waktu Selesai', 'input_izin_izin_waktu_s', array('class' => 'control-label col-md-2 col-md-2') ); ?>
				<div class='col-md-10'>
					<input id='input_izin_izin_waktu_s' type='text' name='input_izin_izin_waktu_s' class='col-md-10 form-control'  value="<?php echo set_value('input_izin_izin_waktu_s', isset($input_izin['izin_waktu_s']) ? $input_izin['izin_waktu_s'] : ''); ?>" />
					<span class='help-inline'><?php echo form_error('izin_waktu_s'); ?></span>
				</div>
			</div>
			</div>

			<div class="col-md-10 col-md-offset-2">
				<input type="submit" name="save" class="btn btn-primary" value="<?php echo lang('input_izin_action_create'); ?>"  />
				atau
				<?php echo anchor(SITE_AREA .'/perizinan/input_izin', lang('input_izin_cancel'), 'class="btn btn-warning"'); ?>
				
			</div>
		</fieldset>
    <?php echo form_close(); ?>
</div>