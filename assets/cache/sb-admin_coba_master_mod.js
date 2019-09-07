$('.del_this').click(function(){
	var pr = $(this).parents('tr');
	pr.find('input').prop( 'checked', true );
	$('#delete-me').trigger('click');
	return false;
});
