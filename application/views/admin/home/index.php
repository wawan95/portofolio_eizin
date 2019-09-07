<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>


<?php 
  if($this->session->userdata('role_id')==1){
  $query = $this->db->select('izin_jenis')->get('jenis_izin')->result();
  $izin = []; 
  foreach ($query as $q) {
    array_push($izin, $q->izin_jenis);
  }
  $hitungpergi_keluar1 = $this->db->where('year(tgl_m)',2016)->where('input_izin_jenis',1)->get('pengajuan')->result();
  $hitungpergi_keluar2 = $this->db->where('year(tgl_m)',2017)->where('input_izin_jenis',1)->get('pengajuan')->result();
  $pergi_keluar1 = count ($hitungpergi_keluar1);
  $pergi_keluar2 = count ($hitungpergi_keluar2);

  $hitungcuti1 = $this->db->where('year(tgl_m)',2016)->where('input_izin_jenis',2)->get('pengajuan')->result();
  $hitungcuti2 = $this->db->where('year(tgl_m)',2017)->where('input_izin_jenis',2)->get('pengajuan')->result();
  $cuti1 = count ($hitungcuti1);
  $cuti2 = count ($hitungcuti2);

  $hitungpergi_dinas1 = $this->db->where('year(tgl_m)',2016)->where('input_izin_jenis',3)->get('pengajuan')->result();
  $hitungpergi_dinas2 = $this->db->where('year(tgl_m)',2017)->where('input_izin_jenis',3)->get('pengajuan')->result();
  $pergi_dinas1 = count ($hitungpergi_dinas1);
  $pergi_dinas2 = count ($hitungpergi_dinas2);

  $hitungsakit1 = $this->db->where('year(tgl_m)',2016)->where('input_izin_jenis',4)->get('pengajuan')->result();
  $hitungsakit2 = $this->db->where('year(tgl_m)',2017)->where('input_izin_jenis',4)->get('pengajuan')->result();
  $sakit1 = count ($hitungsakit1);
  $sakit2 = count ($hitungsakit2);
//  echo $pergi_keluar2;

?>
<script type="text/javascript">
  // function getizin(){
  //   $.ajax({
  //     url : "<?=base_url().'jenis_izin/getjenisizin'?>",
  //         success : function(ret){
  //           r = JSON.parse(ret);
  //           chart_icdx(r);
  //         },
  //   });
  // }
  // getizin();


$(function () {
    $('#container').highcharts({
        chart: {
            type: 'column'
        },
        title: {
            text: 'Status Izin Karyawan'
        },
        subtitle: {
            text: 'Source: WorldClimate.com'
        },
        xAxis: {
            categories: [
                '2016',
                '2017',   
            ],
            crosshair: true
        },
        yAxis: {
            min: 0,
            title: {
                text: 'Rainfall (mm)'
            }
        },
        tooltip: {
            headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
            pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
                '<td style="padding:0"><b>{point.y:.1f} mm</b></td></tr>',
            footerFormat: '</table>',
            shared: true,
            useHTML: true
        },
        plotOptions: {
            column: {
                pointPadding: 0.2,
                borderWidth: 0
            }
        },
        series: [{
            name: '<?php echo $izin[0] ?>',
            data: [<?php echo $pergi_keluar1; ?>,<?php echo $pergi_keluar2; ?>]

        }, {
            name: '<?php echo $izin[1] ?>',
            data: [<?php echo $cuti1; ?>,<?php echo $cuti2; ?>]

        }, {
            name: '<?php echo $izin[2] ?>',
            data: [<?php echo $pergi_dinas1; ?>,<?php echo $pergi_dinas2; ?>]

        }, {
            name: '<?php echo $izin[3] ?>',
            data: [<?php echo $sakit1; ?>,<?php echo $sakit2; ?>]

        }]
    });
});
</script>

<div id="container" style="min-width: 310px; height: 400px; margin: 0 auto"></div>

<!--<div class="col-md-12">
 <h1>Admin Dashboard</h1>

Ini adalah Halaman Dashboard :-)

</div> -->
<!--                              ==tambahan==                                        -->

