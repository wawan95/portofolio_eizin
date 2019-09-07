<ul class="nav nav-pills">
	<li <?php echo $this->uri->segment(4) == '' ? 'class="active"' : '' ?>>
		<a href="<?php echo site_url(SITE_AREA .'/perizinan/konfirmasi_izin') ?>" id="list"><?php echo lang('konfirmasi_izin_list'); ?></a>
	</li>
	<?php if ($this->auth->has_permission('Konfirmasi_Izin.Perizinan.Create')) : ?>
	<li <?php echo $this->uri->segment(4) == 'create' ? 'class="active"' : '' ?> >
		<a href="<?php echo site_url(SITE_AREA .'/perizinan/konfirmasi_izin/create') ?>" id="create_new"><?php echo lang('konfirmasi_izin_new'); ?></a>
	</li>
	<?php endif; ?>
</ul>