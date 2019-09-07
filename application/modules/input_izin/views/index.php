<div>
	<h1 class="page-header">Input Izin</h1>
</div>

<br />

<?php if (isset($records) && is_array($records) && count($records)) : ?>
				
	<table class="table table-striped table-bordered">
		<thead>
			<tr>
				
		<th>Nama</th>
		<th>Divisi</th>
		<th>Jenis Izin</th>
		<th>Tanggal Mulai</th>
		<th>Tanggal Selesai</th>
		<th>Waktu Mulai</th>
		<th>Waktu Selesai</th>
			</tr>
		</thead>
		<tbody>
		
		<?php foreach ($records as $record) : ?>
			<?php $record = (array)$record;?>
			<tr>
			<?php foreach($record as $field => $value) : ?>
				
				<?php if ($field != 'id') : ?>
					<td>
						<?php if ($field == 'deleted'): ?>
							<?php e(($value > 0) ? lang('input_izin_true') : lang('input_izin_false')); ?>
						<?php else: ?>
							<?php e($value); ?>
						<?php endif ?>
					</td>
				<?php endif; ?>
				
			<?php endforeach; ?>

			</tr>
		<?php endforeach; ?>
		</tbody>
	</table>
<?php endif; ?>