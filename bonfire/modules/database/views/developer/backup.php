<div class="admin-box">

	<?php echo form_open(SITE_AREA .'/developer/database/backup', 'class="form-horizontal"'); ?>

		<?php if (isset($tables) && is_array($tables) && count($tables) > 0) : ?>
			<?php foreach ($tables as $table) : ?>
				<input type="hidden" name="tables[]" value="<?php e($table) ?>" />
			<?php endforeach; ?>
		<?php endif; ?>

		<div class="alert alert-info">
			<p><?php echo lang('db_backup_warning'); ?></p>
		</div>

		<div class="form-group <?php echo form_error('file_name') ? 'error' : '' ?>">
			<label for="file_name" class="control-label col-md-2"><?php echo lang('db_filename'); ?></label>
			<div class="col-md-10">
				<input type="text" name="file_name" id="file_name" value="<?php echo set_value('file_name', isset($file) && !empty($file) ? $file : ''); ?>" />
				<?php if (form_error('file_name')) echo '<span class="help-inline">'. form_error('file_name') .'</span>'; ?>
			</div>
		</div>

		<div class="form-group <?php echo form_error('drop_tables') ? 'error' : '' ?>">
			<label for="drop_tables" class="control-label col-md-2"><?php echo lang('db_drop_question') ?></label>
			<div class="col-md-10">
				<select name="drop_tables" id="drop_tables">
					<option value="0" <?php echo set_select('drop_tables', '0'); ?>><?php echo lang('bf_no'); ?></option>
					<option value="1" <?php echo set_select('drop_tables', '1'); ?>><?php echo lang('bf_yes'); ?></option>
				</select>
				<?php if (form_error('drop_tables')) echo '<span class="help-inline">'. form_error('drop_tables') .'</span>'; ?>
			</div>
		</div>

		<div class="form-group <?php echo form_error('add_inserts') ? 'error' : '' ?>">
			<label for="add_inserts" class="control-label col-md-2"><?php echo lang('db_insert_question'); ?></label>
			<div class="col-md-10">
				<select name="add_inserts" id="add_inserts">
					<option value="0" <?php echo set_select('add_inserts', '0'); ?>><?php echo lang('bf_no'); ?></option>
					<option value="1" <?php echo set_select('add_inserts', '1', TRUE); ?>><?php echo lang('bf_yes'); ?></option>
				</select>
				<?php if (form_error('add_inserts')) echo '<span class="help-inline">'. form_error('add_inserts') .'</span>'; ?>
			</div>
		</div>

		<div class="form-group <?php echo form_error('file_type') ? 'error' : '' ?>">
			<label for="file_type" class="control-label col-md-2"><?php echo lang('db_compress_question'); ?></label>
			<div class="col-md-10">
				<select name="file_type" id="file_type">
					<option value="txt" <?php echo set_select('file_type', 'txt', TRUE); ?>><?php echo lang('bf_none'); ?></option>
					<option value="gzip" <?php echo set_select('file_type', 'gzip'); ?>><?php echo lang('db_gzip'); ?></option>
					<option value="zip" <?php echo set_select('file_type', 'zip'); ?>><?php echo lang('db_zip'); ?></option>
				</select>
				<?php if (form_error('file_type')) echo '<span class="help-inline">'. form_error('file_type') .'</span>'; ?>
			</div>
		</div>

		<br />

		<div class="alert alert-warning">
			<?php echo lang('db_restore_note'); ?>
		</div>

		<div style="padding: 20px" class="small">
			<p><strong><?php echo lang('db_backup') .' '. lang('db_tables'); ?>: &nbsp;&nbsp;</strong>
				<?php foreach ($tables as $table) : ?>
					<?php e($table); ?>&nbsp;&nbsp;&nbsp;&nbsp;
				<?php endforeach; ?>
			</p>
		</div>

		<div class="form-actions">
			<button type="submit" name="backup" class="btn btn-primary" ><?php echo lang('db_backup'); ?></button> <?php echo lang('bf_or'); ?>
			<?php echo anchor(SITE_AREA .'/developer/database', lang('bf_action_cancel')); ?>
		</div>

	<?php echo form_close(); ?>
</div>
