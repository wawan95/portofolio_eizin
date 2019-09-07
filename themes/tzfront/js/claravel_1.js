$(document).ready(function(){
   $('#nav_sidebar').on('click','a',function(e){
       var str = $(this).attr('href');
       var n = str.search("dashboard");
       if(n > 0){
       }
       else{
           e.preventDefault();
            $.ajax({
                type: 'get',
                url : $(this).attr('href'),
                success: function(data) {
                    $('#utama').html(data);
                }
            });
       }
   });
});
$(function () {
	
	$(document).ajaxSend(function(event, request, settings) {
//            $('#utama').fadeOut(400);
//               $('#utama').hide();
//    	$('#loading').show();
	});

	$(document).ajaxError(function(event, request, settings) {
//            $('#utama').show();
//            notif(99);
//	   $('#loading').hide();
	});
	$(document).ajaxComplete(function(event, request, settings) {
//            $('#utama').show();
//            $('#utama').fadeIn(400);
//	   $('#loading').hide();
	});

	$(document).on("submit", ".form-ajaxin", function(){ 
		$.ajax({
	        type: $(this).attr('method'),
	        url : $(this).attr('action'),
	        data : $(this).serialize(),
	        success: function(data) {
	         	$('#utama').html(data);
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
	         	$('#utama').html(data);
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
	         	$('#utama').html(data);
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
              $('#utama').removeClass('col-md-12');
              $('#utama').addClass('col-md-10');
              $('#utama').css('padding-left','20px');
              $('.header-main').hide();
          }else{
              ///set mini
              $('#nav_sidebar').removeClass('sidebar');
              $('#nav_sidebar').addClass('sidebar-mini');
              $('#utama').removeClass('col-md-10');
              $('#utama').addClass('col-md-12');
              $('#utama').css('padding-left','67px');
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

