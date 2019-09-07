<!-- <ul class="nav nav-pills">
	<li <#?php echo $this->uri->segment(4) == '' ? 'class="active"' : '' ?>>
		<a href="<#?php echo site_url(SITE_AREA .'/laporan/laporan_periodik') ?>" id="list"><#?php echo lang('laporan_periodik_list'); ?></a>
	</li>
	<#?php if ($this->auth->has_permission('Laporan_Periodik.Laporan.Create')) : ?>
	<li <#?php echo $this->uri->segment(4) == 'create' ? 'class="active"' : '' ?> >
		<a href="<#?php echo site_url(SITE_AREA .'/laporan/laporan_periodik/create') ?>" id="create_new"><#?php echo lang('laporan_periodik_new'); ?></a>
	</li>
	<#?php endif; ?>
</ul> -->

<div class="control pull-right">
<!-- 		<#?php echo anchor('admin/laporan/laporan_periodik/cetak/', '<span class="btn btn-success">Unduh Laporan</span>');?> -->
		<button id='btnunduh'>
			unduhku
		</button>
	</div>
<ul class="nav">
	laporan bulanan <br>
	<select name ="sort" id="sort">
		<option value="00">-Pilih-</option>
		<option value="01">Januari</option>
		<option value="02">Febuari</option>
		<option value="03">Maret</option>
		<option value="04">April</option>
		<option value="05">Mei</option>
		<option value="06">Juni</option>
		<option value="07">Juli</option>
		<option value="08">Agustus</option>
		<option value="09">September</option>
		<option value="10">Oktober</option>
		<option value="11">November</option>
		<option value="12">Desember</option>
	</select>
	<?php echo anchor('/admin/laporan/laporan_periodik', '<span class="btn btn-success">lihat semua Laporan</span>');?>
	<script type="text/javascript">
		$(document).ready(function(){
			$("#sort").change(function(){
				var bulan = $(this).val();
				window.location.href="<?php echo current_url();?>?&bln="+bulan;
			});

			$('#btnunduh').on('click', function(){
				bln = '<?=$this->input->get('bln')?>';
				//alert(bln);
				url = 'laporan_periodik/unduh?bln='+bln;
				window.open(url, '_blank');
			});
		});
	</script>
</ul>