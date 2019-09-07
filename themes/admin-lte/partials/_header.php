<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0 maximum-scale=1, user-scalable=no">
	<meta name="robots" content="noindex" />
	
	<title><?php echo isset($toolbar_title) ? $toolbar_title .' : ' : ''; ?> <?php e($this->settings_lib->item('site.title')) ?></title>
	<!-- CSS  -->
        <link rel="stylesheet" type="text/css" href="<?php echo Template::theme_url('css/bootstrap.css'); ?>" />
		<!-- fontAwesome + icon --->
        <link rel="stylesheet" type="text/css" href="<?php echo Template::theme_url('css/font-awesome.min.css'); ?>" />
        <link rel="stylesheet" type="text/css" href="<?php echo Template::theme_url('css/ionicons.min.css'); ?>" />
		<!-- theme -->
        <link rel="stylesheet" type="text/css" href="<?php echo Template::theme_url('css/AdminLTE.css'); ?>" />
        <link rel="stylesheet" type="text/css" href="<?php echo Template::theme_url('css/skins/_all-skins.min.css'); ?>" />
		<!-- Plugins -->
        <link rel="stylesheet" type="text/css" href="<?php echo Template::theme_url('css/datepicker3.css'); ?>" />
        <link rel="stylesheet" type="text/css" href="<?php echo Template::theme_url('css/amaran.min.css'); ?>" />
        <link rel="stylesheet" type="text/css" href="<?php echo Template::theme_url('css/animate.min.css'); ?>" />
        
		

	<!-- Javascript -->
		<script src="<?php echo Template::theme_url('js/jQuery-2.1.4.min.js'); ?>" type="text/javascript"></script>
		<script src="<?php echo Template::theme_url('js/jquery-ui1.11.2.min.js'); ?>" type="text/javascript"></script>
		<script src="<?php echo Template::theme_url('js/bootstrap.js'); ?>" type="text/javascript"></script>
		<script src="<?php echo Template::theme_url('js/slimScroll/jquery.slimscroll.min.js'); ?>" type="text/javascript"></script>

		<script type="text/javascript">
			$(document).on("ready", function(){
				updatePage();
				updatenotif();
				setInterval(updatePage, 3000);
				setInterval(updatenotif, 3000);
			});
			function updatePage(){
				 	$.ajax({

				 		url:"<?php echo base_url().'admin/perizinan/konfirmasi/getNotif'?>",
				 		success:function(data){
				 			$('#notif').html(data);
				 		}
				 	});
				}
			function updatenotif(){
				$.ajax({
					url:"<?php echo base_url().'admin/perizinan/konfirmasi/getIsiNotif'?>",
					success:function(data){
						$('#namanotif').html(data);
					}
				})
			}
				
		</script>
		<!-- dataTables -->
	<!-- bonfire --> 
		<script src="<?php echo Template::theme_url('js/jquery.amaran.js'); ?>" type="text/javascript"></script>
		
		<script src="<?php echo Template::theme_url('js/modernizr-2.5.3.js'); ?>"></script>
		
	


</head>
<body class="skin-blue sidebar-mini ">
<!--[if lt IE 7]>
		<p class=chromeframe>Your browser is <em>ancient!</em> <a href="http://browsehappy.com/">Upgrade to a different browser</a> or
		<a href="http://www.google.com/chromeframe/?redirect=true">install Google Chrome Frame</a> to experience this site.</p>
