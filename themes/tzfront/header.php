<!DOCTYPE html>
<html dir="ltr">
  <head>
    <title>Dinustek</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="keyword" content="">
    <meta name="author" href="">
    <link rel="shorcut icon" href="assets/images/favicon.png">
<?php
    $css = array('font-awesome.min.css', 'bootstrap.css','responsive.cs','custom.css','theming.css','rifa.css',);
    Assets::add_css($css);
    Assets::add_js(array('jquery-1.9.1.js','bootstrap.v232.min.js','jquery.dataTables.js','dataTables.bootstrap.js','metisMenu.min.js','main.js','holder.js','bootstrap-datepicker.js'));
    echo Assets::js();
    echo Assets::css();
?>

    <script type="text/javascript" src="<?=base_url()?>themes/tzfront/plugins/select2/select2.min.js"></script>
    <link rel="stylesheet" href="<?=base_url()?>themes/tzfront/plugins/select2/select2.css" />

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="assets/js/html5shiv.js"></script>
      <script src="assets/js/respond.min.js"></script>
    <![endif]-->
    <?=theme_view('javascript'); ?>

    <script type="text/javascript">
        <?php if($this->session->userdata('role_id') > 6) { ?>
        jQuery(function($) {
            var href = '<?php echo base_url()?>admin/popinfo';
            if (href.indexOf('#') == 0) {
                $(href).modal('show');
            } else {
                $.get(href, function(data) {
                    $('<div class="modal fade">' + data + '</div>').modal('show').appendTo('body');
                });
            }
        });
        <?php } ?>
    </script>

  </head>
  <body>
    <noscript>
        <div class="container">
            <div class="row">
                <div class="span12">
                    <div class="alert alert-block">
                        <h4>Peringatan!</h4>
                        <p>Javascript pada peramban anda tidak aktif!</p>
                        <ul>
                            <li>Halaman Web ini membutuhkan javascript untuk antar muka yang lebih baik.</li>
                            <li>Menonaktifkan javascript pada peramban menyebabkan website ini tidak bekerja dengan baik</li>
                        </ul>
                        <p>Silakan aktifkan javascript pada peramban anda, kemudian muat ulang website ini.</p>
                    </div>
                </div>
            </div>
        </div>
    </noscript>

    <div id="wrapper">
      <!-- Navigation -->
        

        <!-- Page Content -->
        <div id="page-wrapper">
