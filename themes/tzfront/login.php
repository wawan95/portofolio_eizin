<!DOCTYPE html>
<html dir="ltr">
  <head>
    <title>Dinustek</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="keyword" content="">
    <meta name="author" href="tofazakie">
    <link rel="shortcut icon" href="assets/img/favicon.png">

    <link rel="stylesheet" type="text/css" href="themes/tzfront/assets/css/main-login.css" media="screen">
    <link rel="stylesheet" type="text/css" href="themes/tzfront/assets/css/font-awesome.min.css" media="screen">
    <link rel="stylesheet" type="text/css" href="themes/tzfront/assets/css/login.css" media="screen">
    <link rel="stylesheet" type="text/css" href="themes/tzfront/assets/css/login-warna.css" media="screen">
    <link rel="stylesheet" type="text/css" href="<?=base_url()?>themes/tzfront/assets/css/rifa.css" media="screen">



    <!-- Bootstrap core CSS -->
    <link href='http://fonts.googleapis.com/css?family=Cabin' rel='stylesheet' type='text/css'>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="assets/js/html5shiv.js"></script>
      <script src="assets/js/respond.min.js"></script>
    <![endif]-->
    <style>
    /*  #log-me-in{
        font-size: 1.5em;
        padding: 3px 6px;
      }*/

      #login #username, #login #password{
        background-color: rgba(255,255,255,.5);
        color: black;
      }
      #login #username:hover, #login #password:hover,
      #login #username:focus, #login #password:focus{
        background-color: white;
        color: black;
      }
    </style>
    <script>
      
    </script>
  </head>
  <body id="bg-login">
    <div id="login" class="text-center">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-md-offset-2">
                    <div class="box-login">
                        <h3>HALAMAN LOGIN <br>ADMINISTRATOR</h3>
                        <img src="themes/tzfront/assets/images/logo.png" style="width:220px">
        <?php echo Template::message(); ?>
		<?php
		if (validation_errors()) :
		?>
		<div class="row">
			<div class="col-md-8">
				<div class="alert alert-error fade in">
				  <a data-dismiss="alert" class="close">&times;</a>
					<?php echo validation_errors(); ?>
				</div>
			</div>
		</div>
		<?php endif; ?>
		
                        <?php echo form_open(LOGIN_URL, array('autocomplete' => 'off','role'=>'form', 'id' =>'login-form', 'name' =>'login-form')); ?>
                          <div class="form-group" >
                            <label class="sr-only" for="username">Username</label>
                            <center><input type="text" class="form-control" id="username" name="login" placeholder="Username" style="width:250px" autofocus></center>
                          </div>
                          <div class="form-group">
                            <label class="sr-only" for="password">Password</label>
                            <center><input type="password" class="form-control" id="password" name="password" placeholder="Password" style="width:250px"></center>
                          </div>

                          
                          <button type="submit" name="log-me-in" id="log-me-in" class="btn btn-success" >Login <i class="fa fa-arrow-circle-o-right"></i></button>
                        <?php echo form_close(); ?>

                        <hr>
                        <p class="copyright">&copy;2016 Dinustek</a></p>
                    </div> <!--- end box-login -->
                </div>
            </div>
        </div>
    </div>      
  </body>
</html>