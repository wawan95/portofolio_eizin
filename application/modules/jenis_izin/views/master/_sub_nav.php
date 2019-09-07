<ul class="nav nav-pills">
	<li <?php echo $this->uri->segment(4) == '' ? 'class="active"' : '' ?>>
		<a href="<?php echo site_url(SITE_AREA .'/master/jenis_izin') ?>" id="list"><?php echo lang('jenis_izin_list'); ?></a>
	</li>
	<?php if ($this->auth->has_permission('Jenis_Izin.Master.Create')) : ?>
	<li <?php echo $this->uri->segment(4) == 'create' ? 'class="active"' : '' ?> >
		<a href="<?php echo site_url(SITE_AREA .'/master/jenis_izin/create') ?>" id="create_new"><?php echo lang('jenis_izin_new'); ?></a>
	</li>
	<?php endif; ?>
</ul>