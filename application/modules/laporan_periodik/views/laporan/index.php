<?php

$num_columns	= 8 + 1;
$can_delete	= $this->auth->has_permission('Laporan_Periodik.Laporan.Delete');
$can_edit		= $this->auth->has_permission('Laporan_Periodik.Laporan.Edit');
$has_records	= isset($records) && is_array($records) && count($records);

?>
<script>
    $(document).ready(function() {
        $('.del_this').click(function(){
			var pr = $(this).parents('tr');
			pr.find('input').prop( 'checked', true );
			$('#delete-me').trigger('click');
			return false;
		});

		$('.check-all').on('click', function(){
			if($(this).prop('checked')){
				$('.column-check').prop('checked', true);
			}
			else {
				$('.column-check').prop('checked', false);
			}
		});

		$("#search").on("keyup",function(e){
            e.preventDefault();
            e.stopPropagation();
            if($(this).val().length == 0){
                $('#list span').trigger('click');   
            }else if($(this).val().length >= 3){
                $.ajax({
                    type: 'POST',
                    data:{
                    	"ci_csrf_token" : '<?php echo $this->security->get_csrf_hash(); ?>',
                        "q" : $(this).val()
                    },
                    url : "<?=base_url().$this->uri->uri_string()?>/search",
                    success:function (html){
                        $("#content_table").html(html);
                    }
                })                
            }          
        });
    });
</script>

<div class="col-lg-12 col-md-12">
	
	<?php echo form_open($this->uri->uri_string()); ?>
	<!-- 	<div class="control-group">
	        <div class="controls pull-right">
	            <input id="search" name="search" type="text" style="margin-bottom:5px; width:210px" maxlength="20" value="<?=$search?>" placeholder="Search..." />
	        </div>
	    </div> -->
</div>
	
		<!-- <div class="control pull-right"><button><a href="//<#?php echo base_url('admin/laporan/laporan_periodik/cetak') ?>" target="_blank">Cetak Data</a></button></div>
 -->
	    <div id="content_table">
			<table id="myTable" class="table table-striped table-bordered">
				<thead class="bg-primary">
					<tr>
						<?php if ($can_delete && $has_records) : ?>
						<th class="column-check"><input class="check-all" type="checkbox" /></th>
						<?php endif;?>
					<th>No</th>
					<th>Nama</th>
					<th>Jenis Izin</th>
<!-- 					<th>Tanggal Mulai</th>
					<th>Tanggal Selesai</th> -->
					<th>Waktu Mulai</th>
					<th>Waktu Selesai</th>
					<th>Keterangan izin</th>
					<th>Status Izin</th>
					<th>Keterangan</th>
					<!-- <th>Action</th> -->
					</tr>
				</thead>
				<?php if ($has_records) : ?>
				<tfoot>
					<?php if ($can_delete) : ?>
					<tr>
						<td colspan="<?php echo $num_columns; ?>">
							<?php echo lang('bf_with_selected'); ?>
							<input type="submit" name="delete" id="delete-me" class="btn btn-danger" value="<?php echo lang('bf_action_delete'); ?>" onclick="return confirm('<?php e(js_escape(lang('laporan_periodik_delete_confirm'))); ?>')" />
						</td>
					</tr>
					<?php endif; ?>
				</tfoot>
				<?php endif; ?>
				<tbody>
					<?php
					if ($has_records) :
						$no= 0;
						foreach ($records as $record) :
							$no++;
					?>
					<tr>
						<?php if ($can_delete) : ?>
						<td><input class="column-check" type="checkbox" name="checked[]" value="<?php echo $record->id; ?>" /></td>
						<?php endif;?>
					<td><?php echo $no ?></td>	
					<td><?php e($record->izin_nama) ?></td>
					<td><?php e($this->laporan_periodik_model->GetList_Jenis_Izin($record->input_izin_jenis)) ?></td>
					<td><?php echo "Tanggal : "; e($record->tgl_m) ?><br><?php echo "Jam : "; e($record->izin_waktu_m) ?> </td>
					<td><?php echo "Tanggal : "; e($record->tgl_s) ?> <br> <?php echo "Jam : "; e($record->izin_waktu_s) ?></td>
					<td><?php e($record->keterangan_izin)?></td>
<!-- 					<td><#?php e($record->tgl_m) ?></td>
					<td><#?php e($record->tgl_s) ?></td>
					<td><#?php e($record->izin_waktu_m) ?></td>
					<td><#?php e($record->izin_waktu_s) ?></td> -->
					<td><?php if($record->izin_status==0): ?>
							<span class="label label-warning">Belum disetujui</span>
						<?php
						elseif ($record->izin_status == 1): ?>
							<span class="label label-danger">tidak disetujui</span>
						<?php
						elseif ($record->izin_status == 2): ?>
							<span class="label label-success">disetujui</span>
						<?php endif ?></td>
						<td><?php e($record->alasan) ?></td><!-- <td>
						<#?php if ($can_edit) : 
							 echo anchor(SITE_AREA . '/laporan/laporan_periodik/edit/' . $record->id, '<span class="fa fa-edit"></span>'); ?>
						<#?php endif; ?>
						<#?php if ($can_delete) : ?>
							<a href="#" class="del_this"><i class="fa fa-trash">&nbsp;</i>
						<#?php endif; ?>
					</td> -->
					</tr>
					<?php
						endforeach;
					else:
					?>
					<tr>
						<td colspan="<?php echo $num_columns; ?>">No records found that match your selection.</td>
					</tr>
					<?php endif; ?>
				</tbody>
			</table>
		
	<?php echo form_close(); 
		echo "Displaying data ".@($page->offset +1)." to ".@($page->offset +10)." from ".@($page->total)." records <br/>";
		echo $page->links;
	?>
</div>