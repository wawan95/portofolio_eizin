<?php

$num_columns	= 8 + 1;
$can_delete	= $this->auth->has_permission('Input_Izin.Perizinan.Delete');
$can_edit		= $this->auth->has_permission('Input_Izin.Perizinan.Edit');
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
		<div class="control-group">
	        <div class="controls pull-right">
	            <input id="search" name="search" type="text" style="margin-bottom:5px; width:210px" maxlength="20" value="<?=$search?>" placeholder="Search..." />
	        </div>
	    </div>

	    <div id="content_table">
			<table id="myTable" class="table table-striped table-bordered">
				<thead class="bg-primary">
					<tr>
						<?php if ($can_delete && $has_records) : ?>
						<th class="column-check"><input class="check-all" type="checkbox" /></th>
						<?php endif;?>
						
					<th>Nama</th>
					<th>Divisi</th>
					<th>Jenis Izin</th>
					<th>Tanggal Mulai</th>
					<th>Tanggal Selesai</th>
					<th>Waktu Mulai</th>
					<th>Waktu Selesai</th><th>Action</th>
					</tr>
				</thead>
				<?php if ($has_records) : ?>
				<tfoot>
					<?php if ($can_delete) : ?>
					<tr>
						<td colspan="<?php echo $num_columns; ?>">
							<?php echo lang('bf_with_selected'); ?>
							<input type="submit" name="delete" id="delete-me" class="btn btn-danger" value="<?php echo lang('bf_action_delete'); ?>" onclick="return confirm('<?php e(js_escape(lang('input_izin_delete_confirm'))); ?>')" />
						</td>
					</tr>
					<?php endif; ?>
				</tfoot>
				<?php endif; ?>
				<tbody>
					<?php
					if ($has_records) :
						foreach ($records as $record) :
					?>
					<tr>
						<?php if ($can_delete) : ?>
						<td><input class="column-check" type="checkbox" name="checked[]" value="<?php echo $record->id; ?>" /></td>
						<?php endif;?>
						
					<td><?php e($this->input_izin_model->GetListNama($record->izin_nama)) ?></td>
					<td><?php e($this->input_izin_model->GetList_Divisi($record->izin_divisi)) ?></td>
					<td><?php e($this->input_izin_model->GetList_Jenis_Izin($record->input_izin_jenis)) ?></td>
					<td><?php e($record->tgl_m) ?></td>
					<td><?php e($record->tgl_s) ?></td>
					<td><?php e($record->izin_waktu_m) ?></td>
					<td><?php e($record->izin_waktu_s) ?></td><td>
						<?php if ($can_edit) : 
							 echo anchor(SITE_AREA . '/perizinan/input_izin/edit/' . $record->id, '<span class="fa fa-edit"></span>'); ?>
						<?php endif; ?>
						<?php if ($can_delete) : ?>
							<a href="#" class="del_this"><i class="fa fa-trash">&nbsp;</i>
						<?php endif; ?>
					</td>
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
