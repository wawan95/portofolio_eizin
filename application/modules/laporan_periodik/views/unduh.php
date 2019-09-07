<html>
<head>
<title>Laporan Periodik</title>
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
td{
	border-bottom: 1px solid #ddd;
}
th {background-color:black; color:white;}
tr:nth-child(even) {background-color: #f2f2f2}

</style>
</head>
<body align="center">
<h1>Data Izin Karyawan Dinustek</h1>
<!-- <#?php echo "Tanggal : ".date('d-m-Y'); ?> --><br> 
<table class="tabel" align="center">
<tr class="titel">	
					<th>No</th>
					<th>Nama</th>
					<th>Jenis Izin</th>
<!-- 					<th>Tanggal Mulai</th>
					<th>Tanggal Selesai</th> -->
					<th>Waktu Mulai izin</th>
					<th>Waktu Selesai izi</th>
					<th>Keterangan</th>
					<th>Status Izin</th>
</tr>
<?php

	$bulan = $this->input->get('bln');
	$data = $this->db->where("MONTH(tgl_m)",$bulan)->get("pengajuan")->result();
	$no = 0;
		foreach($data as $dat){ $no++ ?>
			<tr>
			<td><?php echo $no;  ?></td>
					<td><?php e($dat->izin_nama) ?></td>

					<td><?php e($this->laporan_periodik_model->GetList_Jenis_Izin($dat->input_izin_jenis)) ?></td>

					<td> <?php echo "Tanggal : "; e($dat->tgl_m) ?> <br> <?php echo "Jam : "; e($dat->izin_waktu_m) ?></td>
					<td> <?php echo "Tanggal : "; e($dat->tgl_s) ?> <br> <?php echo "Jam : "; e($dat->izin_waktu_s) ?> </td>
					<td><?php e($dat->keterangan_izin)?></td>
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
<?php }  ?>
</table>
</body>
</html>