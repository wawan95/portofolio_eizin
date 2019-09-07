<ul class="nav nav-pills">
	<li <?php echo $this->uri->segment(4) == '' ? 'class="active"' : '' ?>>
		<a href="<?php echo site_url(SITE_AREA .'/master/pegawai') ?>" id="list"><?php echo lang('pegawai_list'); ?></a>
	</li>
	<?php if ($this->auth->has_permission('Pegawai.Master.Create')) : ?>
	<li <?php echo $this->uri->segment(4) == 'create' ? 'class="active"' : '' ?> >
		<a href="<?php echo site_url(SITE_AREA .'/master/pegawai/create') ?>" id="create_new"><?php echo lang('pegawai_new'); ?></a>
	</li>
	<?php endif; ?>
</ul>