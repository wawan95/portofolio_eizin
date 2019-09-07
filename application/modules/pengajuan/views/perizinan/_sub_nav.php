<ul class="nav nav-pills">
	<li <?php echo $this->uri->segment(4) == '' ? 'class="active"' : '' ?>>
		<a href="<?php echo site_url(SITE_AREA .'/perizinan/pengajuan') ?>" id="list"><?php echo lang('pengajuan_list'); ?></a>
	</li>
	<?php if ($this->auth->has_permission('Pengajuan.Perizinan.Create')) : ?>
	<li <?php echo $this->uri->segment(4) == 'create' ? 'class="active"' : '' ?> >
		<a href="<?php echo site_url(SITE_AREA .'/perizinan/pengajuan/create') ?>" id="create_new"><?php echo lang('pengajuan_new'); ?></a>
	</li>
	<?php endif; ?>
</ul>