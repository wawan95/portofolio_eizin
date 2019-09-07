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
				<div class='col-md-4'>
					<input id='konfirmasi_izin_izin_nama' type='text' name='konfirmasi_izin_izin_nama' class='col-md-10 form-control'readonly="readonly"   maxlength="50" value="<?php echo set_value('konfirmasi_izin_izin_nama', isset($konfirmasi_izin['izin_nama']) ? $konfirmasi_izin['izin_nama'] : ''); ?>" />
					<span class='help-inline'><?php echo form_error('izin_nama'); ?></span>
				</div>
			</div>

			<div class="form-group <?php echo form_error('input_izin_jenis') ? 'error' : ''; ?>">

				<?php echo form_label('Jenis Izin', 'konfirmasi_izin_input_izin_jenis', array('class' => 'control-label col-md-2 col-md-2') ); ?>
				<div class='col-md-4'readonly="readonly" >					
					<?php echo form_error('input_izin_jenis'), $this->konfirmasi_izin_model->ListJenis_Izin('konfirmasi_izin_input_izin_jenis',$konfirmasi_izin['input_izin_jenis']);?> 
					<span class='help-inline'><?php echo form_error('input_izin_jenis'); ?></span>
				</div>
			</div>

			
			<div class="form-group <?php echo form_error('tgl_m') ? 'error' : ''; ?>">
				<?php echo form_label('Tanggal Mulai', 'konfirmasi_izin_tgl_m', array('class' => 'control-label col-md-2 col-md-2') ); ?>
				<div class='col-md-4'>
					<input id='konfirmasi_izin_tgl_m' type='date' readonly="readonly" name='konfirmasi_izin_tgl_m' class='col-md-10 form-control'  value="<?php echo set_value('konfirmasi_izin_tgl_m', isset($konfirmasi_izin['tgl_m']) ? $konfirmasi_izin['tgl_m'] : ''); ?>" />
					<span class='help-inline'><?php echo form_error('tgl_m'); ?></span>
				</div>
			</div>

			<div class="form-group <?php echo form_error('tgl_s') ? 'error' : ''; ?>">
				<?php echo form_label('Taggal Selesai', 'konfirmasi_izin_tgl_s', array('class' => 'control-label col-md-2 col-md-2') ); ?>
				<div class='col-md-4'>
					<input id='konfirmasi_izin_tgl_s' type='date'readonly="readonly"  name='konfirmasi_izin_tgl_s' class='col-md-10 form-control'   value="<?php echo set_value('konfirmasi_izin_tgl_s', isset($konfirmasi_izin['tgl_s']) ? $konfirmasi_izin['tgl_s'] : ''); ?>" />
					<span class='help-inline'><?php echo form_error('tgl_s'); ?></span>
				</div>
			</div>

			<div class="form-group <?php echo form_error('izin_waktu_m') ? 'error' : ''; ?>">
				<?php echo form_label('Waktu Mulai', 'konfirmasi_izin_izin_waktu_m', array('class' => 'control-label col-md-2 col-md-2') ); ?>
				<div class='col-md-4'>
					<input id='konfirmasi_izin_izin_waktu_m' type='text'readonly="readonly" name='konfirmasi_izin_izin_waktu_m' class='col-md-10 form-control'  value="<?php echo set_value('konfirmasi_izin_izin_waktu_m', isset($konfirmasi_izin['izin_waktu_m']) ? $konfirmasi_izin['izin_waktu_m'] : ''); ?>" />
					<span class='help-inline'><?php echo form_error('izin_waktu_m'); ?></span>
				</div>
			</div>

			<div class="form-group <?php echo form_error('izin_waktu_s') ? 'error' : ''; ?>">
				<?php echo form_label('Waktu Selesai', 'konfirmasi_izin_izin_waktu_s', array('class' => 'control-label col-md-2 col-md-2') ); ?>
				<div class='col-md-4'>
					<input id='konfirmasi_izin_izin_waktu_s' type='text'readonly="readonly" name='konfirmasi_izin_izin_waktu_s' class='col-md-10 form-control'  value="<?php echo set_value('konfirmasi_izin_izin_waktu_s', isset($konfirmasi_izin['izin_waktu_s']) ? $konfirmasi_izin['izin_waktu_s'] : ''); ?>" />
					<span class='help-inline'><?php echo form_error('izin_waktu_s'); ?></span>
				</div>
			</div>

			<div class="form-group <?php echo form_error('status_izin') ? 'error' : ''; ?>">
				<?php echo form_label('Status Izin', '', array('class' => 'col-md-2 control-label col-md-2', 'id' => 'konfirmasi_izin_izin_status_label') ); ?>
				<div class='col-md-4' aria-labelled-by='konfirmasi_izin_izin_status_label'>
					<label class='radio' for='konfirmasi_izin_izin_statusn_option1'>
						<input id='konfirmasi_izin_izin_status_option1' name='konfirmasi_izin_izin_status' type='radio' class='' value='2' <?php echo set_radio('konfirmasi_izin_izin_status', '2',TRUE); ?> />
						Disetujui
					</label>
					<label class='radio' for='konfirmasi_izin_izin_status_option2'>
						<input id='konfirmasi_izin_izin_status_option2' name='konfirmasi_izin_izin_status' type='radio' class='' value='1' <?php echo set_radio('konfirmasi_izin_izin_status', '1'); ?> />
						Tidak disetujui
					</label>
					<span class='help-inline'><?php echo form_error('status_izin'); ?></span>
				</div>
			</div>

			<div id="show" style="display: none"  class="form-group <?php echo form_error('alasan') ? 'error' : ''; ?>">
				<?php echo form_label('Keterangan', 'konfirmasi_alasan', array('class' => 'col-md-2 control-label col-md-2') ); ?> <div class="col-md-4"> <?php echo form_textarea( array( 'name' => 'konfirmasi_alasan', 'id' => 'konfirmasi_alasan', 'class'=>'form-control', 'rows' => '5', 'cols' => '80', 'value' => set_value('konfirmasi_alasan', isset($konfirmasi['alasan']) ? $konfirmasi['alasan'] : '') ) ); ?> <span class="help-inline"><?php echo form_error('alasan'); ?></span></div>
			</div>


			<div class="col-md-10 col-md-offset-2">
				<input type="submit" name="save" class="btn btn-primary" value="<?php echo lang('konfirmasi_izin_action_edit'); ?>"  />
				atau
				<?php echo anchor(SITE_AREA .'/perizinan/konfirmasi_izin', lang('konfirmasi_izin_cancel'), 'class="btn btn-warning"'); ?>
				
			<!-- <#?php if ($this->auth->has_permission('Konfirmasi_Izin.Perizinan.Delete')) : ?>
				atau
				<button type="submit" name="delete" class="btn btn-danger" id="delete-me" onclick="return confirm('<#?php e(js_escape(lang('konfirmasi_izin_delete_confirm'))); ?>'); ">
					<span class="icon-trash icon-white"></span>&nbsp;<#?php echo lang('konfirmasi_izin_delete_record'); ?>
				</button>
			<#?php endif; ?> -->
			</div>
		</fieldset>
    <?php echo form_close(); ?>
</div>
<script type="text/javascript">
	$('#konfirmasi_izin_izin_status_option2').click(function(){
                var check= $(this).val();
                $('#show').show();
    });
    $('#konfirmasi_izin_izin_status_option1').click(function(){
                var check= $(this).val();
                $('#show').hide();
    });
</script>