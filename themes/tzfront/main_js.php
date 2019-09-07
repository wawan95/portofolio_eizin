<script type="text/javascript" src="<?=Template::theme_url('js/jquery.notifyBar.js'); ?>"></script>
<!--chosen-->
<script type="text/javascript" src="<?=Template::theme_url('plugins/chosen/chosen.jquery.min.js'); ?>"></script>
<link rel="stylesheet" href="<?=Template::theme_url('plugins/chosen/chosen.min.css'); ?>" />
<!--    VALIDATION-->
<link rel="stylesheet" href="<?=Template::theme_url('css/validation/validationEngine.jquery.css'); ?>" />
<script type="text/javascript" src="<?=Template::theme_url('js/validation/jquery.validationEngine.js'); ?>"></script>
<script type="text/javascript" src="<?=Template::theme_url('js/validation/jquery.validationEngine-id.js'); ?>"></script>
<!--    VALIDATION-->

<!--    DATAPICKER  -->
<link rel="stylesheet" href="<?=Template::theme_url('css/datepicker.css'); ?>" />
<script type="text/javascript" src="<?=Template::theme_url('js/bootstrap-datepicker.js'); ?>"></script>
<!--    DATAPICKER  -->
    
<!--    number  -->
<script type="text/javascript" src="<?=Template::theme_url('js/number/jquery.number.min.js'); ?>"></script>
<!--    number  -->

<!--    TIMEPICKER  -->
<link rel="stylesheet" href="<?=Template::theme_url('css/timepicker/jquery.timeentry.css'); ?>" />
<script type="text/javascript" src="<?=Template::theme_url('js/timepicker/jquery.plugin.min.js'); ?>"></script>
<script type="text/javascript" src="<?=Template::theme_url('js/timepicker/jquery.timeentry.min.js'); ?>"></script>
<!--    TIMEPICKER  -->
<script type="text/javascript" src="<?=Template::theme_url('js/jquery.mask.min.js'); ?>"></script>
<script>
    function autoComplete(element, url, ph, dataPost){
	$(element).select2({
        placeholder: ph,
        minimumInputLength: 1,
        allowClear: true,
        width: '100%',
	    ajax: {
	      url: url,
	      dataType: 'json',
	      type:'GET',
	      data: function (term, page) {
	      	dt = {'q': term};
	        return $.extend(dt, dataPost);
	      },
	      results: function (data, page) {
	        return { results: data };
	      }
	    }
    });
}
</script>