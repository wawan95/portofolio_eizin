$(function () {

	$(document).ajaxSend(function(event, request, settings) {
    	//$('#loading').show();
	});

	$(document).ajaxComplete(function(event, request, settings) {
	   //$('#loading').hide();
	});

	$(document).on("submit", ".form-ajaxin", function(){ 
		$.ajax({
	        type: $(this).attr('method'),
	        url : $(this).attr('action'),
	        data : $(this).serialize(),
	        success: function(data) {
	         	$('#content').html(data);
	         	$('select').select2({
			   		width: 250
			    });
			    $('.ttp').tooltip();
	        }
	    });
		return false;
	});

	$(document).on("click", ".ajaxin", function(){ 
		$.ajax({
	        type: "GET",
	        url : $(this).attr('href'),
	        success: function(data) {
	         	$('#content').html(data);
	         	$('select').select2({
			   		width: 250
			    });
			    $('.ttp').tooltip();
	        }
	    });
		return false;
	});

	$(document).on("click", ".pagination > li > a", function(){ 
		$.ajax({
	        type: "GET",
	        url : $(this).attr('href'),
	        success: function(data) {
	         	$('#content').html(data);
	         	$('select').select2({
			   		width: 250
			    });
			    $('.ttp').tooltip();
	        }
	    });
		return false;
	});
	
	
	$('select').select2({
   		width: 250
    });
	
	$(document).on("click", "#checkall", function(){ 
	    $('input:checkbox').not(this).prop('checked', this.checked);
	});
	
	$(document).on("click", "a.del", function(){ 
	    var index = $('a.del').index( this );
	    index = index + 1;
	    $('input:checkbox').eq( index ).prop('checked', 'checked');
	    $(this).closest('form').submit();
	    return false;
	});
	
	$(document).on("click", "#nav-toggle", function(){ 
          $('.dropdown').data('closable', true);
          if ($('#nav_sidebar').hasClass('sidebar-mini')){
              //set big
              $('#nav_sidebar').removeClass('sidebar-mini');
              $('#nav_sidebar').addClass('sidebar');
              $('#content').removeClass('col-md-12');
              $('#content').addClass('col-md-10');
              $('#content').css('padding-left','20px');
              $('.header-main').hide();
          }else{
              ///set mini
              $('#nav_sidebar').removeClass('sidebar');
              $('#nav_sidebar').addClass('sidebar-mini');
              $('#content').removeClass('col-md-10');
              $('#content').addClass('col-md-12');
              $('#content').css('padding-left','67px');
              $('.header-main').show();
          }
      });
      
    $('.dropdown').on({
        "shown.bs.dropdown": function() { $(this).data('closable', false); },
        "click":             function() { $(this).data('closable', true);  },
        "hide.bs.dropdown":  function() { return $(this).data('closable'); }
    });  
    
       $('#nav-toggle').trigger('click');	
	$('.ttp').tooltip();
});


function autoComplete(element, url, ph, dataPost){
	$(element).select2({
        placeholder: ph,
        minimumInputLength: 1,
        allowClear: true,
        width: '100%',
	    ajax: {
	      url: url,
	      dataType: 'json',
	      type:'POST',
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

function koma(nStr) {
    nStr += '';
    x = nStr.split('.');
    x1 = x[0];
    x2 = x.length > 1 ? '.' + x[1] : '';
    var rgx = /(\d+)(\d{3})/;
    while (rgx.test(x1)) {
        x1 = x1.replace(rgx, '$1' + '.' + '$2');
    }
    return x1 + x2;
}