<![endif]-->


	<noscript>
		<p>Javascript is required to use Bonfire's admin.</p>
	</noscript>
        <div class="wrapper">
			<header class="main-header">
				<a href="<?php echo base_url();?>admin" class="logo">
					<!-- mini logo for sidebar mini 50x50 pixels -->
					<span class="logo-mini"><i class="fa fa-dashboard"></i></span>
					<!-- logo for regular state and mobile devices -->
					<span class="logo-lg"><?php echo $this->settings_lib->item('site.title'); ?></span>
				</a>
				<nav class="navbar navbar-static-top" role="navigation">
					<a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</a>
					<div class="navbar-custom-menu">
						<ul class="nav navbar-nav">
						  <!-- Messages: style can be found in dropdown.less-->
						  <!-- tambahan -->
						  	<li class="dropdown notifications-menu">
							 
							 
							 	<?php

							 	if($this->session->userdata('role_id')==1){
							 				$jumlah=$this->db->select()->from('pengajuan')
						  									->get()
						  									->result();
						  					$ada=0;
						  					foreach($jumlah as $jum){
						  						if($jum->izin_status==0){
						  							$ada++;
						  						}
						  					}
							 				?>
							 				<a class="dropdown-toggle" href="#" data-toggle="dropdown">
								<i class="fa fa-bell"></i>
								<span class="label label-warning"><?php if($ada>0)echo $ada; } ?></span>

											
							 </a>
							 <ul class="dropdown-menu" style="width:400px">
							 	<li class="header" > </li>
							 	
							 		<div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 200px;">
							 			<ul class="menu" style="overflow: hidden; width: 100%; height: 200px;">
							 			<?php
							 			if($this->session->userdata('role_id')==1){
							 				$notif=$this->db->select()->from('pengajuan')
						  									->get()
						  									->result();
						  					foreach($notif as $rec){
							 					if($rec->izin_status==0 ){
							 				?>
							 				<li>
							 					<a href="<?php echo base_url('admin/perizinan/konfirmasi_izin') ?>"> 
							 					<i class="fa fa-users text-aqua"></i>
							 						<?php 
							 						$id = $this->session->userdata('user_id');
							 						$a = $this->db->where('id',$id)->get('bf_users')->result();
							 						foreach ($a as $b) {
							 							$nama = $b->display_name;
							 							echo $nama;}?> Mengajukan Izin
							 					</a>
							 				</li>
							 				<?php }}}  ?>
							 				
							 				
							 			</ul>
							 		</div>
							 	<li class="footer"> <a href="#"> __ </a> </li>
							 </ul>
						    </li>
						    <!-- Tambahan -->
						    

						   <!-- tambahan -->
						  <!-- User Account: style can be found in dropdown.less -->
						  <li class="dropdown user user-menu">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							  <!--<img src="dist/img/user2-160x160.jpg" class="user-image" alt="User Image"/>-->
							  <span class="hidden-xs"><?php echo $current_user->display_name ?></span>
							</a>
							<ul class="dropdown-menu">
							  <!-- User image -->
							  <li class="user-header">
								<!--<img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image" />-->
								<p>
								  <?php echo $current_user->display_name ?>
								  <small><?php echo $current_user->email ?></small>
								</p>
							  </li>
							  <!-- Menu Footer-->
							  <li class="user-footer">
								<!-- <div class="pull-left">
								  <a class="btn btn-default btn-flat" href="<#?php echo site_url(SITE_AREA .'/settings/users/edit/'.$current_user->id) ?>">Profile</a>
								
								</div> -->
								<div class="pull-right">
									<a class="btn btn-danger btn-flat" href="<?php echo site_url('logout'); ?>"> <?php echo lang('bf_action_logout')?> </a>
								</div>
							  </li>
							</ul>
						  </li>
						  <!-- Control Sidebar Toggle Button -->
						  <li>
							<a href="#" data-toggle="control-sidebar"><i class="fa fa-gear"></i></a>
						  </li>
						</ul>
					  </div>
				</nav>
			</header>
			<!-- Left side column. contains the logo and sidebar -->
      <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
          <!-- search form ->
          <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
              <input type="text" name="q" class="form-control" placeholder="Search..."/>
              <span class="input-group-btn">
                <button type='submit' name='search' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i></button>
              </span>
            </div>
          </form>
          <!-- /.search form -->
          <!-- sidebar menu: : style can be found in sidebar.less -->
		  <?php echo Contexts::render_menu('text', 'normal'); ?>
          
        </section>
        <!-- /.sidebar -->
      </aside>