<?php }
  elseif ($this->session->userdata('role_id')==4){
    //print_r($this->session); 
  $id = $this->session->userdata('user_id');
  $a = $this->db->where('id',$id)->get('bf_users')->row();
    $nama = $a->display_name;
   
  $query = $this->db->select('izin_jenis')->get('jenis_izin')->result();
  $izin = []; 
  foreach ($query as $q) {
    array_push($izin, $q->izin_jenis);
  }
  echo $this->session->userdata('username');
  $hitungpergi_keluar1 = $this->db->where('year(tgl_m)',2016)->where('input_izin_jenis',1)->where('izin_nama',$nama)->get('pengajuan')->result();
  $hitungpergi_keluar2 = $this->db->where('year(tgl_m)',2017)->where('input_izin_jenis',1)->where('izin_nama',$nama)->get('pengajuan')->result();
  $pergi_keluar1 = count ($hitungpergi_keluar1);
  $pergi_keluar2 = count ($hitungpergi_keluar2);

  $hitungcuti1 = $this->db->where('year(tgl_m)',2016)->where('input_izin_jenis',2)->where('izin_nama',$nama)->get('pengajuan')->result();
  $hitungcuti2 = $this->db->where('year(tgl_m)',2017)->where('input_izin_jenis',2)->where('izin_nama',$nama)->get('pengajuan')->result();
  $cuti1 = count ($hitungcuti1);
  $cuti2 = count ($hitungcuti2);

  $hitungpergi_dinas1 = $this->db->where('year(tgl_m)',2016)->where('input_izin_jenis',3)->where('izin_nama',$nama)->get('pengajuan')->result();
  $hitungpergi_dinas2 = $this->db->where('year(tgl_m)',2017)->where('input_izin_jenis',3)->where('izin_nama',$nama)->get('pengajuan')->result();
  $pergi_dinas1 = count ($hitungpergi_dinas1);
  $pergi_dinas2 = count ($hitungpergi_dinas2);

  $hitungsakit1 = $this->db->where('year(tgl_m)',2016)->where('input_izin_jenis',4)->where('izin_nama',$nama)->get('pengajuan')->result();
  $hitungsakit2 = $this->db->where('year(tgl_m)',2017)->where('input_izin_jenis',4)->where('izin_nama',$nama)->get('pengajuan')->result();
  $sakit1 = count ($hitungsakit1);
  $sakit2 = count ($hitungsakit2);
//  echo $pergi_keluar2;

?>
<center>
<?php
 echo " JUMLAH IZIN ANDA SEBANYAK : ".($sakit1 +$pergi_dinas1+ $cuti1 +$pergi_keluar1); ?></center>
<script type="text/javascript">
  // function getizin(){
  //   $.ajax({
  //     url : "<?=base_url().'jenis_izin/getjenisizin'?>",
  //         success : function(ret){
  //           r = JSON.parse(ret);
  //           chart_icdx(r);
  //         },
  //   });
  // }
  // getizin();


$(function () {
    $('#container').highcharts({
        chart: {
            type: 'column'
        },
        title: {
            text: 'Status Izin Karyawan'
        },
        subtitle: {
            text: 'Source: WorldClimate.com'
        },
        xAxis: {
            categories: [
                '2016',
                '2017',   
            ],
            crosshair: true
        },
        yAxis: {
            min: 0,
            title: {
                text: 'Rainfall ()'
            }
        },
        tooltip: {
            headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
            pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
                '<td style="padding:0"><b>{point.y:.1f} </b></td></tr>',
            footerFormat: '</table>',
            shared: true,
            useHTML: true
        },
        plotOptions: {
            column: {
                pointPadding: 0.2,
                borderWidth: 0
            }
        },
        series: [{
            name: '<?php echo $izin[0] ?>',
            data: [<?php echo $pergi_keluar1; ?>,<?php echo $pergi_keluar2; ?>]

        }, {
            name: '<?php echo $izin[1] ?>',
            data: [<?php echo $cuti1; ?>,<?php echo $cuti2; ?>]

        }, {
            name: '<?php echo $izin[2] ?>',
            data: [<?php echo $pergi_dinas1; ?>,<?php echo $pergi_dinas2; ?>]

        }, {
            name: '<?php echo $izin[3] ?>',
            data: [<?php echo $sakit1; ?>,<?php echo $sakit2; ?>]

        }]
    });
});
</script>

<div id="container" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
<?php } ?>