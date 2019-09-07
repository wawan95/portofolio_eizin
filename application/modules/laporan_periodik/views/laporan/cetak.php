<html>
<head>
<title>Laporan Periodik Perizinan</title>
	<style>
		table{
		border-width:5px;
		border-color:black;
		width:100%;
	}
		table, th, td {
		border-collapse:collapse;
	} 
		td, th {
		padding: 15px;
    	text-align: center;
	}
		th {background-color:black; color:white;}
		tr:nth-child(even) {background-color: #f2f2f2}
		.paragraf{text-align: left;}

	</style>
</head>
<body align="center">
	<div align="right">
		<button id='aa'>unduh</button>
	</div>
<center>
<h1>Data Laporan</h1>
	<!-- <#?php echo "Tanggal : ".date('d-m-Y'); ?><br><br> -->
<table class="tabel" align="center">
<tr class="titel">
					<th>Nama</th>
					<th>Jenis Izin</th>
					<th>Tanggal Mulai</th>
					<th>Tanggal Selesai</th>
					<th>Waktu Mulai</th>
					<th>Waktu Selesai</th>
					<th>Status Izin</th>
</tr>



<?php
	$bulan = $this->input->get('bln');
	$data = $this->db->where("MONTH(tgl_m)",$bulan)->get("pengajuan")->result();
	$no = 0;
		foreach($data as $dat){ $no++; ?>
			<tr>
					<td><?php e($dat->izin_nama) ?></td>
					<!-- <td><#?php e($record->izin_divisi) ?></td> -->
					<td><?php e($this->laporan_periodik_model->GetList_Jenis_Izin($dat->input_izin_jenis)) ?></td>
					<td><?php e($dat->tgl_m) ?></td>
					<td><?php e($dat->tgl_s) ?></td>
					<td><?php e($dat->izin_waktu_m) ?></td>
					<td><?php e($dat->izin_waktu_s) ?></td>
					<td><?php if($dat->izin_status==0): ?>
							<span class="label label-warning">Belum disetujui</span>
						<?php
						elseif ($dat->izin_status == 1): ?>
							<span class="label label-danger">tidak disetujui</span>
						<?php
						elseif ($dat->izin_status == 2): ?>
							<span class="label label-success">disetujui</span>
						<?php endif ?>
						</td>
						
			</tr>
<?php } ?>
</table>
</center>
</body>
</html>
<!-- baru di coment 2018 -->
	<!-- <script type="text/javascript">
		$(document).ready(function(){
			$("#sort").change(function(){
				var bulan = $(this).val();
				window.location.href="<#?php echo current_url();?>?&bln="+bulan;
			});

			$('#btnunduh').on('click', function(){
				bln = '<#?=$this->input->get('bln')?>';
				//alert(bln);
				url = 'laporan_periodik/unduh?bln='+bln;
				window.open(url, '_blank');
			});
		});
	</script> -->
