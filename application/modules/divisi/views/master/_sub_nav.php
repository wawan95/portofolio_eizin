<ul class="nav nav-pills">
	<li <?php echo $this->uri->segment(4) == '' ? 'class="active"' : '' ?>>
		<a href="<?php echo site_url(SITE_AREA .'/master/divisi') ?>" id="list"><span><?php echo lang('divisi_list'); ?></span></a>
	</li>
	<?php if ($this->auth->has_permission('Divisi.Master.Create')) : ?>
	<li <?php echo $this->uri->segment(4) == 'create' ? 'class="active"' : '' ?> >
		<a href="<?php echo site_url(SITE_AREA .'/master/divisi/create') ?>" id="create_new"><?php echo lang('divisi_new'); ?></a>
	</li>
	<?php endif; ?>
</ul>