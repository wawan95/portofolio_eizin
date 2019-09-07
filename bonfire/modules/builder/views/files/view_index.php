<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

$view =<<<END
<?php

\$num_columns	= {cols_total} + 1;
\$can_delete	= \$this->auth->has_permission('{delete_permission}');
\$can_edit		= \$this->auth->has_permission('{edit_permission}');
\$has_records	= isset(\$records) && is_array(\$records) && count(\$records);

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
                    	"ci_csrf_token" : '<?php echo \$this->security->get_csrf_hash(); ?>',
                        "q" : $(this).val()
                    },
                    url : "<?=base_url().\$this->uri->uri_string()?>/search",
                    success:function (html){
                        $("#content_table").html(html);
                    }
                })                
            }          
        });
    });
</script>

<div class="col-lg-12 col-md-12">
	<?php echo form_open(\$this->uri->uri_string()); ?>
		<div class="control-group">
	        <div class="controls pull-right">
	            <input id="search" name="search" type="text" style="margin-bottom:5px; width:210px" maxlength="20" value="<?=\$search?>" placeholder="Search..." />
	        </div>
	    </div>

	    <div id="content_table">
			<table id="myTable" class="table table-striped table-bordered">
				<thead class="bg-primary">
					<tr>
						<?php if (\$can_delete && \$has_records) : ?>
						<th class="column-check"><input class="check-all" type="checkbox" /></th>
						<?php endif;?>
						{table_header}
					</tr>
				</thead>
				<?php if (\$has_records) : ?>
				<tfoot>
					<?php if (\$can_delete) : ?>
					<tr>
						<td colspan="<?php echo \$num_columns; ?>">
							<?php echo lang('bf_with_selected'); ?>
							<input type="submit" name="delete" id="delete-me" class="btn btn-danger" value="<?php echo lang('bf_action_delete'); ?>" onclick="return confirm('<?php e(js_escape(lang('{$module_name_lower}_delete_confirm'))); ?>')" />
						</td>
					</tr>
					<?php endif; ?>
				</tfoot>
				<?php endif; ?>
				<tbody>
					<?php
					if (\$has_records) :
						foreach (\$records as \$record) :
					?>
					<tr>
						<?php if (\$can_delete) : ?>
						<td><input class="column-check" type="checkbox" name="checked[]" value="<?php echo \$record->{$primary_key_field}; ?>" /></td>
						<?php endif;?>
						{table_records}
					</tr>
					<?php
						endforeach;
					else:
					?>
					<tr>
						<td colspan="<?php echo \$num_columns; ?>">No records found that match your selection.</td>
					</tr>
					<?php endif; ?>
				</tbody>
			</table>
		
	<?php echo form_close(); 
		echo "Displaying data ".@(\$page->offset +1)." to ".@(\$page->offset +10)." from ".@(\$page->total)." records <br/>";
		echo \$page->links;
	?>
</div>

END;

$headers = '';
for ($counter = 1; $field_total >= $counter; $counter++)
{
	// only build on fields that have data entered.

	// Due to the required if rule if the first field is set the others must be
	if (set_value("view_field_label$counter") == NULL)
	{
		continue; 	// move onto next iteration of the loop
	}

	$headers .= '
					<th>' . set_value("view_field_label$counter") . '</th>';
}

$field_prefix = '';

// only add maintenance columns to view when module is creating a new db table
// (columns should already be present and handled below when existing table is used)
if ($db_required == 'new')
{
	if ($use_soft_deletes == 'true')
	{
		$headers .= '
					<th><?php echo lang("' . $module_name_lower . '_column_deleted"); ?></th>';
	}
	if ($use_created == 'true')
	{
		$headers .= '
					<th><?php echo lang("' . $module_name_lower . '_column_created"); ?></th>';
	}
	if ($use_modified == 'true')
	{
		$headers .= '
					<th><?php echo lang("' . $module_name_lower . '_column_modified"); ?></th>';
	}
    if ($table_as_field_prefix === TRUE)
    {
        $field_prefix = $module_name_lower . '_';
    }
}
//tambahan kolom Action
$headers .= '<th>Action</th>';
$table_records = '';
$pencil_icon   = "'<span class=\"icon-pencil\"></span>' . ";
for ($counter = 1; $field_total >= $counter; $counter++)
{
	// only build on fields that have data entered.

	//Due to the requiredif rule if the first field is set then the others must be

	if (set_value("view_field_name$counter") == NULL || set_value("view_field_name$counter") == $primary_key_field)
	{
		continue; 	// move onto next iteration of the loop
	}

	$field_name = $field_prefix . set_value("view_field_name$counter");

	/*if ($counter == 1)
	{
		$table_records .= "
				<?php if (\$can_edit) : ?>
					<td><?php echo anchor(SITE_AREA . '/" . $controller_name . "/" . $module_name_lower . "/edit/' . \$record->" . $primary_key_field . ", {$pencil_icon} \$record->" . $field_name . "); ?></td>
				<?php else : ?>
					<td><?php e(\$record->" . $field_name . "); ?></td>
				<?php endif; ?>";
	}
	else
	{*/
		$field_name = set_value("view_field_name$counter");

		// when building from existing table, modify output of the 'deleted' maintenance column
		if  ($db_required == 'existing' && $field_name == $this->input->post("soft_delete_field"))
		{
			$table_records .= '
					<td><?php echo $record->'.$field_name.' > 0 ? lang(\''.$module_name_lower.'_true\') : lang(\''.$module_name_lower.'_false\')?></td>';
		}
		else
		{
			$table_records .= '
					<td><?php e($record->'.$field_name.') ?></td>';
		}
	/*}  */
	
}

// only add maintenance columns to view when module is creating a new db table
// (columns should already be present and handled above when existing table is used)
if($db_required == 'new')
{
	if ($use_soft_deletes == 'true')
	{
		$table_records .= '
					<td><?php echo $record->'.set_value("soft_delete_field").' > 0 ? lang(\''.$module_name_lower.'_true\') : lang(\''.$module_name_lower.'_false\')?></td>';
		$field_total++;
	}
	if ($use_created == 'true')
	{
		$table_records .= '
					<td><?php e($record->'.set_value("created_field").') ?></td>';
		$field_total++;
	}
	if ($use_modified == 'true')
	{
		$table_records .= '
					<td><?php e($record->'.set_value("modified_field").') ?></td>';
		$field_total++;
	}
}

//tambahan kolom Action
$table_records .= "<td>
						<?php if (\$can_edit) : 
							 echo anchor(SITE_AREA . '/".$controller_name."/".$module_name_lower."/edit/' . \$record->". $primary_key_field.", '<span class=\"fa fa-edit\"></span>'); ?>
						<?php endif; ?>
						<?php if (\$can_delete) : ?>
							<a href=\"#\" class=\"del_this\"><i class=\"fa fa-trash\">&nbsp;</i>
						<?php endif; ?>
					</td>";

$view = str_replace('{cols_total}', $field_total + 1 , $view);
$view = str_replace('{table_header}', $headers, $view);
$view = str_replace('{table_records}', $table_records, $view);
$view = str_replace('{delete_permission}', preg_replace("/[ -]/", "_", ucfirst($module_name)).'.'.ucfirst($controller_name).'.Delete', $view);
$view = str_replace('{edit_permission}', preg_replace("/[ -]/", "_", ucfirst($module_name)).'.'.ucfirst($controller_name).'.Edit', $view);

echo $view;

unset($view, $headers);